{ config, pkgs, ... }:

{
  wayland.windowManager.hyprland.settings = {
    monitor = ",highres,auto,1";
       
    "$mod" = "SUPER";
    "$terminal" = "kitty";
    "$browser" = "qutebrowser";

    exec-once = [
      "waybar"
      "swww-daemon --format xrgb"
      "swww img ~/Pictures/rocket_launch.png"
    ];

    general = {
      gaps_in = 5;
      gaps_out = 5;

      border_size = 2;

      "col.active_border" = "rgb(7287fd) rgb(1e66f5)";
      "col.inactive_border" = "rgb(9ca0b0)";
    };

    decoration = {
      rounding = 10;

      active_opacity = 1.0;
      inactive_opacity = 1.0;

      drop_shadow = true;
      shadow_range = 4;
      shadow_render_power = 3;
      "col.shadow" = "rgb(dce0e8)";

      blur = {
        enabled = true;
        size = 3;
        passes = 1;

	vibrancy = 0.1696;
      };
    };

    animations = {
      enabled = true;

      bezier = "myBezier, 0.05, 0.9, 0.1, 1.05";

      animation = [ 
        "windows, 1, 7, myBezier"
        "windowsOut, 1, 7, default, popin 80%"
        "border, 1, 10, default"
        "borderangle, 1, 8, default"
        "fade, 1, 7, default"
        "workspaces, 1, 6, default"
      ];
    };

    input = {
      kb_layout = "us, ru";
      kb_options = "ctrl:swapcaps, grp:ctrl_space_toggle";

      follow_mouse = 1;

    };

    bind = [ 
      # Switch to workspace
      "$mod, 1, workspace, 1"
      "$mod, 2, workspace, 2"
      "$mod, 3, workspace, 3"
      "$mod, 4, workspace, 4"
      "$mod, 5, workspace, 5"
      "$mod, 6, workspace, 6"
      "$mod, 7, workspace, 7"
      "$mod, 8, workspace, 8"
      "$mod, 9, workspace, 9"
      "$mod, 0, workspace, 10"

      # Move to workspace
      "$mod SHIFT, 1, movetoworkspace, 1"
      "$mod SHIFT, 2, movetoworkspace, 2"
      "$mod SHIFT, 3, movetoworkspace, 3"
      "$mod SHIFT, 4, movetoworkspace, 4"
      "$mod SHIFT, 5, movetoworkspace, 5"
      "$mod SHIFT, 6, movetoworkspace, 6"
      "$mod SHIFT, 7, movetoworkspace, 7"
      "$mod SHIFT, 8, movetoworkspace, 8"
      "$mod SHIFT, 9, movetoworkspace, 9"
      "$mod SHIFT, 0, movetoworkspace, 10"
     
      # Switch focus
      "$mod, h, movefocus, l"
      "$mod, l, movefocus, r"
      "$mod, k, movefocus, u"
      "$mod, j, movefocus, d"

      "$mod, D, togglespecialworkspace, magic"
      "$mod SHIFT, D, movetoworkspace, special:magic"

      "$mod, F, exec, qutebrowser"
      "$mod, T, exec, kitty"

      "$mod, Q, killactive"
      "$mod, X, exit"

      "$mod, C, exec, grimblast copy area"
      "$mod ALT, C, exec, grimblast save area"
      "$mod, P, exec, grimblast copy screen"
      "$mod ALT, P, exec, grimblast save screen"
      
      "ALT, Return, fullscreen"
    ];

    bindm = [ 
      "$mod, mouse:272, movewindow"
      "$mod, mouse:273, resizewindow"
    ];
  };
}
