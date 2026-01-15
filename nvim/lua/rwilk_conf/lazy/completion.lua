return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp", -- Tells cmp how to talk to LSPs
      "L3MON4D3/LuaSnip",     -- The snippet engine
      "saadparwaiz1/cmp_luasnip", -- The bridge between the two
    },
    config = function()
      local cmp = require("cmp")
      cmp.setup({
        snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body)
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-Space>"] = cmp.mapping.complete(), -- Trigger menu
          ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Confirm selection
        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "luasnip" },
        }),
      })
    end,
  }
}
