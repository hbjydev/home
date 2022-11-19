{ ... }:
{
  networking = {
    firewall.enable = false;
    hostName = "hbjy-pc";
    interfaces.eno1.useDHCP = true;
    networkmanager.enable = true;
    useDHCP = false;
  };
}
