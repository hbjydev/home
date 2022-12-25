{ ... }:
{
  enable = true;
  font = {
    name = "FiraCode Nerd Font";
    size = 13;
  };

  keybindings = {
    "cmd+shift+]" = "next_window";
    "ctrl+shift+]" = "next_window";
    "cmd+shift+[" = "previous_window";
    "ctrl+shift+[" = "previous_window";

    "ctrl+shift+k" = "combine : clear_terminal scrollback active : send_text normal,application \\x0c";
    "cmd+shift+k" = "combine : clear_terminal scrollback active : send_text normal,application \\x0c";

    "ctrl+shift+1" = "goto_tab 1";
    "cmd+shift+1" = "goto_tab 1";
    "ctrl+shift+2" = "goto_tab 2";
    "cmd+shift+2" = "goto_tab 2";
    "ctrl+shift+3" = "goto_tab 3";
    "cmd+shift+3" = "goto_tab 3";
    "ctrl+shift+4" = "goto_tab 4";
    "cmd+shift+4" = "goto_tab 4";
    "ctrl+shift+5" = "goto_tab 5";
    "cmd+shift+5" = "goto_tab 5";
    "ctrl+shift+6" = "goto_tab 6";
    "cmd+shift+6" = "goto_tab 6";
    "ctrl+shift+7" = "goto_tab 7";
    "cmd+shift+7" = "goto_tab 7";
    "ctrl+shift+8" = "goto_tab 8";
    "cmd+shift+8" = "goto_tab 8";
    "ctrl+shift+9" = "goto_tab 9";
    "cmd+shift+9" = "goto_tab 9";
  };

  settings = {
    hide_window_decorations = true;

    window_padding_width = 12;

    tab_bar_style = "powerline";
    tab_bar_edge = "top";

    enable_audio_bell = false;
    cursor_shape = "beam";

    foreground = "#dde1e6";
    background = "#161616";
    selection_foreground = "#f2f4f8";
    selection_background = "#525252";

    cursor = "#f2f4f8";
    cursor_text_color = "#393939";

    url_color = "#ee5396";
    url_style = "single";

    active_border_color = "#ee5396";
    inactive_border_color = "#ff7eb6";

    bell_border_color = "#ee5396";

    wayland_titlebar_color = "system";
    macos_titlebar_color = "system";

    active_tab_foreground = "#161616";
    active_tab_background = "#ee5396";
    inactive_tab_foreground = "#dde1e6";
    inactive_tab_background = "#393939";
    tab_bar_background = "#161616";

    color0 = "#262626";
    color8 = "#393939";

    color1 = "#ff7eb6";
    color9 = "#ff7eb6";

    color2  = "#42be65";
    color10 = "#42be65";

    color3  = "#82cfff";
    color11 = "#82cfff";

    color4  = "#33b1ff";
    color12 = "#33b1ff";

    color5  = "#ee5396";
    color13 = "#ee5396";

    color6  = "#3ddbd9";
    color14 = "#3ddbd9";

    color7  = "#dde1e6";
    color15 = "#ffffff";
  };
}
