{ config, pkgs, ... }:

{
  imports = [ ];

  boot.kernelPackages = pkgs.linuxPackages_latest;
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.efi.efiSysMountPoint = "/boot/efi";

  fonts = {
    fontconfig = {
      defaultFonts = {
        monospace = [ "Fira Code Regular Nerd Font Complete Mono" ];
      };
      enable = true;
    };
    fonts = with pkgs; [ (nerdfonts.override { fonts = [ "FiraCode" ]; }) ];
  };

  environment.systemPackages = with pkgs; [
    curl
  ];


  environment.pathsToLink = [ "/libexec" "/share/zsh" ];

  hardware.opengl.enable = true;

  networking = {
    firewall.enable = false;
    hostName = "hbjy-pc";
    interfaces.eno1.useDHCP = true;
    networkmanager.enable = true;
    useDHCP = false;
  };

  nix = {
    extraOptions = ''
      experimental-features = nix-command flakes
      keep-outputs = true
      keep-derivations = true
      warn-dirty = false
    '';
    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 7d";
    };
    package = pkgs.nixUnstable;
    settings = { auto-optimise-store = true; };
  };

  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.pulseaudio = true;
  nixpkgs.config.permittedInsecurePackages = [
    "electron-15.5.2"
  ];
  nixpkgs.overlays = [ (import ../../home-manager/overlays.nix) ];

  programs.dconf.enable = true;
  programs.geary.enable = true;

  security.sudo = {
    enable = true;
    wheelNeedsPassword = false;
  };

  services.logind.extraConfig = ''
    RuntimeDirectorySize=20G
  '';

  services.openssh.enable = true;
  services.openssh.passwordAuthentication = false;
  services.openssh.permitRootLogin = "no";

  services.xserver = {
    enable = true;
    layout = "gb";
    displayManager.gdm.enable = true;
    desktopManager.gnome.enable = true;
  };

  sound.enable = true;
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    #jack.enable = true;

    # use the example session manager (no others are packaged yet so this is enabled by default,
    # no need to redefine it in your config for now)
    #media-session.enable = true;
  };

  system.stateVersion = "22.05";

  time.timeZone = "Europe/London";
  i18n.defaultLocale = "en_GB.utf8";

  users.mutableUsers = true;
  users.users.hayden = {
    extraGroups = [ "audio" "docker" "networkmanager" "wheel" ];
    home = "/home/hayden";
    isNormalUser = true;
    openssh.authorizedKeys.keys = [];
    shell = pkgs.zsh;
  };

  virtualisation = {
    docker.enable = true;

    podman = {
      enable = true;
      extraPackages = with pkgs; [ zfs ];
    };
  };
}
