require("config.lazy")
vim.cmd [[colorscheme unokai]]

-- Lua LSP configuration
vim.lsp.config("lua_ls", {
  -- Command and arguments to start the server.
  cmd = { "lua-language-server" },
  -- Filetypes to automatically attach to.
  filetypes = { "lua" },
  settings = {
    Lua = {
      diagnostics = {
        disable = { "missing-fields" },
      },
      globals = { "vim" }, -- Get the language server to recognize the `vim` global
    },
  },
})  -- <- Closing brace for lua_ls config

-- Go LSP configuration
vim.lsp.config("gopls", {
  -- Command and arguments to start the server.
  cmd = { "gopls" },
  -- Filetypes to automatically attach to.
  filetypes = { "go" },
  settings = {
    go = {
      diagnostics = {
        disable = { "missing-fields" },
      },
      globals = { "vim" }, -- Get the language server to recognize the `vim` global
    },
  },
})  -- <- Closing brace for gopls config

-- Enable language servers
vim.lsp.enable('lua_ls')
vim.lsp.enable('gopls')

-- General settings for tabs, indentation, and line numbers
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.softtabstop = 4
vim.opt.relativenumber = true
vim.opt.number = true

