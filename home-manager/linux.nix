{ config, pkgs, ... }:
{
  imports = [ ./home.nix ];

  home.username = "hayden";
  home.homeDirectory = "/home/hayden";

  home.packages = with pkgs; [ _1password-gui-beta ];
}
