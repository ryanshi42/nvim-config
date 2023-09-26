-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

local call = vim.call
local cmd = vim.cmd
local Plug = vim.fn["plug#"]
local PATH = ""

call("plug#begin", PATH)
Plug("Mofiqul/dracula.nvim")
Plug("junegunn/vim-easy-align")
Plug("preservim/nerdtree")
Plug("https://github.com/junegunn/vim-github-dashboard.git")

Plug("SirVer/ultisnips")
Plug("honza/vim-snippets")
Plug("neoclide/coc.nvim", { branch = "release" })
Plug("scrooloose/nerdtree", { on = "NERDTreeToggle" })

call("plug#end")
-- vim.cmd[[colorscheme dracula]]
--
--
vim.api.nvim_exec([[ autocmd VimEnter * NERDTree | wincmd p ]], false)
local set = vim.opt -- set options
set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4
