{ config, pkgs, lib, ... }:
let
  serverCert = pkgs.writeText "server-caddy-root.crt" (builtins.readFile ./certs/server-caddy-root.crt);
in
{
  imports = [];
  security.pki.certificateFiles = [
    serverCert
  ];

}
