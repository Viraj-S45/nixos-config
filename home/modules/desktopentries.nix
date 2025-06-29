{ config, pkgs, lib, ... }:
let
  browser = pkgs.lib.getExe pkgs.brave;
  chromium = pkgs.lib.getExe pkgs.chromium;
in
{
  imports = [

  ];
  home.packages = with pkgs; [

  ];


  xdg.desktopEntries = {

    whatsapp-web = {
      name = "WhatsApp Web";
      genericName = "Web App";
      comment = "Use WhatsApp Web like an app";
      exec = "${browser} --app=https://web.whatsapp.com/";
      icon = "whatsapp";
      terminal = false;
      categories = [ "Network" "InstantMessaging" ];
    };
    telegram = {
      name = "Telegram";
      genericName = "Web App";
      comment = "Use Telegram like an app";
      exec = "${browser} --app=https://web.telegram.org/";
      icon = "telegram";
      terminal = false;
      categories = [ "Network" "InstantMessaging" ];
    };
    vsserver= {
      name = "VSServer";
      genericName = "Web App";
      comment = "Use VS Code like an app";
      exec = "${browser} --app=https://server.vscode/";
      icon = "vscode";
      terminal = false;

    };
    udemy= {
      name = "Udemy";
      genericName = "Web App";
      comment = "Use Udemy like an app";
      exec = "${browser} --app=\"https://www.udemy.com/join/login-popup/?passwordredirect=True\"";
      icon = "udemy";
      terminal = false;

    };
#    https://www.sonyliv.com/
    jupyterhub = {
      name = "Jupyter Hub";
      genericName = "Web App";
      comment = "Use Jupyter Hub like an app";
      exec = "${browser} --app=https://server.jupyterhub/";
      icon = "jupyterhub";
      terminal = false;
    };
    sonyliv = {
      name = "Sony Liv";
      genericName = "Web App";
      comment = "Use Sony Liv like an app";
      exec = "${chromium} --app=https://www.sonyliv.com/";
      icon = "sonyliv";
      terminal = false;
    };
  };









}
