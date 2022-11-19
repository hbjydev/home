{ pkgs, ... }:
{
  virtualisation = {
    podman = {
      enable = true;
      extraPackages = with pkgs; [ zfs ];
    };
  };
}
