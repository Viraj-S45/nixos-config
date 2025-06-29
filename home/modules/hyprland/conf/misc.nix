{ config, pkgs, ... }:
{
  imports = [

  ];
  home.packages = with pkgs; [

  ];


  wayland.windowManager.hyprland.settings = {
    misc = {
      disable_hyprland_logo = true;
      disable_splash_rendering = true;
      initial_workspace_tracking = 1;
      force_default_wallpaper = 0;
    };
  };







}
