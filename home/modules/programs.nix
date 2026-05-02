{
  config,
  pkgs,
  lib,
  ...
}: let
in {
  imports = [];

  home.packages = with pkgs; [
  kdePackages.filelight
  virtiofsd
  figma-linux
  libreoffice
  patchelf
  pipx
    gemini-cli
    microsoft-edge
    antigravity
    direnv
    sqlite
    kind
    kubectl
    localstack
    poppins
    dive
    nodejs_24
    redis
    R
    # rPackages.text
    # rPackages.tidytext
    # rPackages.dplyr
    # rPackages.readr
    pdfgrep
    cargo
    tesseract
    poppler-utils
    jetbrains.idea-oss
    compose2nix
    # qutebrowser-qt5
    pwgen
    sshfs
    kdePackages.dolphin
    gnupg
    sipsak
    curl
    pnpm #
    mcphost
    act
    aria2
    gdown
    obs-studio
    fuzzel
    git-credential-manager
    pciutils
    usbutils
    yaak
    openssl
    pomodoro-gtk
    uv
    docker-buildx

    pyright
    ruff
    lua-language-server
    lua
    lua51Packages.luarocks
    libffi
    zlib
    ncurses
    readline
    neovim
    python312Packages.jupyterlab
    vscode
    jadx
    apktool
    gh
    git-hub
    docker-compose
    gnumake
    alejandra
    dbeaver-bin
    nvpy
    appimage-run
    gcc
    yt-dlp
    ffmpeg
    vlc
    imagemagick
    bruno
    kicad
    fritzing
    wakeonlan
    nps

    # ─────────────────────────────────────────────
    # 🖥️ Desktop Environment / UI Tools
    # ─────────────────────────────────────────────
    waypaper # Wallpaper manager
    hyprshot # Screenshot tool for Hyprland
    hyprpicker # Color picker
    hyprsysteminfo # System info viewer
    woomer # Hyprland workspace/output helper
    libnotify # Notifications
    xdotool # Simulate keyboard/mouse (X11)
    pamixer # CLI volume mixer
    pavucontrol # GUI volume control
    brightnessctl # Brightness controller
    nwg-look # GTK theme and appearance config
    everforest-gtk-theme # GTK theme
    bibata-cursors # Cursor theme

    # ─────────────────────────────────────────────
    # 🧰 System Tools / Utilities
    # ─────────────────────────────────────────────
    curl # Data transfer tool
    jq # ntfy notificaion script - JSON processor
    ripgrep # Fast grep replacement
    lsof # List open files
    nettools # Basic network tools
    gcc # neovim - C/C++ compiler
    gparted # Partition editor
    btop # Resource monitor
    fastfetch # System info fetch
    xfce.thunar # File manager
    xfce.thunar-volman # Removable devices plugin
    xfce.thunar-archive-plugin # file context menu for archives
    xfce.thunar-media-tags-plugin # media tags

    # ─────────────────────────────────────────────
    # 💻 Development Tools
    # ─────────────────────────────────────────────
    lazygit # Git TUI
    lazydocker # Docker TUI
    fzf # zsh - Fuzzy finder
    # python313
    python312
    wf-recorder

    # ─────────────────────────────────────────────
    # 🌐 Web / Cloud / Network Tools
    # ─────────────────────────────────────────────
    ntfy-sh # Push notifications (CLI)
    betterdiscordctl # BetterDiscord installer
    nextcloud-client
    discord # Chat app
    spotify # Music streaming
    chromium # Web browser

    # ─────────────────────────────────────────────
    # 🔐 Security / Password Management
    # ─────────────────────────────────────────────
    bitwarden-desktop # GUI password manager

    # ─────────────────────────────────────────────
    # 📦 App Installers / Package Utilities
    # ─────────────────────────────────────────────
    compose2nix # Docker Compose → Nix
    overskride # Bluetooth manager (Wayland-friendly)

    # ─────────────────────────────────────────────
    # 🎨 Media / Graphics
    # ─────────────────────────────────────────────
    gimp # Image editor
    mpv # Media player
    kdePackages.ark # Archive manager

    # ─────────────────────────────────────────────
    # 📝 Notes / Productivity
    # ─────────────────────────────────────────────
    obsidian # Markdown notes
    p3x-onenote # Unofficial OneNote client
    # libreoffice-qt6-fresh # Office suite

    # ─────────────────────────────────────────────
    # 🎵 Music & Audio Tools
    # ─────────────────────────────────────────────
    ncmpcpp # MPD client
    mpd # Music daemon

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
