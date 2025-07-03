{ ... }:
{ 
  imports = [
    ./grub.nix
    ./general.nix
    ./gnome.nix
    ./users.nix
    ./networking.nix
    ./syspkgs.nix
    ./hyprland.nix
    ./fonts.nix
    ./sslcert.nix
    # ./virtualization.nix
  ];
}
