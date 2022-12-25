{ config, pkgs, ... }:
{
  imports = [ ./home.nix ];

  home.username = "hayden";
  home.homeDirectory = "/home/hayden";

  home.packages = with pkgs; [ _1password-gui-beta ];

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
