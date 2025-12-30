{
  config,
  lib,
  pkgs,
  ...
}: {
  imports = [
    ./hardware-configuration.nix
    ./stylix.nix
    ./modules
  ];

  # Nix Settings
  nix.settings = {
    experimental-features = ["nix-command" "flakes"];
  };

  system.stateVersion = "25.05";
}
