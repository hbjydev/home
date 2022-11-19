{ pkgs, ... }:
{
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
    settings = {
      auto-optimise-store = true;
      trusted-users = [ "root" "hayden" ];
    };
  };

  nixpkgs = {
    config = {
      allowUnfree = true;
      pulseaudio = true;
      permittedInsecurePackages = [
        "electron-15.5.2"
      ];
    };
    overlays = [ (import ../../../home-manager/overlays.nix) ];
  };
}
