return {
  {
    "neovim/nvim-lspconfig",
    event = "BufReadPre",
    config = function()
      local lspconfig = require("lspconfig")
      
      -- Lua LSP
      lspconfig.lua_ls.setup({
        settings = {
          Lua = {
            diagnostics = { disable = { "missing-fields" } },
            globals = { "vim" },
          },
        },
      })

      -- Go LSP
      lspconfig.gopls.setup({})

      -- JavaScript LSP (quick-lint-js)
      lspconfig.quick_lint_js.setup({
        cmd = { "quick-lint-js", "--lsp-server" },
        filetypes = { "javascript", "typescript", "js" },
      })
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",  -- lua_ls
        "gopls",                -- Go
        "quick-lint-js",        -- JavaScript
      }
    }
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "lua_ls", "gopls", "quick_lint_js" },
      automatic_installation = true,
    }
  }
}
