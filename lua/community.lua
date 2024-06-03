-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  -- -- import/override with your plugins folder
  { import = "astrocommunity.recipes.vscode" },
  { import = "astrocommunity.completion.codeium-vim" },
  { import = "astrocommunity.diagnostics.trouble-nvim" },
  { import = "astrocommunity.color.transparent-nvim" },
  { import = "astrocommunity.recipes.vscode-icons" },
  { import = "astrocommunity.motion.mini-move" },
  { import = "astrocommunity.motion.flash-nvim" },
  { import = "astrocommunity.motion.harpoon" },
  --  LSP: Configuration
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.cpp" },
  { import = "astrocommunity.pack.docker" },
  { import = "astrocommunity.pack.fish" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.cs" },
}
