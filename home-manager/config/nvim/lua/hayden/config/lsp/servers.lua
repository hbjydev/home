local M = {}

function on_attach(client, bufnr)
  require'hayden.config.lsp.keymaps'.setup(client, bufnr)
end

function M.setup(servers, server_options)
  local lspconfig = require "lspconfig"
  local icons = require "hayden.config.icons"

  local servers = {
    "ansiblels",
    "bashls",
    "bufls",
    "clangd",
    "cssls",
    "dockerls",
    "eslint",
    "golangci_lint_ls",
    "gopls",
    "graphql",
    "html",
    "intelephense",
    "jsonls",
    "jsonnet_ls",
    "phan",
    "prismals",
    "pyright",
    "rnix",
    "sqls",
    "sumneko_lua",
    "tailwindcss",
    "terraformls",
    "tsserver",
    "volar",
    "yamlls",
  }

  for _, name in pairs(servers) do
    if name == "sumneko_lua" then
      require("neodev").setup {}
    end

    lspconfig[name].setup {
      on_attach = on_attach
    }
  end
end

return M
