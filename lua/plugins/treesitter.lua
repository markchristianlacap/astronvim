if vim.g.vscode then return {} end -- don't do anything in non-vscode instances

-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      "vue",
      "typescript",
      -- add more arguments for adding more treesitter parsers
    },
  },
}
