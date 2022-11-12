{ config, pkgs, overlays, ... }:

{
  nixpkgs.overlays = overlays;

  home.username = "hayden";
  home.homeDirectory = "/home/hayden";
  home.stateVersion = "22.05";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  nixpkgs.config = import ./nixpkgs-config.nix;
  xdg.configFile."nixpkgs/config.nix".source = ./nixpkgs-config.nix;

  ##############################################################################

  # Packages that should be installed to the user profile.
  home.packages = import ./packages.nix { inherit pkgs; }; 

  home.file.".config/k8s/skin.yaml".source = ./config/k9s/skin.yaml;
  home.file.".config/nvim".source = ./config/nvim/.;

  home.sessionVariables = {
    EDITOR = "nvim";
    LANG = "en_GB.UTF-8";
    LC_ALL = "en_GB.UTF-8";
    LC_CTYPE = "en_GB.UTF-8";
    PATH = "$PATH:$GOPATH/bin";
    NIXPKGS_ALLOW_UNFREE = "1";
  };

  # Configure programs
  programs.git = import ./programs/git.nix { inherit pkgs; };
  programs.gh = import ./programs/gh.nix {};
  programs.zsh = import ./programs/zsh.nix {};
  programs.kitty = import ./programs/kitty.nix {};
  programs.neovim = import ./programs/nvim.nix { inherit pkgs; };
}
