return {
    "tamago324/lir.nvim",
    dependencies = {
        "tamago324/lir-git-status.nvim",
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        local actions = require("lir.actions")
        local clipboard = require("lir.clipboard.actions")

        require("lir").setup({
            show_hidden_files = true,
            devicons = {
                enable = true,
                highlight_dirname = true,
            },
            mappings = {
                ["l"] = actions.edit,
                ["s"] = actions.split,
                ["S"] = actions.vsplit,

                ["h"] = actions.up,
                ["q"] = actions.quit,

                ["d"] = actions.delete,
                ["@"] = actions.cd,
                ["a"] = actions.newfile,
                ["A"] = actions.mkdir,
                ["r"] = actions.rename,
                ["Y"] = actions.yank_path,

                ["c"] = clipboard.copy,
                ["x"] = clipboard.cut,
                ["p"] = clipboard.paste,
            },
        })

        local map = vim.keymap.set

        map("n", "<leader>pv", "<cmd>e .<cr>", { desc = "File explorer" })
        map("n", "<leader>pt", "<cmd>e pwd<cr>", { desc = "File explorer in file dir" })

        require("lir.git_status").setup({
            show_ignored = true,
        })
    end
}
