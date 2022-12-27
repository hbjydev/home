{ pkgs, ... }:

{
  enable = true;
  terminal = "screen-256color";
  baseIndex = 1;
  shortcut = "a";

  extraConfig = ''
    run-shell /home/hayden/Repos/github.com/hbjydev/oxocarbon-tmux/oxocarbon.tmux

    # split horizontally
    unbind h
    unbind %
    bind h split-window -h -c "#{pane_current_path}"

    # split vertically
    unbind v
    unbind '"'
    bind v split-window -v -c "#{pane_current_path}"
  '';

  plugins = [];
  #plugins = with pkgs; [ customTmux.catppuccin ];
}
