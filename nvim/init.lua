require("config.set") -- needs to be before lazy
require("config.remap")
require("config.lazy")

vim.cmd [[colorscheme desert]]

-- Lua LSP configuration
vim.lsp.config("lua_ls", {
  -- Command and arguments to start the server.
  cmd = { "lua-language-server" },
  filetypes = { "lua" },
  settings = {
    Lua = {
      diagnostics = {
        disable = { "missing-fields" },
      },
      globals = { "vim" },
    },
  },
})

-- Go LSP configuration
vim.lsp.config("gopls", {
  -- Command and arguments to start the server.
  cmd = { "gopls" },
  filetypes = { "go" },
  settings = {
    go = {
      diagnostics = {
        disable = { "missing-fields" },
      },
      globals = { "vim" }, 
    },
  },
})

-- Enable language servers
vim.lsp.enable('lua_ls')
vim.lsp.enable('gopls')

