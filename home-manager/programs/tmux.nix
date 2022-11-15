{ pkgs, ... }:

{
  enable = true;
  extraConfig = ''
    set -g default-terminal "xterm-256color"
    set-option -ga terminal-overrides ",xterm-256color:Tc"
  '';
  plugins = with pkgs; [ customTmux.catppuccin ];
}
