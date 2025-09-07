-- Install nvim-lspconfig
return {
  "neovim/nvim-lspconfig",
  config = function()
    local lspconfig = require('lspconfig')

    lspconfig.lua_ls.setup({
      cmd = { 'lua-language-server' },
      filetypes = { 'lua' },
      settings = {
        Lua = {
          runtime = {
            version = 'LuaJIT',
          },
        },
      },
    })
  end
}

