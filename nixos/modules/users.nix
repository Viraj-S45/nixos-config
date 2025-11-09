{
  config,
  pkgs,
  lib,
  ...
}: {
  imports = [];
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.virajs = {
    isNormalUser = true;
    extraGroups = ["wheel" "netdev" "networkmanager" "docker"]; # Enable ‘sudo’ for the user.
    packages = with pkgs; [
      tree
      git
      networkmanagerapplet
      networkmanager
    ];
  };
}
