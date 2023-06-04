local opt = vim.opt
local g = vim.g

g.loaded_netwr = 1
g.loaded_netwrPlugin = 1

g.markdown_recommended_style = 0

opt.clipboard = "unnamedplus"

opt.nu = true
opt.relativenumber = true

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

opt.smartindent = true

opt.wrap = false

opt.swapfile = false
opt.backup = false

opt.hlsearch = false
opt.incsearch = true

opt.termguicolors = true

opt.scrolloff = 8 
opt.signcolumn = "yes"
opt.isfname:append("@-@")

opt.colorcolumn = "79"

opt.updatetime = 50

opt.undofile = true
opt.undolevels = 10000
opt.winminwidth = 4

if vim.fn.has("nvim-0.9.0") == 1 then
    opt.splitkeep = "screen"
    opt.shortmess:append({ C = true })
end
