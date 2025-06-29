{ config, pkgs, ... }:
{
  imports = [

  ];
  home.packages = with pkgs; [

  ];


  wayland.windowManager.hyprland.settings = {
    windowrule = [
      "tile, title:^(Brave-browser)$"
      "tile, title:^(Chromium)$"
      "float, title:^(nextcloud)$"
      "float, title:^(nm-connection-editor)$"
      "float, title:^(qalculate-gtk)$"
      "float, title:^(Picture-in-Picture)$"
      "pin, title:^(Picture-in-Picture)$"
      "move 69.5% 4%, title:^(Picture-in-Picture)$"
      "idleinhibit fullscreen,class:([window]) "
    ];
    windowrulev2 = [
      "suppressevent maximize, class:.*"
      "nofocus,class:^$,title:^$,xwayland:1,floating:1,fullscreen:0,pinned:0"
      "float, class:^(com.nextcloud.desktopclient.nextcloud)$"
      "float, class:^(Bitwarden)$"


    ];
  };







}
