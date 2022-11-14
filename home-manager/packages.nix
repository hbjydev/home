{ pkgs, ... }:

with pkgs; [
  _1password
  _1password-gui-beta
  awscli2
  azure-cli
  cargo
  docker
  discord
  fd
  glab
  go-task
  jetbrains.datagrip # TODO: resolve issue with unfree licenses
  jq
  k9s
  kubectl
  lazydocker
  niv
  nodejs-18_x
  obsidian
  operator-sdk
  postman
  pulumi-bin
  python3Packages.pynvim
  python3Full
  ripgrep
  rustc
  rustfmt
  terraform
  todoist
  todoist-electron
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
