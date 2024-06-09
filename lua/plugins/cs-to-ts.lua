return {
  {
    -- "markchristianlacap/cs_to_ts.nvim",
    dir = "~/dev/plugins/cs-to-ts.nvim",
    -- enable on visual mode
    keys = {
      {
        "<leader>lt",
        function()
          -- Use the plugin
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
}
