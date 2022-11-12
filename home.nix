{ config, pkgs, ... }:

{
  home.username = "hayden";
  home.homeDirectory = "/home/hayden";
  home.stateVersion = "22.05";

  nixpkgs.config = import ./nixpkgs-config.nix;
  xdg.configFile."nixpkgs/config.nix".source = ./nixpkgs-config.nix;

  # Packages that should be installed to the user profile.
  home.packages = import ./packages.nix { inherit pkgs; };

  home.sessionVariables = {
    EDITOR = "nvim";
    LANG = "en_GB.UTF-8";
    LC_ALL = "en_GB.UTF-8";
    LC_CTYPE = "en_GB.UTF-8";
    PATH = "$PATH:$GOPATH/bin";
    NIXPKGS_ALLOW_UNFREE = 1;
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # Configure Git
  programs.git = {
    enable = true;
    userName = "Hayden Young";
    userEmail = "hayden@hbjy.dev";
    extraConfig = {
      init = { defaultBranch = "main"; };
      pull = { rebase = false; };
      push = { autoSetupRemote = true; };

      "credential \"https://gitlab.com\"" = {
        helper = "${pkgs.glab.outPath}/bin/glab auth git-credential";
      };

      "credential \"https://git.esptest.co.uk\"" = {
        helper = "${pkgs.glab.outPath}/bin/glab auth git-credential";
      };
    };
  };

  # Configure Github CLI
  programs.gh = {
    enable = true;
    enableGitCredentialHelper = true;
    settings = {
      editor = "nvim";
      git_protocol = "https";
    };
  };

  programs.zsh = {
    enable = true;
    enableAutosuggestions = true;
    enableCompletion = true;
    enableSyntaxHighlighting = true;

    oh-my-zsh = {
      enable = true;
      plugins = [ "git" ];
      theme = "robbyrussell";
    };

    shellAliases = {
      dc = "docker compose";
      dcu = "docker compose up";
      dcd = "docker compose down";
      dcl = "docker compose logs";
      dclf = "docker compose logs -f";
      dcc = "docker compose cp";
      dci = "docker compose inspect";
      dce = "docker compose exec";
      dcr = "docker compose restart";

      k = "kubectl";
      kw = "kubectl -o wide";
      ky = "kubectl -o yaml";
      kj = "kubectl -o json";

      tf = "terraform";

      vi = "nvim";
      vim = "nvim";
      e = "nvim";

      gs = "git status -s";
      ga = "git add";
      gc = "git commit";
      gch = "git checkout";
      gb = "git branch";
      gp = "git pull";
      gpp = "git push";
      gl = "git log --pretty=oneline --abbrev-commit";
    };

    initExtra = ''
      license () {
        curl -L "api.github.com/licenses/$1" | jq -r .body > LICENSE
      }
    '';
  };

  programs.kitty = {
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
      background_opacity = "0.9";
      font_size = "12.0";
    };
    theme = "Catppuccin-Macchiato";
  };
}
