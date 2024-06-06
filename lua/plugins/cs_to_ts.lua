return {
  {
    "markchristianlacap/cs_to_ts.nvim",
    keys = {
      {
        "<leader>lt",
        function()
          -- Use the plugin
          local converter = require "cs_to_ts"

          -- Get the selected text in visual mode
          local selectedText = converter.getVisualSelection()

          -- Convert the selected text to TypeScript interface
          local tsInterface, error = converter.convertToTypeScriptInterface(selectedText)

          -- Handle the result
          if not tsInterface then
            print("Error:", error)
          else
            vim.fn.setreg("+", tsInterface) -- Copy to system clipboard
          end
        end,
        desc = "Convert C# class from clipboard to TypeScript Interface.",
      },
    },
  },
}
