{
  config,
  pkgs,
  lib,
  ...
}: {
  imports = [];
  environment.systemPackages = with pkgs; [
    xdg-desktop-portal-hyprland
    wl-clipboard
  ];
  services = {
    pipewire = {
      enable = lib.mkForce true;
      alsa.enable = true;
      pulse.enable = true;
      jack.enable = true;
      package = pkgs.pipewire;
      wireplumber.enable = true;
    };
    hypridle = {
      enable = true;
      package = pkgs.hypridle;
    };
  };

  security = {
    polkit = {
      enable = true;
      package = pkgs.polkit;
      debug = true;
    };
  };

  hardware.alsa.enable = true;
  hardware.bluetooth.enable = true;
  xdg.portal.enable = true;

  programs = {
    hyprland = {
      enable = true;
      package = pkgs.hyprland;
      portalPackage = pkgs.xdg-desktop-portal-hyprland;
    };
  };
}
