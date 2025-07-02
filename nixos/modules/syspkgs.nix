{ config, pkgs, lib, ... }:
{
  imports = [];

  environment.systemPackages = with pkgs; [
    vim
    wget
    libva
    libva-utils
    intel-media-driver
  ];

}
