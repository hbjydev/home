{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    crc
    curl
    obs-studio
    linuxPackages.v4l2loopback
    gnomeExtensions.tactile
    minecraft
  ];

  environment.pathsToLink = [ "/libexec" "/share/zsh" ];

  hardware.opengl.enable = true;

  services.logind.extraConfig = ''
    RuntimeDirectorySize=20G
  '';

  services.xserver.layout = "gb";
  hardware.opentabletdriver.enable = true;

  security.rtkit.enable = true;

  system.stateVersion = "22.05";

  time.timeZone = "Europe/London";
  i18n.defaultLocale = "en_GB.utf8";

  programs.steam.enable = true;
}
