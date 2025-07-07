{ config, pkgs, lib, ... }:
let
in
{
  imports = [];

  home.packages = with pkgs; [

  ];


  home.file.".config/pyprland.toml".text = ''
    [pyprland]
    plugins = ["scratchpads"]

    [scratchpads.term]
    command = "alacritty --class scratchpad"
  '';

  

}
