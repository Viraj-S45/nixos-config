{ config, pkgs, lib, ... }:
let
in
{
  imports = [
    ./hypridle.nix
    ./hyprland.nix
  ];

  home.packages = with pkgs; [

  ];

}
