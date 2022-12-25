{ self, config, lib, pkgs, ... }:

let
  sources = import ../nix/sources.nix;
in
{
  imports = [ ./home.nix ];

  home.file.".config/obs-studio/themes".source = (sources.catppuccin-obs + "/themes");

  home.packages = with pkgs; [
    discord
    jetbrains.datagrip
    postman
    spotify
    zotero

    # fonts
    (nerdfonts.override { fonts = [ "FiraCode" ]; })
    open-sans
    inter
  ];

  gtk = import ./programs/gtk.nix { inherit pkgs; flk = self; };

  dconf =
    let
      bgPath = "/home/hayden/.background";
    in
    {
      settings = {
        "org/gnome/desktop/background" = {
          "picture-uri" = bgPath;
        };
        "org/gnome/desktop/screensaver" = {
          "picture-uri" = bgPath;
        };
      };
    };

  fonts.fontconfig.enable = true;

  programs.chromium.enable = true;
}
