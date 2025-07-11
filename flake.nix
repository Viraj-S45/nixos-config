{
  description = "Main Flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
    home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";

    };
    stylix.url = "github:danth/stylix/67c8eca32f1baf158ffb9a56f28a2fc8e9852fb0";
  };

  outputs = { self, nixpkgs, home-manager, stylix, ... } @ inputs:
  {
    nixosConfigurations = {
      virajs = nixpkgs.lib.nixosSystem {
        modules = [

	  ./nixos/configuration.nix
	      stylix.nixosModules.stylix
          home-manager.nixosModules.home-manager {
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
