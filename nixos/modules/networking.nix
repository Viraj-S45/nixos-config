{ config, pkgs, lib, ... }:
let
  ip = "192.168.1.104";
  hostnames = [
    "server.nextcloud"
    "server.notemark"
    "server.vikunja"
    "server.portainer"
    "server.beszel"
    "server.changedetection"
    "server.invidious"
    "server.vscode"
    "server.filebrowser"
    "server.filezilla"
    "server.jellyfin"
    "server.gimp"
    "server.ugchromium"
    "server.kdenlive"
    "server.jupyterhub"
    "server.expenseowl"
    "server.radicale"
    "server.portnote"
    "server.ariang"
    "server.automation"
    "server.stirlingpdf"
    "server.speedtest"
    "server.redlib"
    "server.paperlessngx"
    "server.metube"
    "server.karakeep"
    "server.convertx"
    "server.roundcubemail"
    "server.grocy"
    "server.freshrss"
    "server.libreoffice"
    "server.microbin"
    "server.excalidraw"
    "server.kavita"
    "server.myspeed"
    "server.vaultwarden"
    "server.uptimekuma"
    "server.nexterm"
    "server.homepage"
    "server.ariang"
    "server.pelican"
    "server.inventree"
    "server.papra"



  ];
  combinedHostEntry = "${ip} " + lib.concatStringsSep " " hostnames;
in
{
  imports = [];
  # Hostname
  networking.hostName = "virajs";

  networking.extraHosts = combinedHostEntry;

  # Pick only one of the below networking options.
  networking.wireless.enable = false;
  networking.wireless.iwd.enable = false;
  networking.networkmanager.enable = true;

  # WOL
  networking.interfaces.enp1s0.wakeOnLan.enable = true;

}
