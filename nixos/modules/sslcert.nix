{
  config,
  pkgs,
  lib,
  ...
}: let
  serverCert = pkgs.writeText "home.crt" (builtins.readFile ./certs/home.crt);
in {
  imports = [];
  security.pki.certificateFiles = [
    serverCert
  ];
}
