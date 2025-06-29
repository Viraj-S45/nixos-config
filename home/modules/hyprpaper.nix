{ config, pkgs, ... }:
{
  imports = [

  ];
  home.packages = with pkgs; [
    hyprpaper
  ];

  services.hyprpaper = {
    package = pkgs.hyprpaper;
    enable = true;
    settings = {
      preload = [
        "/home/virajs/Nextcloud/Pictures/Wallpapers/hyperland/everforest.jpg" "/home/virajs/Nextcloud/Pictures/Wallpapers/hyperland/minimal_piano.jpg"
      ];
      wallpaper = [
        "eDP-1,/home/virajs/Nextcloud/Pictures/Wallpapers/hyperland/everforest.jpg" "HDMI-A-1,/home/virajs/Nextcloud/Pictures/Wallpapers/hyperland/minimal_piano.jpg"
      ];
    };
  };




}
