return {
    "kelly-lin/ranger.nvim",
    keys = {
        { "<leader>pv", function()
            require("ranger-nvim").open(true)
        end, { desc = "File explorer" }}
    },
    config = function()
        local ranger = require("ranger-nvim")
        ranger.setup({
            replace_netwr = true,
            enable_cmds = true,
        })
    end
}
