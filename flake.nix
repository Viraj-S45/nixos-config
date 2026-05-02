{
  description = "Main Flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";
    unstable.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    stylix.url = "github:danth/stylix/release-25.11";
    sops-nix = {
      url = "github:Mic92/sops-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  nixConfig = {
    download-buffer-size = 104857600;
    connect-timeout = 30;
    stalled-download-timeout = 300;
  };

  outputs = {
    self,
    nixpkgs,
    unstable,
    home-manager,
    stylix,
    sops-nix,
    ...
  } @ inputs: {
    nixosConfigurations = {
      virajs = nixpkgs.lib.nixosSystem {
        specialArgs = {inherit inputs;};
        modules = [
          ./nixos/configuration.nix
          stylix.nixosModules.stylix
          home-manager.nixosModules.home-manager
          sops-nix.nixosModules.sops
          {
            home-manager = {
              useGlobalPkgs = true;
              useUserPackages = true;
              backupFileExtension = "backup";
              users.virajs = import ./home/home.nix;
            };
          }
        ];
      };
    };
  };
}
