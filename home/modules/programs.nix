{ config, pkgs, lib, ... }:
let
in
{
  imports = [];

  home.packages = with pkgs; [
    nps


    # ─────────────────────────────────────────────
    # 🖥️ Desktop Environment / UI Tools
    # ─────────────────────────────────────────────
      waypaper                 # Wallpaper manager
      hyprshot                 # Screenshot tool for Hyprland
      hyprpicker               # Color picker
      hyprsysteminfo           # System info viewer
      woomer                   # Hyprland workspace/output helper
      libnotify                # Notifications
      xdotool                  # Simulate keyboard/mouse (X11)
      pamixer                  # CLI volume mixer
      pavucontrol              # GUI volume control
      brightnessctl            # Brightness controller
      nwg-look                 # GTK theme and appearance config
      everforest-gtk-theme     # GTK theme
      bibata-cursors           # Cursor theme

    # ─────────────────────────────────────────────
    # 🧰 System Tools / Utilities
    # ─────────────────────────────────────────────
      gnupg                    # qutebrowser - GPG encryption/signing
      curl                     # Data transfer tool
      jq                       # ntfy notificaion script - JSON processor
      ripgrep                  # Fast grep replacement
      lsof                     # List open files
      nettools                 # Basic network tools
      gcc                      # neovim - C/C++ compiler
      gparted                  # Partition editor
      btop                     # Resource monitor
      fastfetch                # System info fetch
      stacer                   # System optimizer
      xfce.thunar              # File manager
      xfce.thunar-volman       # Removable devices plugin
      xfce.thunar-archive-plugin # file context menu for archives
      xfce.thunar-media-tags-plugin # media tags

    # ─────────────────────────────────────────────
    # 💻 Development Tools
    # ─────────────────────────────────────────────
      lazygit                  # Git TUI
      lazydocker               # Docker TUI
      fzf                      # zsh - Fuzzy finder
#       zoxide                   # zsh - Smarter cd command
      python313                # Python 3.13
      virtualenv               # Python envs
      direnv
      python313Packages.aw-client  # ActivityWatch client
      wf-recorder

    # ─────────────────────────────────────────────
    # 🌐 Web / Cloud / Network Tools
    # ─────────────────────────────────────────────
      ntfy-sh                  # Push notifications (CLI)
      barrier                  # Software KVM
      betterdiscordctl         # BetterDiscord installer
      nextcloud-client
      discord                  # Chat app
      spotify                  # Music streaming
      github-desktop           # GitHub GUI
      vscodium                 # Open-source VS Code
      chromium                 # Web browser

    # ─────────────────────────────────────────────
    # 🔐 Security / Password Management
    # ─────────────────────────────────────────────
      bitwarden-desktop        # GUI password manager
      bitwarden-cli            # CLI password manager

    # ─────────────────────────────────────────────
    # 📦 App Installers / Package Utilities
    # ─────────────────────────────────────────────
      compose2nix              # Docker Compose → Nix
      stacer                   # System monitor / optimizer
      overskride               # Bluetooth manager (Wayland-friendly)

    # ─────────────────────────────────────────────
    # 🎨 Media / Graphics
    # ─────────────────────────────────────────────
      gimp                     # Image editor
      mpv                      # Media player
      kdePackages.ark          # Archive manager
      libsForQt5.okular        # PDF viewer
      qtscrcpy                 # Android mirroring

    # ─────────────────────────────────────────────
    # 📝 Notes / Productivity
    # ─────────────────────────────────────────────
      obsidian                 # Markdown notes
      p3x-onenote              # Unofficial OneNote client
      libreoffice-qt6-fresh    # Office suite

    # ─────────────────────────────────────────────
    # 🎵 Music & Audio Tools
    # ─────────────────────────────────────────────
      ncmpcpp                  # MPD client
      mpd                     # Music daemon

    
    xdg-utils
    zenity
    


  ];

  services = {
    nextcloud-client = {
      enable = true;
      startInBackground = true;
      package = pkgs.nextcloud-client;
    };
  };

}
