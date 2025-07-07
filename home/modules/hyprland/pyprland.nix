{ config, pkgs, lib, ... }:
let
in
{
  imports = [];

  home.packages = with pkgs; [

  ];


  home.file.".config/hypr/pyprland.toml".text = ''
    [pyprland]
    plugins = ["scratchpads"]

    [scratchpads.term]
    command = "kitty --class scratchpad"
    class = "scratchpad"
  '';

  

}
