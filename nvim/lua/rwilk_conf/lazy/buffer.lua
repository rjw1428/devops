return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  opts = {
    termguicolors = true
  },
  config = function()
    require("bufferline").setup({
      options = {
        mode = 'tabs',
        hover = {
          enabled = true,
          delay = 150,
          reveal = {'close'}
        }
      }
    })
  end,
}
