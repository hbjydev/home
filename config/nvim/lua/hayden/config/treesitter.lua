local M = {}

function M.setup()
  require("nvim-treesitter.configs").setup {
    highlight = {
      enable = true,
    },

    rainbow = {
      enable = true,
      extended_mode = true,
      max_file_lines = nil,
    },

    indent = { enable = true, disable = { "python", "java", "rust", "lua" } },

    autotag = {
      enable = true,
    }
  }
end

return M
