return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup({
      view = {
        width = 30,
        side = "left",
      },
      renderer = {
        group_empty = true, -- Collapses empty folders into one line
        icons = {
          show = {
            file = true,
            folder = true,
            folder_arrow = true,
            git = true,
          },
        },
      },
      filters = {
        dotfiles = false, -- Set to true to hide .env, .git, etc.
      },
    })

    -- Set keymap to toggle the tree
    vim.keymap.set("n", "<leader>ee", ":NvimTreeToggle<CR>", { desc = "Toggle File Explorer" })
    vim.keymap.set("n", "<leader>ef", ":NvimTreeFindFile<CR>", { desc = "Find current file in Tree" })
  end,
}
