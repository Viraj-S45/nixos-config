{
  config,
  pkgs,
  lib,
  ...
}: {
  imports = [];

  # Allow unfree
  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.allowCollisions = true;

  # Auto Updates
  system = {
    autoUpgrade = {
      enable = true;
      allowReboot = true;
      channel = "https://channels.nixos.org/nixos-25.11";
    };
  };

  # Set your time zone.
  time.timeZone = "Asia/Kolkata";

  # Enable the OpenSSH daemon.
  services.openssh.enable = true;

  services.xserver.enable = true;

  services.postgresql.enable = true;
  services.postgresql.settings = {
    listen_addresses = "localhost";
  };

  programs.nix-ld.enable = true;
}
