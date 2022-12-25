{ config, pkgs, ... }:

let
  sources = import ../nix/sources.nix;
in
{
  home.stateVersion = "22.05";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  home.file.".background".source = ./config/background.jpeg;

  nixpkgs.config = import ./nixpkgs-config.nix;
  xdg.configFile."nixpkgs/config.nix".source = ./nixpkgs-config.nix;

  ##############################################################################

  # Packages that should be installed to the user profile.
  home.packages = import ./packages.nix { inherit pkgs; }; 

  home.file.".config/k9s/skin.yml".source = (sources.catppuccin-k9s + "/dist/macchiato.yml");

  home.sessionVariables = {
    EDITOR = "nvim";
    LANG = "en_GB.UTF-8";
    LC_ALL = "en_GB.UTF-8";
    LC_CTYPE = "en_GB.UTF-8";
    PATH = "$PATH:$GOPATH/bin";
    NIXPKGS_ALLOW_UNFREE = "1";
  };

  # Configure programs
  programs.direnv = import ./programs/direnv.nix {};
  programs.chromium = import ./programs/chromium.nix { inherit pkgs; };
  programs.git = import ./programs/git.nix { inherit pkgs; };
  programs.gh = import ./programs/gh.nix {};
  programs.go = import ./programs/go.nix {};
  programs.kitty = import ./programs/kitty.nix {};
  programs.neovim = import ./programs/nvim.nix { inherit pkgs; };
  programs.nnn = import ./programs/nnn.nix {};
  programs.ssh = import ./programs/ssh.nix {};
  programs.tmux = import ./programs/tmux.nix { inherit pkgs; };
  programs.zsh = import ./programs/zsh.nix {};
}
