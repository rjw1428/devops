return {
  "zaldih/themery.nvim",
  lazy = false,
  config = function()
    require("themery").setup({
      themes = { 
        "tokyonight", 
        "catppuccin", 
        "kanagawa", 
        "gruvbox", 
        "rose-pine" 
      }, -- Add the names of themes you've installed
      livePreview = true,
    })
    
    -- Set a keymap to open the switcher
    vim.keymap.set("n", "<leader>th", ":Themery<CR>", { silent = true })
  end
}
