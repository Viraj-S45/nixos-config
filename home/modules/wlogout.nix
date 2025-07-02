{ config, pkgs, ... }:
{
  imports = [

  ];
  home.packages = with pkgs; [
    wlogout
  ];

  programs.wlogout = {
    enable = true;
    layout = [
      # {
      #     "label" = "lock";
      #     "action" = "hyprlock";
      #     "text" = "Lock";
      #     "keybind" = "l";
      # }
      # {
      #     "label" = "hibernate";
      #     "action" = "systemctl hibernate";
      #     "text" = "Hibernate";
      #     "keybind" = "h";
      # }
      {
          "label" = "logout";
          "action" = "hyprctl dispatch exit";
          "text" = "Logout";
          "keybind" = "e";
      }
      {
          "label" = "shutdown";
          "action" = "systemctl poweroff";
          "text" = "Shutdown";
          "keybind" = "s";
      }
      # {
      #     "label" = "suspend";
      #     "action" = "systemctl suspend";
      #     "text" = "Suspend";
      #     "keybind" = "u";
      # }
      {
          "label" = "reboot";
          "action" = "systemctl reboot";
          "text" = "Reboot";
          "keybind" = "r";
      }
    ];
#     style = '''';
    style = ''
            * {
              background-image: none;
            }

            window {
              background-color: rgba(0, 0, 0, 0.5);
            }

            button {
              background-color: #2e3440;
              border-style: solid;
              border-width: 0px;
              border-radius: 0;
              background-repeat: no-repeat;
              background-position: center;
              background-size: 25%;
              # color: #5e81ac;
            }

            button:focus, button:active, button:hover {
              # background-color: #4c566a;
              # color: #81a1c1;
              outline-style: none;
            }


            #logout {
              background-image: url("${./images/logout.png}");
            }

            #shutdown {
              background-image: url("${./images/shutdown.png}");
            }

            #restart {
              background-image: url("${./images/reboot.png}");
            }
            
          '';    
  };




}
