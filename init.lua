-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

local call = vim.call
local cmd = vim.cmd
local Plug = vim.fn["plug#"]
local PATH = "~/.config/nvim/plugged"

call("plug#begin", PATH)

-- Dracula NVim
Plug("Mofiqul/dracula.nvim")

-- Vim Easy Align
Plug("junegunn/vim-easy-align")

-- GitHub Dashboard
Plug("https://github.com/junegunn/vim-github-dashboard.git")

-- Autocomplete Code from small Snippets
Plug("SirVer/ultisnips")
Plug("honza/vim-snippets")

-- Intellisense
Plug("neoclide/coc.nvim", { branch = "release" })

-- Directory Tree
Plug("scrooloose/nerdtree", { on = "NERDTreeToggle" })

-- Status Bar
Plug("vim-airline/vim-airline")

-- Fuzzy Finder
Plug("nvim-lua/plenary.nvim")
Plug("nvim-telescope/telescope.nvim", { tag = "0.1.3" })

-- Git Integration
Plug("tpope/vim-fugitive")

call("plug#end")

-- vim.cmd[[colorscheme dracula]]
--
--
vim.api.nvim_exec([[ autocmd VimEnter * NERDTree | wincmd p ]], false)
local set = vim.opt -- set options
set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4
