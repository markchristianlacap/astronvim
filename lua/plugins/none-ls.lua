if vim.g.vscode then return {} end -- don't do anything in non-vscode instances

-- Customize None-ls sources

---@type LazySpec
return {
  "nvimtools/none-ls.nvim",
  dependencies = { "mason.nvim", "davidmh/cspell.nvim" },
  opts = function(_, config)
    -- config variable is the default configuration table for the setup function call
    local null_ls = require "null-ls"
    local cspell = require "cspell"
    -- Check supported formatters and linters
    -- https://github.com/nvimtools/none-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/nvimtools/none-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
    config.sources = {
      -- Set a formatter
      null_ls.builtins.formatting.stylua,
      null_ls.builtins.completion.spell,
      -- cspell
      cspell.diagnostics.with {
        -- Set the severity to HINT for unknown words
        diagnostics_postprocess = function(diagnostic) diagnostic.severity = vim.diagnostic.severity["HINT"] end,
      },
      cspell.code_actions,
      -- null_ls.builtins.formatting.prettier,
    }
    return config -- return final config table
  end,
}
