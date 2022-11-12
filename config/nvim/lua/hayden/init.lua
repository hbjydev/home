local M = {}

function M.setup()
  require'hayden.defaults'.setup()
  require'hayden.keymaps'.setup()

  require'hayden.config.lsp'.setup()
  require'hayden.config.snip'.setup()

  require'hayden.config.autopairs'.setup()
  require'hayden.config.cmp'.setup()
  require'hayden.config.gitsigns'.setup()
  require'hayden.config.indentblankline'.setup()
  require'hayden.config.lualine'.setup()
  require'hayden.config.nvimtree'.setup()
  require'hayden.config.telescope'.setup()
  require'hayden.config.treesitter'.setup()

  require'catppuccin'.setup {
    flavour = "macchiato",
    integrations = {
      cmp = true,
      gitsigns = true,
      nvimtree = true,
      telescope = true,
    },
  }
  vim.cmd.colorscheme "catppuccin"
end

return M
