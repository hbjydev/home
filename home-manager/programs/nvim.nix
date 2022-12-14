{ pkgs, ... }:
let
  parsers = pkgs.tree-sitter.withPlugins (_: pkgs.tree-sitter.allGrammars);
in {
  enable = false;
  # package = pkgs.neovim-nightly;

  viAlias = true;
  vimAlias = true;
  withNodeJs = true;

  plugins = with pkgs; [
    vimPlugins.plenary-nvim
    vimPlugins.catppuccin-nvim
    vimPlugins.nvim-colorizer-lua
    vimPlugins.gitsigns-nvim
    vimPlugins.indent-blankline-nvim
    vimPlugins.undotree
    vimPlugins.nvim-web-devicons
    vimPlugins.lualine-nvim
    vimPlugins.nvim-tree-lua
    vimPlugins.nvim-autopairs
    vimPlugins.editorconfig-nvim

    # luasnip & family
    vimPlugins.luasnip
    vimPlugins.friendly-snippets

    # lsp & family
    vimPlugins.nvim-lspconfig
    vimPlugins.neodev-nvim
    vimPlugins.vim-illuminate
    vimPlugins.null-ls-nvim
    vimPlugins.lspkind-nvim
    vimPlugins.fidget-nvim
    vimPlugins.SchemaStore-nvim
    vimPlugins.nvim-navic
    vimPlugins.nvim-cmp
    vimPlugins.cmp-buffer
    vimPlugins.cmp-path
    vimPlugins.cmp-nvim-lua
    vimPlugins.cmp-treesitter
    vimPlugins.cmp_luasnip
    vimPlugins.cmp-nvim-lsp
    vimPlugins.trouble-nvim

    # treesitter & family
    vimPlugins.nvim-treesitter.withAllGrammars
    vimPlugins.nvim-treesitter-textobjects
    vimPlugins.nvim-treesitter-context
    vimPlugins.nvim-ts-context-commentstring
    vimPlugins.nvim-ts-autotag
    vimPlugins.nvim-ts-rainbow

    # telescope & family
    vimPlugins.telescope-nvim
    vimPlugins.popup-nvim
    vimPlugins.telescope-symbols-nvim

    # my configuration
    customVim.hayden
  ];

  extraConfig = ''
    lua << EOF
      vim.opt.runtimepath:append("${parsers}")
      require 'hayden'.setup()
    EOF
  '';
}
