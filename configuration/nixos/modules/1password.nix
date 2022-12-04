{ pkgs, ... }:
{
  programs._1password-gui = {
    enable = true;

    polkitPolicyOwners = [ "hayden" ];

    package = pkgs._1password-gui-beta;
  };
}
