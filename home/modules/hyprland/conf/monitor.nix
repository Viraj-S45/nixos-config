{ config, pkgs, ... }:
{

  home.packages = with pkgs; [

  ];

  
    
  wayland.windowManager.hyprland.settings.monitor = [
    ",preferred,auto,auto"
    "eDP-1,1920x1080,0x0,auto"
    # "HDMI-A-1,1920x1080@50.00Hz,-1920x0,auto"
    "HDMI-A-1,1366x768@59.79Hz,-1366x0,auto"
  ];


}
