{ config, pkgs, lib, ... }:
{
  imports = [];

  # Allow unfree
  nixpkgs.config.allowUnfree = true;

  # Auto Updates
  system = {
    autoUpgrade = {
      enable = true;
      allowReboot = true;
      channel = "https://channels.nixos.org/nixos-25.05";
    };
  };

  # Set your time zone.
  time.timeZone = "Asia/Kolkata";

  # Enable the OpenSSH daemon.
  services.openssh.enable = true;

  services.xserver.enable = true; 

}
