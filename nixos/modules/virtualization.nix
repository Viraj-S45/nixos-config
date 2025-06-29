{ config, pkgs, ... }:
{

  environment.systemPackages = with pkgs; [

  ];

  virtualisation = {
    docker = {
      enable = true;
      enableOnBoot = true;
      package = pkgs.docker;
      autoPrune.enable = true;
    };
    oci-containers = {
      backend = "docker";
    };
  };




}
