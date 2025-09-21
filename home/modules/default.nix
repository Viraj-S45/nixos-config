{
  config,
  pkgs,
  lib,
  ...
}: let
in {
  imports = [
    ./hyprland
    ./browser.nix
    ./programs.nix
    ./rofi.nix
    ./swaync.nix
    ./hyprpaper.nix
    ./hyprsunset.nix
    ./hyprpolkit.nix
    ./kitty.nix
    ./alacritty.nix
    ./wlogout.nix
    ./cliphist.nix
    ./desktopentries.nix
    ./aw.nix
    ./waybar
    ./git.nix
    ./emacs.nix
    ./gtk.nix
    ./shell.nix
  ];

  home.packages = with pkgs; [
    kdePackages.kate
  ];
}
