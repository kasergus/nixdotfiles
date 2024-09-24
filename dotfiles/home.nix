{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "kas";
  home.homeDirectory = "/home/kas";

  imports = [
  # ./modules/bash/bash.nix
    ./modules/hyprland
    ./modules/zsh
    ./modules/waybar
    ./modules/zathura
    ./modules/qutebrowser
    ./modules/kitty
  ];

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "23.11"; # Please read the comment before changing.

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = [
    # # Adds the 'hello' command to your environment. It prints a friendly
    # # "Hello, world!" when run.

    # fun things
    pkgs.sl
    pkgs.cbonsai
    pkgs.neofetch
    pkgs.cowsay
    pkgs.cmatrix
    pkgs.lolcat
    pkgs.tty-clock

    # utils for terminal
    pkgs.kitty
    pkgs.ranger

    # editors
    pkgs.vim-full
    pkgs.zathura

    # messagers

    # system
    pkgs.brightnessctl
    pkgs.pavucontrol
    pkgs.feh
    pkgs.sutils
    pkgs.playerctl
    pkgs.swaylock
    pkgs.wlogout
    pkgs.pulseaudio
    pkgs.calc

    # archievers
    pkgs.unzip
    pkgs.p7zip

    # programming utilities
    pkgs.burpsuite

    # compilers
    pkgs.clang
    pkgs.python3

    # browser
    pkgs.qutebrowser

    # de
    pkgs.grimblast

    # fonts
    pkgs.font-awesome
    pkgs.powerline-fonts
    pkgs.powerline-symbols
    pkgs.weather-icons

    # # It is sometimes useful to fine-tune packages, for example, by applying
    # # overrides. You can do that directly here, just don't forget the
    # # parentheses. Maybe you want to install Nerd Fonts with a limited number of
    # # fonts?
    (pkgs.nerdfonts.override { fonts = [ "FiraCode" "NerdFontsSymbolsOnly" ]; })

    # # You can also create simple shell scripts directly inside your
    # # configuration. For example, this adds a command 'my-hello' to your
    # # environment:
    # (pkgs.writeShellScriptBin "my-hello" ''
    #   echo "Hello, ${config.home.username}!"
    # '')
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
  # 'home.sessionVariables'. If you don't want to manage your shell through Home
  # Manager then you have to manually source 'hm-session-vars.sh' located at
  # either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/kas/etc/profile.d/hm-session-vars.sh
  #
  home.sessionVariables = {
    # EDITOR = "emacs";
    # NIXPKGS_ALLOW_UNFREE = 1;
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # Custom
  # home.file."~/.config/hypr/hyprland.conf".source = ./hyprland.conf;
  nixpkgs.config.allowUnfree = true;
}
