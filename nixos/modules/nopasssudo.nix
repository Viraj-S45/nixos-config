{ config, pkgs, ... }:
{

  environment.systemPackages = with pkgs; [

  ];

  # --Password less sudo for user--

   security.sudo.extraRules = [{
     users = ["virajs"];
     commands = [{ command = "ALL";
       options = ["NOPASSWD"];
       }];
     }];




}
