{ config, pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    shellAliases = {
      hswitch = "home-manager switch --flake ~/.dotfiles";
    };
  };

  programs.zsh.oh-my-zsh = {
    enable = true;
    theme = "jonathan";
  };
}
