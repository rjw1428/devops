local handlers = {
  function(server_name)
    require("lspconfig")[server_name].setup({
--      on_attach = on_attach,
    })
  end,
  ["ts_ls"] = function()
    require("lspconfig").ts_ls.setup({
      settings = {
        javascript = {
          inlayHints = {
            includeInlayEnumMemberValueHints = true,                      -- boolean;
            includeInlayFunctionLikeReturnTypeHints = true,               -- boolean;
            includeInlayFunctionParameterTypeHints = true,                -- boolean;
            includeInlayParameterNameHints = 'all',                       -- 'none' | 'literals' | 'all';
            includeInlayParameterNameHintsWhenArgumentMatchesName = true, -- boolean;
            includeInlayPropertyDeclarationTypeHints = true,              -- boolean;
            includeInlayVariableTypeHints = true,                         -- boolean;
            includeInlayVariableTypeHintsWhenTypeMatchesName = true,      -- boolean;
          },
        },
        typescript = {
          inlayHints = {
            includeInlayEnumMemberValueHints = true,                      -- boolean;
            includeInlayFunctionLikeReturnTypeHints = true,               -- boolean;
            includeInlayFunctionParameterTypeHints = true,                -- boolean;
            includeInlayParameterNameHints = 'all',                       -- 'none' | 'literals' | 'all';
            includeInlayParameterNameHintsWhenArgumentMatchesName = true, -- boolean;
            includeInlayPropertyDeclarationTypeHints = true,              -- boolean;
            includeInlayVariableTypeHints = true,                         -- boolean;
            includeInlayVariableTypeHintsWhenTypeMatchesName = true,      -- boolean;
          },
        },
      },
      -- on_attach = on_attach,
    })
  end,
}
return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
     {
       "williamboman/mason.nvim",
	  dependencies = {
	    "williamboman/mason-lspconfig.nvim",
	    "neovim/nvim-lspconfig",
	  },
       config = function()
       require("mason").setup()
       require("mason-lspconfig").setup({ handlers = handlers })
	end
     }
}
