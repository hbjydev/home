{ ... }:
{
  enable = true;
  font = {
    name = "FiraCode Nerd Font";
    size = 13;
  };

  keybindings = {
    "ctrl+shift+]" = "next_window";
    "ctrl+shift+[" = "previous_window";

    "ctrl+shift+k" = "combine : clear_terminal scrollback active : send_text normal,application \\x0c";

    "ctrl+shift+1" = "goto_tab 1";
    "ctrl+shift+2" = "goto_tab 2";
    "ctrl+shift+3" = "goto_tab 3";
    "ctrl+shift+4" = "goto_tab 4";
    "ctrl+shift+5" = "goto_tab 5";
    "ctrl+shift+6" = "goto_tab 6";
    "ctrl+shift+7" = "goto_tab 7";
    "ctrl+shift+8" = "goto_tab 8";
    "ctrl+shift+9" = "goto_tab 9";
  };

  settings = {
    hide_window_decorations = true;

    enable_audio_bell = false;
    cursor_shape = "beam";

    foreground = "#CAD3F5";
    background = "#24273A";
    selection_foreground = "#24273A";
    selection_background = "#F4DBD6";
    cursor = "#F4DBD6";
    cursor_text_color = "#24273A";
    url_color = "#F4DBD6";
    active_border_color = "#B7BDF8";
    inactive_border_color = "#6E738D";
    bell_border_color = "#EED49F";
    wayland_titlebar_color = "system";
    macos_titlebar_color = "system";
    active_tab_foreground = "#181926";
    active_tab_background = "#C6A0F6";
    inactive_tab_foreground = "#CAD3F5";
    inactive_tab_background = "#1E2030";
    tab_bar_background = "#181926";
    mark1_foreground = "#24273A";
    mark1_background = "#B7BDF8";
    mark2_foreground = "#24273A";
    mark2_background = "#C6A0F6";
    mark3_foreground = "#24273A";
    mark3_background = "#7DC4E4";
    color0 = "#494D64";
    color8 = "#5B6078";
    color1 = "#ED8796";
    color9 = "#ED8796";
    color2 = "#A6DA95";
    color10 = "#A6DA95";
    color3 = "#EED49F";
    color11 = "#EED49F";
    color4 = "#8AADF4";
    color12 = "#8AADF4";
    color5 = "#F5BDE6";
    color13 = "#F5BDE6";
    color6 = "#8BD5CA";
    color14 = "#8BD5CA";
    color7 = "#B8C0E0";
    color15 = "#A5ADCB";
  };
  theme = "Catppuccin-Macchiato";
}
