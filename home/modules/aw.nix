{
  config,
  pkgs,
  ...
}: {
  imports = [
  ];
  home.packages = with pkgs; [
    activitywatch
  ];

  services.activitywatch = {
    enable = true;
    package = pkgs.activitywatch;
  };

  # Add systemd units for watchers
  systemd.user.services.aw-watcher-afk = {
    Unit = {
      Description = "ActivityWatch AFK watcher";
      After = ["activitywatch.service"];
    };
    Service = {
      ExecStart = "${pkgs.activitywatch}/bin/aw-watcher-afk";
      Restart = "on-failure";
    };
    Install = {
      WantedBy = ["default.target"];
    };
  };

  systemd.user.services.aw-watcher-window = {
    Unit = {
      Description = "ActivityWatch Window watcher";
      After = ["activitywatch.service"];
    };
    Service = {
      ExecStart = "${pkgs.activitywatch}/bin/aw-watcher-window";
      Restart = "on-failure";
    };
    Install = {
      WantedBy = ["default.target"];
    };
  };
}
