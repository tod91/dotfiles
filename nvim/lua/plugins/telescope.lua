return {
  {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} },
    config = function()
      local telescope = require('telescope')

      telescope.setup({
        defaults = {
          prompt_position = "top", -- Position of the prompt
          mappings = {
            i = {
              ["<C-u>"] = false,
              ["<C-d>"] = false,
            },
          },
        },
      })

      -- Key mappings for launching Telescope
      vim.api.nvim_set_keymap('n', '<leader>ff', "<cmd>Telescope find_files<cr>", { noremap = true })
      vim.api.nvim_set_keymap('n', '<leader>fg', "<cmd>Telescope live_grep<cr>", { noremap = true })
      vim.api.nvim_set_keymap('n', '<leader>fb', "<cmd>Telescope buffers<cr>", { noremap = true })
    end
  }
}

