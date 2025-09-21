{
  config,
  pkgs,
  ...
}: {
  imports = [
  ];
  home.packages = with pkgs; [
  ];

  wayland.windowManager.hyprland = {
    settings = {
      general = {
        gaps_in = 10;
        gaps_out = 14;
        border_size = 2;
        # col.active_border = rgba(a7c080ff)
        # col.inactive_border = "00000000";
        layout = "dwindle";
        resize_on_border = true;
        allow_tearing = false;
      };
    };
  };
}
