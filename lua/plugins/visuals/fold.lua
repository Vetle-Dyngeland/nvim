return {
    "anuvyklack/pretty-fold.nvim",
    config = function()
        local pretty_fold = require("pretty-fold")

        pretty_fold.setup({
            keep_indentation = false,
            fill_char = "━",
            sections = {
                left = {
                    "━ ", function() return string.rep("*", vim.v.foldlevel) end, " ━┫", "content", " : ",
                    "number_of_folded_lines", " ┣",
                },
                right = {
                    ""
                }
            }
        })
    end
}
