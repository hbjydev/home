{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [ k3s ];

  services.k3s = {
    enable = true;
    role = "server";
  };
}
