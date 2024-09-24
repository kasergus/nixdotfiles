{ config, pkgs, ... }:

{
  programs.qutebrowser.enable = true;

  imports = [
    ./extraconfig.nix
    ./adblock.nix
  ];
}
