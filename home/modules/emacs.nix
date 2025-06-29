{ config, pkgs, ... }:
{
  imports = [

  ];
  home.packages = with pkgs; [

  ];

  programs.emacs = {
    enable = true;
    package = pkgs.emacs;
  };




}
