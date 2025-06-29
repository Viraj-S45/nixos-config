{ config, pkgs, lib, ... }:
{
  imports = [

  ];
  home.packages = with pkgs; [
#     alacritty
  ];

  programs.alacritty = {
  enable = true;
  package = pkgs.alacritty;
  theme = "everforest_dark";
  settings = {
#     shell.program = "";
    env = {
      TERM = "xterm-256color";
    };
    window = {
      padding = {
        x = 10;
        y = 10;
      };
    };
    cursor = {
      style = "Underline";
    };
    font = {
      size = lib.mkForce 14;
      bold = {
#         family = "JetBrainsMono Nerd Font Mono";
        style = "Bold";

      };
      bold_italic = {
#         family = "JetBrainsMono Nerd Font Mono";
        style = "Bold Italic";
      };
      italic = {
#         family = "JetBrainsMono Nerd Font Mono";
        style = "Italic";
      };
      normal = {
#         family = "JetBrainsMono Nerd Font Mono";
        style = "Regular";
      };
    };

  };
  };



}
