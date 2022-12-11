{ pkgs, ... }:
{
  users = {
    mutableUsers = true;
    users.hayden = {
      extraGroups = [
        "audio"
        "docker"
        "networkmanager"
        "wheel"
        "qemu-libvirtd"
        "libvirtd"
      ];

      home = "/home/hayden";
      isNormalUser = true;
      openssh.authorizedKeys.keys = [ ];
      shell = pkgs.zsh;
    };
  };
}
