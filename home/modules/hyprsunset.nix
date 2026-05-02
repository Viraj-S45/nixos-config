{
  config,
  pkgs,
  ...
}: {
  imports = [
  ];
  home.packages = with pkgs; [
    hyprsunset
  ];

  services.hyprsunset = {
    enable = true;
    package = pkgs.hyprsunset;
    settings = {
      alwaysOn = {
        calendar = "*-*-* *:*:00";
        requests = [
          {temp = "3500";}
        ];
      };
    };
  };
}
