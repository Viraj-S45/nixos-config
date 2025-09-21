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

  programs.alacritty = {
    enable = true;
    package = pkgs.alacritty;
    theme = "everforest_dark";
    settings = {
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
          style = "Bold";
        };
        bold_italic = {
          style = "Bold Italic";
        };
        italic = {
          style = "Italic";
        };
        normal = {
          style = "Regular";
        };
      };
    };
  };
}
