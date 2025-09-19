-- set <leader> to space
vim.g.mapleader = " "

-- set line and relative line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- set tabstop
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true 

-- Indenting correctly after { etc
vim.opt.smartindent = true

-- Copy indent from current line when starting new line
vim.opt.autoindent = true

-- no need for swapfiles and backups
vim.opt.swapfile = false
vim.opt.backup = false

-- Better completion experience
vim.opt.completeopt = { "menuone", "noselect" }

-- leave highlighting when searching
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- enable 24-bit color
vim.opt.termguicolors = true

-- enable scrolling with no less than 8 lines
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

-- fast update time
vim.opt.updatetime = 50

--vim.opt.colorcolumn = "80"
vim.opt.guicursor = "n-v-c-i:ver25"

-- Highlight yank
vim.api.nvim_create_autocmd("textyankpost", {
	group = vim.api.nvim_create_augroup("highlight_yank", { clear = true }),
	pattern = "*",
	desc = "highlight selection on yank",
	callback = function()
		vim.highlight.on_yank({ timeout = 200, visual = true })
	end,
})

-- bordered popups
vim.opt.winborder = "rounded"

-- Diagnosics inline
vim.diagnostic.config({ virtual_text = true })

