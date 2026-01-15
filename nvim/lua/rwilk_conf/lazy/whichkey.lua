return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    -- This helps the popup feel snappy
    delay = 300, 
    icons = {
      breadcrumb = "»",
      separator = "➜",
      group = "+",
    },
    win = {
      border = "rounded", -- Options: "none", "single", "double", "shadow", "rounded"
    },
  },
  config = function(_, opts)
    local wk = require("which-key")
    wk.setup(opts)
    
    -- Registering groups so they have nice labels
    wk.add({
      { "<leader>f", group = "Find (Telescope)" },
      { "<leader>e", group = "Explorer (NvimTree)" },
      { "<leader>g", group = "Git" },
      { "<leader>s", group = "Surround" },
      { "<leader>l", group = "LSP" },
      { "<leader>m", group = "Format" }
    })
  end,
  vim.keymap.set("n", "<leader>;", ":Alpha<CR>", { desc = "Home Dashboard" })
}
