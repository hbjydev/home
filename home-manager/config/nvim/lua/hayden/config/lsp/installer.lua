local M = {}

function M.setup(servers, server_options)
  local lspconfig = require "lspconfig"
  local icons = require "hayden.config.icons"

  lspconfig.ansiblels.setup {}
  lspconfig.bashls.setup {}
  lspconfig.bufls.setup {}
  lspconfig.cssls.setup {}
  lspconfig.cssmodules_ls.setup {}
  lspconfig.denols.setup {}
  lspconfig.dockerls.setup {}
  lspconfig.eslint.setup {}
  lspconfig.golangci_lint_ls.setup {}
  lspconfig.gopls.setup {}
  lspconfig.graphql.setup {}
  lspconfig.html.setup {}
  lspconfig.intelephense.setup {}
  lspconfig.jsonls.setup {}
  lspconfig.jsonnet_ls.setup {}
  lspconfig.phan.setup {}
  lspconfig.prismals.setup {}
  lspconfig.pyright.setup {}
  lspconfig.rnix.setup {}
  lspconfig.sqls.setup {}
  lspconfig.tailwindcss.setup {}
  lspconfig.terraformls.setup {}
  lspconfig.tsserver.setup {}
  lspconfig.volar.setup {}

  require("neodev").setup {}
  lspconfig.sumneko_lua.setup {}
end

return M
