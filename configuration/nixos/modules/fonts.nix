{ pkgs, ... }:
{
  fonts = {
    fontconfig = {
      defaultFonts = {
        monospace = [ "Fira Code Regular Nerd Font Complete Mono" ];
      };
      enable = true;
    };
    fonts = with pkgs; [
      (nerdfonts.override { fonts = [ "FiraCode" ]; })
      open-sans
    ];
  };
}
