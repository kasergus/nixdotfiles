{ config, pkgs, ... }:

{
  programs.waybar.style = ''
    @define-color base   #eff1f5;
    @define-color mantle #e6e9ef;
    @define-color crust  #dce0e8;

    @define-color text     #4c4f69;
    @define-color subtext0 #6c6f85;
    @define-color subtext1 #5c5f77;

    @define-color surface0 #ccd0da;
    @define-color surface1 #bcc0cc;
    @define-color surface2 #acb0be;
    
    @define-color overlay0 #9ca0b0;
    @define-color overlay1 #8c8fa1;
    @define-color overlay2 #7c7f93;
    
    @define-color blue      #1e66f5;
    @define-color lavender  #7287fd;
    @define-color sapphire  #209fb5;
    @define-color sky       #04a5e5;
    @define-color teal      #179299;
    @define-color green     #40a02b;
    @define-color yellow    #df8e1d;
    @define-color peach     #fe640b;
    @define-color maroon    #e64553;
    @define-color red       #d20f39;
    @define-color mauve     #8839ef;
    @define-color pink      #ea76cb;
    @define-color flamingo  #dd7878;
    @define-color rosewater #dc8a78;
    
    * {
      font-family: FiraCode Nerd Font;
      font-size: 17px;
      min-height: 0;
    }
    
    #waybar {
      background: transparent;
      color: @text;
      margin: 5px 5px;
    }
    
    #workspaces {
      border-radius: 1rem;
      margin: 5px;
      background-color: @surface0;
      margin-left: 1rem;
    }
    
    #workspaces button {
      color: @lavender;
      border-radius: 1rem;
      padding: 0.4rem;
    }
    
    #workspaces button.active {
      color: @sky;
      border-radius: 1rem;
    }
    
    #workspaces button:hover {
      color: @sapphire;
      border-radius: 1rem;
    }
    
    #custom-music,
    #tray,
    #backlight,
    #clock,
    #battery,
    #pulseaudio,
    #custom-lock,
    #custom-power {
      background-color: @surface0;
      padding: 0.5rem 1rem;
      margin: 5px 0;
    }
    
    #clock {
      color: @blue;
      border-radius: 0px 1rem 1rem 0px;
      margin-right: 1rem;
    }
    
    #battery {
      color: @green;
    }
    
    #battery.charging {
      color: @green;
    }
    
    #battery.warning:not(.charging) {
      color: @red;
    }
    
    #backlight {
      color: @yellow;
    }
    
    #backlight, #battery {
        border-radius: 0;
    }
    
    #pulseaudio {
      color: @maroon;
      border-radius: 1rem 0px 0px 1rem;
      margin-left: 1rem;
    }
    
    #custom-music {
      color: @mauve;
      border-radius: 1rem;
    }
    
    #custom-lock {
        border-radius: 1rem 0px 0px 1rem;
        color: @lavender;
    }
    
    #custom-power {
        margin-right: 1rem;
        border-radius: 0px 1rem 1rem 0px;
        color: @red;
    }
    
    #tray {
      margin-right: 1rem;
      border-radius: 1rem;
    }
  '';
}
