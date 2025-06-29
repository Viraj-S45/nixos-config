{ config, pkgs, lib, ... }:
let
in
{
  imports = [
  ./monitor.nix
  ./cursor.nix
  ./keyboard.nix
  ./keybinding.nix
  ./autostart.nix
  ./window.nix
  ./decoration.nix
  ./workspace.nix
  ./misc.nix
  ./windowrule.nix
  ./animation.nix
  ];

  home.packages = with pkgs; [

  ];

}
