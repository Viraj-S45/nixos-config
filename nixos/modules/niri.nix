{
  config,
  pkgs,
  lib,
  ...
}: {
  imports = [];
  environment.systemPackages = with pkgs; [
    wl-clipboard
    xdg-desktop-portal
    xdg-desktop-portal-wlr
  ];

  services = {
    pipewire = {
      enable = lib.mkForce true;
      alsa.enable = true;
      pulse.enable = true;
      jack.enable = true;
      package = pkgs.pipewire;
      wireplumber.enable = true;
    };

    # Firmware events for rotation sensors etc (optional)
    iio-niri = {
      enable = false;
      package = pkgs.iio-niri;
      extraArgs = [];
    };
  };

  security = {
    polkit = {
      enable = true;
      package = pkgs.polkit;
      debug = true;
    };
  };

  hardware.alsa.enable = true;
  hardware.bluetooth.enable = true;

  xdg.portal = {
    wlr = {
      enable = true;
    };
  };

  programs = {
    niri = {
      enable = true;
      package = pkgs.niri;
      useNautilus = false;
    };
  };
}
