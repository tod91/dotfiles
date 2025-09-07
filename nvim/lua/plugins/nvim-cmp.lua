return {
  {
    "hrsh7th/nvim-cmp",
    version = false,  -- Last release is too old
    event = "InsertEnter",  -- Lazy load on InsertEnter event
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
    },
    config = function()
      local cmp = require("cmp")

      -- nvim-cmp setup
      cmp.setup({
        snippet = {
          expand = function(args)
            -- Expand snippets using LuaSnip
            require("luasnip").lsp_expand(args.body)
          end,
        },
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
        mapping = {
          ["<C-b>"] = cmp.mapping.scroll_docs(-4),  -- Scroll docs up
          ["<C-f>"] = cmp.mapping.scroll_docs(4),   -- Scroll docs down
          ["<C-Space>"] = cmp.mapping.complete(),   -- Trigger completion
          ["<C-e>"] = cmp.mapping.abort(),          -- Abort completion
          ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Confirm completion
        },
        sources = cmp.config.sources({
          { name = "nvim_lsp" },   -- LSP completion source
          { name = "vsnip" },      -- VSnip completion source
          { name = "luasnip" },    -- LuaSnip completion source
        }, {
          { name = "buffer" },     -- Buffer completion source
        }),
      })
    end,
  }
}

