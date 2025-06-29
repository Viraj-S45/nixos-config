{ config, pkgs, ... }:
{
  imports = [

  ];
  home.packages = with pkgs; [

  ];


  wayland.windowManager.hyprland.settings.exec-once = [
    "/home/virajs/nixos-config/home/modules/hyprland/scripts/honeygain.sh"
    "/home/virajs/nixos-config/home/modules/hyprland/scripts/waterreminder.sh"
    "/nix/store/0di6i7gy8rh4w9fg6sy67faf9d4bnbi6-kwallet-pam-6.3.5/libexec/pam_kwallet_init"
    "hypridle"
    "swaync"
    "wl-paste --watch cliphist store"
    "pypr"
  ];



}
