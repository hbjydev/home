{ pkgs, ... }:

with pkgs; [
  awscli2
  azure-cli
  cachix
  cargo
  clang
  clang-tools
  cmake
  crc
  docker
  discord
  fd
  glab
  golangci-lint
  go-task
  jetbrains.datagrip
  jq
  k9s
  kubectl
  lazydocker
  niv
  neovim
  nodejs-18_x
  obsidian
  openshift
  operator-sdk
  postman
  pulumi
  python39Full
  python39Packages.pynvim
  python39Packages.setuptools
  ripgrep
  rustc
  rustfmt
  terraform
  todoist
  todoist-electron
  slides
  spotify
  virtualenv
  vistafonts
  unzip
  yarn
  zotero

  # fonts
  (nerdfonts.override { fonts = [ "FiraCode" ]; })
  open-sans
  inter

  # pandoc
  pandoc
  pandoc-plantuml-filter
  plantuml
  texlive.combined.scheme-full

  # language servers
  gopls
  nil
  nodePackages."@tailwindcss/language-server"
  nodePackages."@prisma/language-server"
  nodePackages."bash-language-server"
  nodePackages."dockerfile-language-server-nodejs"
  nodePackages."graphql-language-service-cli"
  nodePackages."intelephense"
  nodePackages."pyright"
  nodePackages."typescript"
  nodePackages."typescript-language-server"
  nodePackages."vscode-langservers-extracted"
  nodePackages."yaml-language-server"
  rust-analyzer
  rnix-lsp
  sumneko-lua-language-server
  golangci-lint-langserver
  terraform-ls
]
