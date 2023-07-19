return {
    "kelly-lin/ranger.nvim",
    config = function()
        local ranger = require("ranger-nvim")
        ranger.setup({
            replace_netwr = true,
            enable_cmds = true,
        })

        local map = vim.keymap.set

        map("n", "<leader>pv", function()
            require("ranger-nvim").open(true)
        end, { desc = "File explorer" })
    end
}
