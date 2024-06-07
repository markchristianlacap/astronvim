return {
  {
    "markchristianlacap/cs_to_ts.nvim",
    keys = {
      {
        "<leader>lt",
        function()
          -- Use the plugin
          local converter = require "cs_to_ts"

          -- get text from clipboard
          local clipboard = vim.fn.getreg "+"

          -- Convert the text to TypeScript
          local ts, error = converter.convert(clipboard)

          -- Handle the result
          if ts then
            vim.fn.setreg("+", ts) -- Copy to system clipboard
          else
            print("Error:", error)
          end
        end,
        desc = "Convert C# class from clipboard to TypeScript.",
        mode = { "n" },
      },
      {
        "<leader>lt",
        function()
          -- Use the plugin
          local converter = require "cs_to_ts"

          -- Get the selected text in visual mode
          local selectedText = converter.getSelectedText()

          -- Convert the selected text to TypeScript
          local ts, error = converter.convert(selectedText)

          -- Handle the result
          if ts then
            vim.fn.setreg("+", ts) -- Copy to system clipboard
          else
            print("Error:", error)
          end
        end,
        desc = "Convert C# class from selected to TypeScript.",
        mode = { "v" },
      },
    },
  },
}
