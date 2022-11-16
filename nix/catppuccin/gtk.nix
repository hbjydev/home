{ lib, stdenv, fetchzip, pkgs, ... }:

stdenv.mkDerivation rec {
  pname = "catppuccin-gtk";
  version = "0.2.7";

  src = fetchzip {
    url = "https://github.com/catppuccin/gtk/releases/download/v-${version}/Catppuccin-Macchiato.zip";
    sha256 = "05vdk3iy46bahix2a5q593j011wsrn2x1a8m6811mpl2vp84kj6n";
    stripRoot = false;
  };

  propagatedUserEnvPkgs = with pkgs; [
    gnome.gnome-themes-extra
    gtk-engine-murrine
  ];

  installPhase = ''
    mkdir -p $out/share/themes/
    cp -r Catppuccin-Macchiato $out/share/themes
  '';

  meta = {
    description = "Soothing pastel theme for GTK3";
    homepage = "https://github.com/catppuccin/gtk";
    license = lib.licenses.gpl3;
    platforms = lib.platforms.unix;
    maintainers = [lib.maintainers.sioodmy];
  };
}
