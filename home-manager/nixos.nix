{ self, config, lib, pkgs, ... }:

let
  sources = import ../nix/sources.nix;
in
{
  imports = [ ./home.nix ];

  home.file.".config/obs-studio/themes".source = (sources.catppuccin-obs + "/themes");

  gtk = import ./programs/gtk.nix { inherit pkgs; flk = self; };
}
