{ config, pkgs, ... }:

{
  programs.bash = {
    enable = true;
    shellAliases = {
      ".." = "cd ..";
      "off" = "sudo shutdown -h now";
    };
  };
}
