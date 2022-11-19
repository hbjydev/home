{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    curl
    obs-studio
    linuxPackages.v4l2loopback
    gnomeExtensions.tactile
  ];

  environment.pathsToLink = [ "/libexec" "/share/zsh" ];

  hardware.opengl.enable = true;

  services.logind.extraConfig = ''
    RuntimeDirectorySize=20G
  '';

  services.xserver.layout = "gb";

  security.rtkit.enable = true;

  system.stateVersion = "22.05";

  time.timeZone = "Europe/London";
  i18n.defaultLocale = "en_GB.utf8";
}
