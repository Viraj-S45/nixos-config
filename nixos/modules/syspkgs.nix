{
  config,
  pkgs,
  lib,
  ...
}: {
  imports = [];

  environment.systemPackages = with pkgs; [
    vim
    wget
  ];
}
