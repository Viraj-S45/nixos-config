{
  config,
  pkgs,
  lib,
  ...
}: let
  serverCert = pkgs.writeText "fullchain1.crt" (builtins.readFile /home/virajs/Downloads/certificate-1/fullchain1.crt);
in {
  imports = [];
  security.pki.certificateFiles = [
    serverCert
  ];
}
