return {
  -- The server is often called 'tsserver' in Mason, but configured as 'ts_ls' in Neovim
  cmd = { "typescript-language-server", "--stdio" },
  filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
  root_dir = require('lspconfig.util').root_pattern("tsconfig.json", "jsconfig.json", "package.json", ".git"),
  single_file_support = true,
  settings = {
    -- Example: Enable inlay hints (optional)
    typescript = {
      inlayHints = {
        includeInlayParameterNameHints = "all"
      }
    },
    javascript = {
      inlayHints = {
        includeInlayParameterNameHints = "all"
      }
    }
  }
}
