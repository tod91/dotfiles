return {
  -- Install nvim-treesitter
  {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',  -- Automatically run TSUpdate after installation
    config = function()
      -- Basic Treesitter Setup
      require'nvim-treesitter.configs'.setup {
        ensure_installed = {"lua", "go", "c", "javascript"},  -- Automatically install parsers for all supported languages
        highlight = {
          enable = true,            -- Enable Treesitter syntax highlighting
          additional_vim_regex_highlighting = false, -- Disable traditional vim regex highlighting
        },
        indent = {
          enable = true,            -- Enable Treesitter-based indentation
        },
        autopairs = {
          enable = true,            -- Enable autopairs using Treesitter
        },
      }
    end
  }
}

