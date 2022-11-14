{ ... }:

{
  enable = true;

  matchBlocks."*".extraConfig = ''
    IdentityAgent ~/.1password/agent.sock
  '';
}
