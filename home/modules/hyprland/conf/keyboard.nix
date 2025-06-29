{ config, pkgs, ... }:
{
  imports = [

  ];
  home.packages = with pkgs; [

  ];


  wayland.windowManager.hyprland.settings.input = {
    kb_layout = "us";
    kb_variant = "";
    kb_model = "";
    kb_options = "";
    numlock_by_default = true;
    follow_mouse = 1;
    mouse_refocus=false;
    sensitivity = 0;
    touchpad = {
      natural_scroll = false;
      scroll_factor = 1.0;
    };
  };







}
