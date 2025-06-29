{ config, pkgs, ... }:
{
  imports = [

  ];
  home.packages = with pkgs; [

  ];



  services.activitywatch = {
    enable = true;
    package = pkgs.activitywatch;
  };


}
