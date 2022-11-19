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
      ];

      home = "/home/hayden";
      isNormalUser = true;
      openssh.authorizedKeys.keys = [ ];
      shell = pkgs.zsh;
    };
  };
}
