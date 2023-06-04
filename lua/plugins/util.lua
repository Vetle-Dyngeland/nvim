local function split_string(inputstr, sep)
    if sep == nil then
        sep = "%s"
    end

    local t = {}
    for str in string.gmatch(inputstr, "([^" .. sep .. "]+)") do
        table.insert(t, str)
    end
    return t
end

local function remove_occurences(inputstr, char)
    return inputstr:gsub(char, "")
end

local function format_args(inputstr)
    inputstr = remove_occurences(inputstr, "-")
    local args = split_string(inputstr, " ")
    local retstr = ""
    for i = 1, #args do
        retstr = retstr .. "--" .. args[i] .. " "
    end
    return retstr
end

return {
    {
        "ray-x/lsp_signature.nvim",
        config = function()
            require("lsp_signature").setup()
        end
    },
    {
        "voldikss/vim-floaterm",
        config = function()
            local default_options = "--width=0.3 --height=0.35 --position=topright"
            local map = vim.keymap.set

            map("n", "<leader>tm", "<cmd>FloatermNew " .. default_options .. "<cr>",
                { desc = "Open a new floaterm with default options" })
            map("n", "<leader>tn", "<cmd>FloatermNew<cr>", { desc = "Open a new floaterm" })

            map("n", "<leader>ta", function()
                local input = vim.fn.input("Floaterm arguments > ")
                vim.cmd([[FloatermNew]] .. format_args(input))
            end, { desc = "Open new floaterm with the given arguments" })

            map("n", "<leader>tt", "<cmd>FloatermToggle<cr>", { desc = "Toggle floaterm" })
            map("t", "<leader>tt", "<cmd>FloatermToggle<cr>", { desc = "Toggle floaterm" })

            map("n", "<leader>tj", "<cmd>FloatermNext<cr>", { desc = "Goto next floaterm" })
            map("t", "<leader>tj", "<cmd>FloatermNext<cr>", { desc = "Goto next floaterm" })

            map("n", "<leader>tk", "<cmd>FloatermPrev<cr>", { desc = "Goto previous floaterm" })
            map("t", "<leader>tk", "<cmd>FloatermPrev<cr>", { desc = "Goto previous floaterm" })

            map("n", "<leader>tu", function()
                local input = vim.fn.input("New floaterm arguments > ")
                vim.cmd([[FloatermUpdate]] .. format_args(input))
            end, { desc = "Update current floaterm with the given arguments" })
            map("t", "<leader>tu", function()
                local input = vim.fn.input("New floaterm arguments > ")
                vim.cmd([[FloatermUpdate]] .. format_args(input))
            end, { desc = "Update current floaterm with the given arguments" })
        end
    }

}
