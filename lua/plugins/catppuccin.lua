return {
    "catppuccin/nvim", 
    name = "catppuccin", 
    priority = 2000,
    opacity=0.75,
    config = function()
        vim.cmd.colorscheme "catppuccin"
    end
}
