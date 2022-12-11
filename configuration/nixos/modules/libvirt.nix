{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    (stdenv.mkDerivation {
      name = "virtiofsd-link";
      buildCommand = ''
        mkdir -p $out/bin
        ln -s ${qemu}/libexec/virtiofsd $out/bin/
      '';
    })
    virtiofsd
  ];

  virtualisation.libvirtd = {
    enable = true;
    qemu = {
      runAsRoot = false;
    };
  };
}
