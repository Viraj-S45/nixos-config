{ config, pkgs, ... }:
{
  imports = [

  ];
  home.packages = with pkgs; [

  ];


  wayland.windowManager.hyprland.settings = {
    workspace = [
      "1, monitor:eDP-1"
      "2, monitor:HDMI-A-1"
      "3, monitor:eDP-1"
      "4, monitor:eDP-1"
      "5, monitor:eDP-1"
      "6, monitor:eDP-1"
      "7, monitor:HDMI-A-1"
      "8, monitor:HDMI-A-1"
    ];
  };







}
