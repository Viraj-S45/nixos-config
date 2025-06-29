{ config, pkgs, lib, imports, ... }:
let
in
{
  imports = [
    ./modules
  ];
  home = {
    username = "virajs";
    homeDirectory = "/home/virajs";
    stateVersion = "25.05";
    file = {};
    sessionVariables = {};
  };
  programs.home-manager.enable = true;
}
