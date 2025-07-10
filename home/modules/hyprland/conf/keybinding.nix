{ config, pkgs, lib, ... }:
{
  home.packages = with pkgs; [

  ];

  
  

  wayland.windowManager.hyprland = {
  settings = {
    general = {
      "$mainMod" = "SUPER";
      "$terminal" = "kitty";
      "$altterminal" = "alacritty";
      "$browser" = "brave";
      "$fileManager" = "thunar";
      "$menu" = "rofi -show drun";


    };
    bind = [
    "$mainMod, RETURN, exec, $terminal"
    "$mainMod SHIFT, RETURN, exec, $altterminal"
    "$mainMod, B, exec, $browser"
    "$mainMod, E, exec, $fileManager"
    "$mainMod, P, exec, pkill waybar; hyprctl dispatch exec waybar"
    "$mainMod, W, killactive,"
    "$mainMod, F, fullscreen,"
    "$mainMod, T, togglefloating,"
    "$mainMod, V, exec, cliphist list | rofi -dmenu -theme-str 'window {width: 50%;} listview {columns: 1;}' | cliphist decode | wl-copy"
    "$mainMod, Q, exec, pkill wf-recorder && notify-send"
    "$mainMod CTRL, R, exec, hyprctl reload"
    "$mainMod, SPACE, exec, $menu"
    "$mainMod, Escape, exec, hyprlock"
    "$mainMod SHIFT, Escape, exec, wlogout"
    "$mainMod SHIFT, B, exec, toggle-waybar"
    "$mainMod, C ,exec, hyprpicker -a"
    "$mainMod SHIFT, W,exec, hyprctl dispatch exec '[float; size 925 615] waypaper'"
    "ALT, Return, exec, pypr toggle term"
    "ALT SHIFT, Return, exec, pypr toggle altterm"


    # audio
    ", XF86AudioRaiseVolume, exec, pactl set-sink-mute @DEFAULT_SINK@ 0 && pactl set-sink-volume @DEFAULT_SINK@ +5%"
    ", XF86AudioLowerVolume, exec, pactl set-sink-mute @DEFAULT_SINK@ 0 && pactl set-sink-volume @DEFAULT_SINK@ -5%"
    ", XF86AudioMute, exec, pactl set-sink-mute @DEFAULT_SINK@ toggle"
    ", XF86AudioMicMute, exec, pactl set-source-mute @DEFAULT_SOURCE@ toggle"
    ",XF86AudioPlay,exec, playerctl play-pause"
    ",XF86AudioNext,exec, playerctl next"
    ",XF86AudioPrev,exec, playerctl previous"
    ",XF86AudioStop,exec, playerctl stop"

    # switch focus
    "$mainMod, left,  movefocus, l"
    "$mainMod, right, movefocus, r"
    "$mainMod, up,    movefocus, u"
    "$mainMod, down,  movefocus, d"
    "$mainMod, h, movefocus, l"
    "$mainMod, j, movefocus, d"
    "$mainMod, k, movefocus, u"
    "$mainMod, l, movefocus, r"

    # window control
    "$mainMod SHIFT, left, movewindow, l"
    "$mainMod SHIFT, right, movewindow, r"
    "$mainMod SHIFT, up, movewindow, u"
    "$mainMod SHIFT, down, movewindow, d"
    "$mainMod SHIFT, h, movewindow, l"
    "$mainMod SHIFT, j, movewindow, d"
    "$mainMod SHIFT, k, movewindow, u"
    "$mainMod SHIFT, l, movewindow, r"

    "$mainMod CTRL, left, resizeactive, -80 0"
    "$mainMod CTRL, right, resizeactive, 80 0"
    "$mainMod CTRL, up, resizeactive, 0 -80"
    "$mainMod CTRL, down, resizeactive, 0 80"
    "$mainMod CTRL, h, resizeactive, -80 0"
    "$mainMod CTRL, j, resizeactive, 0 80"
    "$mainMod CTRL, k, resizeactive, 0 -80"
    "$mainMod CTRL, l, resizeactive, 80 0"

    "$mainMod ALT, left, moveactive,  -80 0"
    "$mainMod ALT, right, moveactive, 80 0"
    "$mainMod ALT, up, moveactive, 0 -80"
    "$mainMod ALT, down, moveactive, 0 80"
    "$mainMod ALT, h, moveactive,  -80 0"
    "$mainMod ALT, j, moveactive, 0 80"
    "$mainMod ALT, k, moveactive, 0 -80"
    "$mainMod ALT, l, moveactive, 80 0"


    # zoom
    "$mainMod, equal, exec, woomer"

    # screenshot
    ", Print, exec,HYPRSHOT_DIR=/home/virajs/Nextcloud/Pictures/screenshot hyprshot -m region"

    # switch workspace
    "$mainMod, 1, workspace, 1"
    "$mainMod, 2, workspace, 2"
    "$mainMod, 3, workspace, 3"
    "$mainMod, 4, workspace, 4"
    "$mainMod, 5, workspace, 5"
    "$mainMod, 6, workspace, 6"
    "$mainMod, 7, workspace, 7"
    "$mainMod, 8, workspace, 8"
    "$mainMod, 9, workspace, 9"
    "$mainMod, 0, workspace, 10"

    # same as above, but switch to the workspace
    "$mainMod SHIFT, 1, movetoworkspacesilent, 1"
    "$mainMod SHIFT, 2, movetoworkspacesilent, 2"
    "$mainMod SHIFT, 3, movetoworkspacesilent, 3"
    "$mainMod SHIFT, 4, movetoworkspacesilent, 4"
    "$mainMod SHIFT, 5, movetoworkspacesilent, 5"
    "$mainMod SHIFT, 6, movetoworkspacesilent, 6"
    "$mainMod SHIFT, 7, movetoworkspacesilent, 7"
    "$mainMod SHIFT, 8, movetoworkspacesilent, 8"
    "$mainMod SHIFT, 9, movetoworkspacesilent, 9"
    "$mainMod SHIFT, 0, movetoworkspacesilent, 10"
    ];
    bindm = [
      "$mainMod, mouse:272, movewindow"
      "$mainMod, mouse:273, resizewindow"      

    ];
    };
  };
}
