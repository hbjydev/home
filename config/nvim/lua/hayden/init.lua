local M = {}

function M.setup()
  -- theme settings
  vim.g.catppuccin_flavour = "macchiato"
  require'catppuccin'.setup {
    flavour = "macchiato",
    integrations = {
      cmp = true,
      indent_blankline = {
        enabled = true,
        colored_indent_levels = true,
      },
      native_lsp = {
        enabled = true,
        virtual_text = {
          errors = { "italic" },
          hints = { "italic" },
          warnings = { "italic" },
          information = { "italic" },
        },
        underlines = {
          errors = { "underline" },
          hints = { "underline" },
          warnings = { "underline" },
          information = { "underline" },
        },
      },
      gitsigns = true,
      nvimtree = true,
      telescope = true,
    },
  }
  vim.cmd.colorscheme "catppuccin"

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
end

return M
