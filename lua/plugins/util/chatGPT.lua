return {
    "jackMort/ChatGPT.nvim",
    event = "VeryLazy",
    dependencies = {
        "MunifTanjim/nui.nvim",
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope.nvim"
    },
    config = function()
        local chat = require("chatgpt")

        chat.setup({
            api_key_cmd = vim.env.OPENAI_API_KEY,
        })
    end
}
