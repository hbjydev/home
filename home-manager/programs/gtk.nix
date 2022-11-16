{ pkgs, ... }:
{
  enable = true;
  theme = {
    name = "Catppuccin-Macchiato";
    package = pkgs.catppuccin-gtk-theme;
  };

  gtk3.extraConfig = {
    gtk-xft-antialias = 1;
    gtk-xft-hinting = 1;
    gtk-xft-hintstyle = "hintslight";
    gtk-xft-rgba = "rgb";
  };

  gtk2.extraConfig = ''
    gtk-xft-antialias=1
    gtk-xft-hinting=1
    gtk-xft-hintstyle="hintslight"
    gtk-xft-rgba="rgb"
  '';
}
