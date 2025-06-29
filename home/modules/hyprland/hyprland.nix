{ config, pkgs, ... }:
{
  imports = [
    ./conf
#   ./conf/monitor.nix
#   ./conf/cursor.nix
#   ./conf/keyboard.nix
#   ./conf/keybinding.nix
#   ./conf/autostart.nix
#   ./conf/window.nix
#   ./conf/decoration.nix
#   ./conf/workspace.nix
#   ./conf/misc.nix
#   ./conf/windowrule.nix
#   ./conf/animation.nix
  ];
  home.packages = with pkgs; [
    pyprland
  ];

  wayland.windowManager = {
    hyprland = {
      enable = true;
      package = pkgs.hyprland;
      settings = {
        env = [
          "XCURSOR_THEME,Bibata-Modern-Ice"
          "XCURSOR_SIZE,24"
          "HYPRCURSOR_THEME,Bibata-Modern-Ice"
          "HYPRCURSOR_SIZE,24"

#           "XCURSOR_SIZE,24"
#           "HYPRCURSOR_SIZE,24"
        ];
        device = {
          name = "epic-mouse-v1";
          sensitivity = -0.5;
        };
      };
    };
  };

  programs.hyprlock = {
    enable = true;
    package = pkgs.hyprlock;
  };



}
