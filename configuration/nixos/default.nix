username:
{ nixpkgs, home-manager, overlays }:

nixpkgs.lib.nixosSystem {
  modules = [
    { nixpkgs.overlays = overlays; }

    ./hardware-amd.nix
    ./system.nix

    ./modules/1password.nix
    ./modules/boot.nix
    ./modules/networking.nix
    ./modules/nix.nix
    ./modules/ssh.nix
    ./modules/user.nix
    ./modules/sudo.nix
    ./modules/k3s.nix
    ./modules/podman.nix
    ./modules/docker.nix
    ./modules/gnome.nix
    ./modules/fonts.nix
    ./modules/sound.nix
    ./modules/libvirt.nix
    
    home-manager.nixosModules.home-manager
    {
      home-manager.useGlobalPkgs = true;
      home-manager.useUserPackages = true;
      home-manager.users."${username}" = import ../../home-manager/nixos.nix;
    }
  ];

  system = "x86_64-linux";
}
