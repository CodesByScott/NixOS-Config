{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "frogginramen";
  home.homeDirectory = "/home/frogginramen";

  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  home.stateVersion = "25.11"; # Please read the comment before changing.

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = [
    jq
    zip
    nil
    gcc
    eza
    fzf
    imv
    mpd
    htop
    yazi
    tmux
    swww
    rmpc
    vips
    cava
    pywal
    unzip
    neovim
    nodejs
    evince
    upower
    figlet
    ffmpeg
    zoxide
    stylua
    yt-dlp
    ripgrep
    cmatrix
    adw-gtk3
    cliphist
    hyprlock
    hypridle
    fastfetch
    gammastep
    playerctl
    libnotify
    alejandra
    prettierd
    librewolf
    libreoffice
    imagemagick
    nixpkgs-fmt
    brightnessctl
    qt6.qt5compat
    video-downloader
    transmission_4-gtk
    qt6.qtimageformats
    nodePackages.prettier
    quickshell.packages.${pkgs.stdenv.hostPlatform.system}.default
  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
  };

  # Home Session Variables
  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
