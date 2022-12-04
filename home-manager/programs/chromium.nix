{ pkgs, ... }:
{
  enable = true;
  package = pkgs.microsoft-edge;

  extensions = [
    { id = "aeblfdkhhhdcdjpifhhbdiojplfjncoa"; } # 1Password
    { id = "eimadpbcbfnmbkopoojfekhnkhdbieeh"; } # Dark Reader
    { id = "ajopnjidmegmdimjlfnijceegpefgped"; } # BetterTTV
    { id = "bmnlcjabgnpnenekpadlanbbkooimhnj"; } # Honey
    { id = "hfapbcheiepjppjbnkphkmegjlipojba"; } # Klarna
    { id = "fmkadmapgofadopljbjfkapdkoienihi"; } # React Devtools
    { id = "bkkjeefjfjcfdfifddmkdmcpmaakmelp"; } # truffle.tv
    { id = "nhdogjmejiglipccpnnnanhbledajbpd"; } # Vue Devtools
    { id = "ekhagklcjbdpajgpjgmbionohlpdbjgc"; } # Zotero Connector
    { id = "ldjkgaaoikpmhmkelcgkgacicjfbofhh"; } # Instapaper
    { id = "cmpdlhmnmjhihmcfnigoememnffkimlk"; } # Catppuccin Macchiato
    { id = "clngdbkpkpeebahjckkjfobafhncgmne"; } # Stylus
  ];
}
