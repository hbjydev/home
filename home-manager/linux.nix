{ config, pkgs, ... }:
{
  imports = [ ./home.nix ];

  home.username = "hayden";
  home.homeDirectory = "/home/hayden";
}
