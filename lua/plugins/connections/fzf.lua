return {
    "junegunn/fzf",
    "junegunn/fzf.vim",
    {
        "ojroques/nvim-lspfuzzy",
        config = function()
            require("lspfuzzy").setup({
                jump_one = false,
                save_last = true,
            })
        end
    },
}
