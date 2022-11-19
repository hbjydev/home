{ pkgs, ... }:
{
  services = {
    xserver = {  
      enable = true;
      displayManager.gdm.enable = true;
      desktopManager.gnome.enable = true;
    };

    gnome = {
      gnome-initial-setup.enable = false;
    };

    udev.packages = with pkgs; [ gnome.gnome-settings-daemon ];
  };

  programs.dconf.enable = true;

  environment = {
    systemPackages = with pkgs; [ gnome.dconf-editor ];

    gnome.excludePackages = with pkgs; [
      gnome-connections
      gnome-console
      gnome-photos
      gnome-tour
      gnome.adwaita-icon-theme
      gnome.epiphany
      gnome.geary
      gnome.gnome-backgrounds
      gnome.gnome-calendar
      gnome.gnome-characters
      gnome.gnome-clocks
      gnome.gnome-contacts
      gnome.gnome-font-viewer
      gnome.gnome-logs
      gnome.gnome-maps
      gnome.gnome-music
      gnome.gnome-screenshot
      gnome.gnome-themes-extra
      gnome.gnome-weather
      gnome.simple-scan
      gnome.totem
      gnome.yelp
      orca
    ];
  };
}
