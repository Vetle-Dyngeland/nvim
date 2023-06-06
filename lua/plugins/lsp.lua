return {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v2.x",
    dependencies = {
        "neovim/nvim-lspconfig",

        {
            "williamboman/mason.nvim",
            build = function()
                pcall(vim.cmd, "MasonUpdate")
            end,
            dependencies = "williamboman/mason-lspconfig.nvim"
        },

        "hrsh7th/nvim-cmp",
        "hrsh7th/cmp-nvim-lsp",
        "saadparwaiz1/cmp_luasnip",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-nvim-lsp-signature-help",

        "L3MON4D3/LuaSnip",
        "rafamadriz/friendly-snippets",
    },
    config = function()
        local lsp = require("lsp-zero").preset({})

        lsp.on_attach(function(_, bufnr)
            lsp.default_keymaps({ buffer = bufnr })

            local function opts(description)
                return { buffer = bufnr, remap = false, desc = description }
            end

            local map = vim.keymap.set

            map("n", "gd", function() vim.lsp.buf.definition() end, opts("Go to definition"))
            map("n", "gr", function() vim.lsp.buf.references() end, opts("Go to references"))
            map("n", "K", function() vim.lsp.buf.hover() end, opts("Lsp hover"))
            map("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts("Open floating diagnostics"))
            map("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts("Code action"))
            map("n", "]d", function() vim.diagnostic.goto_next() end, opts("Go to next diagnostic"))
            map("n", "[d", function() vim.diagnostic.goto_prev() end, opts("Go to previous diagnostic"))
            map("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts("Rename (vim)"))
            map("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts("Signature help"))
        end)

        lsp.ensure_installed({
            "rust_analyzer",
            "lua_ls"
        })

        lsp.configure("lua_ls", {
            settings = {
                Lua = {
                    runtime = {
                        version = "LuaJIT"
                    },
                    diagnostics = {
                        globals = { 'vim' },
                    },
                    telemetry = {
                        enable = false,
                    },
                }
            }
        })

        lsp.set_sign_icons({
            error = " ",
            warn = " ",
            hint = "󰘥 ",
            info = " "
        })

        lsp.setup()

        local luasnip = require("luasnip")
        local cmp = require("cmp")
        local cmp_mappings = lsp.defaults.cmp_mappings({
            ["<C-d>"] = cmp.mapping.scroll_docs(-4),
            ["<C-f>"] = cmp.mapping.scroll_docs(4),
            ["<C-space>"] = cmp.mapping.complete({}),
            ["<CR>"] = cmp.mapping.confirm({ select = true }),
            ["<Tab>"] = cmp.mapping(function(fallback)
                if cmp.visible() then
                    cmp.select_next_item()
                elseif luasnip.expand_or_jumpable() then
                    luasnip.expand_or_jump()
                else
                    fallback()
                end
            end, { "i", "s" }),
            ["<S-Tab>"] = cmp.mapping(function(fallback)
                if cmp.visible() then
                    cmp.select_prev_item()
                elseif luasnip.jumpable(-1) then
                    luasnip.jump(-1)
                else
                    fallback()
                end
            end, { "i", "s" }),
        })

        require("luasnip.loaders.from_vscode").lazy_load()

        cmp.setup({
            mapping = cmp_mappings,
            preselect = "item",
            completion = {
                completeopt = "menu,menuone,noinsert"
            },
            sources = {
                {name = "nvim_lsp"},
                {name = "luasnip"},
                {name = "path"},
                {name = "buffer"},
            }
        })

        vim.diagnostic.config({
            virtual_text = true,
            underline = true,
            severity_sort = true,
        })
    end
}
