return {
    {
        "Raimondi/delimitMate",
        config = function()
            vim.cmd [[ let delimitMate_expand_cr = 1 ]]
            vim.cmd [[ let delimitMate_expand_space = 1 ]]
            vim.cmd [[ let delimitMate_expand_inside_quotes = 1 ]]
            vim.cmd [[ let delimitMate_quotes = "\"" ]]
        end,
    }
}
