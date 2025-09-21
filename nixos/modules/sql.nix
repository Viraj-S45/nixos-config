{
  config,
  pkgs,
  lib,
  ...
}: {
  imports = [];
  services.postgresql = {
    enable = true;
    package = pkgs.postgresql_15;
  };
}
