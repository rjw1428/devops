return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" }, -- Load when you save a file
  cmd = { "ConformInfo" },
  keys = {
    {
      -- Manual format trigger
      "<leader>mp",
      function()
        require("conform").format({ async = true, lsp_fallback = true })
      end,
      mode = "",
      desc = "Format buffer",
    },
  },
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      -- You can run multiple formatters sequentially
      python = { "isort", "black" },
      -- Use a sub-list to run only the first available formatter
      javascript = { { "prettierd", "prettier" } },
      typescript = { { "prettierd", "prettier" } },
      javascriptreact = { { "prettierd", "prettier" } },
      typescriptreact = { { "prettierd", "prettier" } },
      css = { "prettier" },
      html = { "prettier" },
      json = { "prettier" },
    },
    -- This is the "Magic" part: Format on Save
    format_on_save = {
      timeout_ms = 500,
      lsp_fallback = true,
    },
  },
}
