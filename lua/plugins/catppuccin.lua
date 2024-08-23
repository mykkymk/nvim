return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 4000,
    config = function()
        vim.cmd.colorscheme "catppuccin"
    end
}
