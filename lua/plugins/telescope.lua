 return {
     {
        'nvim-telescope/telescope.nvim', tag = '0.1.6',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            local builtin = require("telescope.builtin")
            local telescope = require("telescope")
            local actions = require("telescope.actions")

            telescope.setup({
                defaults = {
                    path_display = { "smart" },
                    mappings = {
                        i = {
                            ["<C-k>"] = actions.move_selection_previous, -- move to prev result
                            ["<C-j>"] = actions.move_selection_next, -- move to next result
                            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
                        },
                    },
                },
            })

            vim.keymap.set('n', '<C-p>', builtin.find_files, {})
            vim.keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
            vim.keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
        end
     },
     {
         "nvim-telescope/telescope-ui-select.nvim",
         config = function()
             require("telescope").setup({
                 extensions = {
                     ["ui-select"] = {
                         require("telescope.themes").get_dropdown {
                         }
                     }
                 }
             })
             require("telescope").load_extension("ui-select")
         end
     }

}
