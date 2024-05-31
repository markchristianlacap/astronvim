if vim.g.vscode then return {} end -- don't do anything in non-vscode instances
return {
  {
    "folke/tokyonight.nvim",
    opts = {
      style = "moon",
      transparent = true,
    },
  },
}
