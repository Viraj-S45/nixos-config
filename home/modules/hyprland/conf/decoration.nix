{
  config,
  pkgs,
  lib,
  ...
}: {
  imports = [
  ];
  home.packages = with pkgs; [
  ];

  wayland.windowManager.hyprland.settings = {
    decoration = {
      rounding = 10;
      active_opacity = 0.9;
      inactive_opacity = 0.8;
      fullscreen_opacity = 1.0;
      blur = {
        enabled = true;
        size = 6;
        passes = 2;
        new_optimizations = "on";
        ignore_opacity = true;
        # blurls = waybar
        noise = 0;
        xray = true;
      };
      shadow = {
        enabled = true;

        ignore_window = true;
        offset = "0 2";
        range = 20;
        render_power = 3;
        color = lib.mkForce "rgba(00000055)";
      };
    };
  };
}
