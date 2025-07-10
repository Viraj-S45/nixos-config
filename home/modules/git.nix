{ config, pkgs, ... }:
{
  imports = [

  ];
  home.packages = with pkgs; [

  ];

  programs.git = {
    enable = true;
    userName = "viraj-sh";
    userEmail = "virajs45@proton.me";
    extraConfig = {
      init.defaultBranch = "main";
    };
  };




}
