return {
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" }, -- Recognize vim global
      },
      workspace = {
        -- Make the server aware of Neovim's runtime files
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false,
      },
      telemetry = { enable = false },
    },
  },
}
