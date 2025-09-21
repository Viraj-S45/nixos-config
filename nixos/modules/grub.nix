{
  config,
  pkgs,
  lib,
  ...
}: {
  imports = [];

  boot.loader = {
    efi.canTouchEfiVariables = true;
    grub = {
      enable = true;
      devices = ["nodev"];
      efiSupport = true;
      useOSProber = true;
    };
  };
  systemd.services."getty@tty1".enable = false;
  # Optional: Smooth visual boot
  boot.kernelParams = ["quiet"];
  boot.plymouth.enable = false;
}
