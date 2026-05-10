{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "frogginramen";
  home.homeDirectory = "/home/frogginramen";

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
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
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. These will be explicitly sourced when using a
  # shell provided by Home Manager. If you don't want to manage your shell
  # through Home Manager then you have to manually source 'hm-session-vars.sh'
  # located at either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/frogginramen/etc/profile.d/hm-session-vars.sh
  #
  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
