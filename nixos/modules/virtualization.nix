{
  config,
  pkgs,
  ...
}: {
  environment.systemPackages = with pkgs; [
    docker-buildx
    buildkit
  ];

  programs.virt-manager.enable = true;

  virtualisation = {
    libvirtd.enable = true;
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
