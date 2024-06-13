return {
  {
    dir = "~/dev/plugins/csharp-namespace.nvim",
    ft = "cs",
    dependencies = {
      "hrsh7th/nvim-cmp",
    },
    config = function()
      require("csharp-namespace").setup {}
      local cmp = require "cmp"
      local config = cmp.get_config()
      table.insert(config.sources, {
        name = "csharp-namespace",
        group_index = 1,
        priority = 10000,
      })
      cmp.setup(config)
    end,
  },
  {
    dir = "~/dev/plugins/cs-to-ts.nvim",
    keys = {
      {
        "<leader>lt",
        function()
          local cs_to_ts = require "cs-to-ts"
          local utils = require "cs-to-ts.utils"
          local code = utils.getSelected()
          print(code)
          local ts, error = cs_to_ts.convert(code)
          -- Handle the result
          if ts then
            vim.fn.setreg("+", ts) -- Copy to system clipboard
          else
            print("Error:", error)
          end
        end,
        desc = "Convert C# class from selected text to TypeScript.",
        mode = { "v" },
      },
    },
  },
  {
    "iabdelkareem/csharp.nvim",
    dependencies = {
      "Tastyep/structlog.nvim", -- Optional, but highly recommended for debugging
    },
    config = function() require("csharp").setup() end,
  },
}
