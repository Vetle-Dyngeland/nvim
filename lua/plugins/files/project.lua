return {
    "ahmedkhalf/project.nvim",
    config = function()
        local project = require("project_nvim")

        project.setup({
            patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json", "Cargo.toml" },
            show_hidden = false,
            scope_chdir = "global",
            silent_chdir = true,
        })

        local telescope = require("telescope")

        telescope.load_extension("projects")

        vim.keymap.set("n", "<leader>pj", function()
            telescope.extensions.projects.projects()
        end, { desc = "Browse Projects" })
    end
}