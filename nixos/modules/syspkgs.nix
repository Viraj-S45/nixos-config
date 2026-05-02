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
    age
    agenix-cli
    # rstudio
  ];
  nixpkgs.config.permittedInsecurePackages = [
    "electron-36.9.5"
    "electron-38.8.4"
    # "qtwebengine-5.15.19"
  ];
}
