return {
    "romgrk/barbar.nvim",
    dependencies = {
        "lewis6991/gitsigns.nvim",
        "nvim-tree/nvim-web-devicons",
    },
    init = function() vim.g.barbar_auto_setup = false end,
    config = function()
        require("barbar").setup({
            animation = false,
            auto_hide = true,
            clickable = false,
            icons = {
                diagnostics = {
                    [vim.diagnostic.severity.ERROR] = { enabled = true },
                    [vim.diagnostic.severity.WARN] = { enabled = true },
                    [vim.diagnostic.severity.INFO] = { enabled = true },
                },
                seperator_at_end = false,
            },
            maximum_length = 15,
            sidebar_filetypes = {
                NvimTree = false,
            },
            
        })
    end
}
