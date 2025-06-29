{ config, pkgs, ... }:
{
  imports = [

  ];
  home.packages = with pkgs; [

  ];

  programs.git = {
    enable = true;
    userName = "Viraj-S45";
    userEmail = "virajshirodkar45@gmail.com";
    extraConfig = {
      init.defaultBranch = "main";
    };
  };




}
