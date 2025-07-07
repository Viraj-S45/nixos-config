{ config, pkgs, lib, ... }:
let
in
{
  imports = [
    ./hypridle.nix
    ./hyprland.nix
    ./pyprland.nix
  ];

  home.packages = with pkgs; [

  ];

}
