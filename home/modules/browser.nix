{ config, pkgs, lib, ... }:
let
in
{
  imports = [];

  home.packages = with pkgs; [
    brave

  ];
  programs.chromium.enable = true;

}
