return {
  "neovim/nvim-lspconfig",
  version = "*", -- remove after they fix ESLint
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },

  config = function()
    -- 1. Initialize Mason
      require("mason").setup()

      -- 2. Define the servers we want
      local servers = {
        ts_ls = {},     -- TypeScript/JS
        pyright = {},   -- Python
        tailwindcss = {},
        html = {},
        cssls = {},
      }

      -- 3. Ensure they are installed
      require("mason-lspconfig").setup({
        ensure_installed = vim.tbl_keys(servers),
      })

      local on_attach = function(_, bufnr)
        local opts = { buffer = bufnr, remap = false }

        -- Let's define our first few maps:
        vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
        vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)

        local capabilities = require('cmp_nvim_lsp').default_capabilities()
        capabilities.textDocument.foldingRange = {
          dynamicRegistration = false,
          lineFoldingOnly = true
        }
        -- 4. Setup each server via lspconfig
        local lspconfig = require("lspconfig")
        for server, config in pairs(servers) do
          config.on_attach = on_attach
          config.capabilities = capabilities
          
          lspconfig[server].setup(config)
        end
      end

  end
}
