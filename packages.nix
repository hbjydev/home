{ pkgs, ... }:

with pkgs; [
  awscli2
  azure-cli
  cargo
  direnv
  docker
  fd
  glab
  #jetbrains.datagrip # TODO: resolve issue with unfree licenses
  jq
  k9s
  kubectl
  lazydocker
  niv
  nodejs-18_x
  #postman
  #pulumi-bin
  python3Packages.pynvim
  python3Full
  ripgrep
  rustc
  rustfmt
  terraform
  virtualenv
  yarn

  gopls
  nil
  nodePackages."@prisma/language-server"
  nodePackages."bash-language-server"
  nodePackages."dockerfile-language-server-nodejs"
  nodePackages."graphql-language-service-cli"
  nodePackages."pyright"
  nodePackages."typescript"
  nodePackages."typescript-language-server"
  nodePackages."vscode-langservers-extracted"
  nodePackages."yaml-language-server"
  rust-analyzer
  sumneko-lua-language-server
  terraform-ls
]