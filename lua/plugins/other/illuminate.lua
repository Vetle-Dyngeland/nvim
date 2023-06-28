return {
    "RRethy/vim-illuminate",
    config = function()
        local illuminate = require("illuminate")

        illuminate.configure({
            delay = 50,
            under_cursor = false,
            min_count_to_highlight = 2,
        })
    end
}
