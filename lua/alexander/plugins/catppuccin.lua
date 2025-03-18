return {
    "catppuccin/nvim",
    config = function()
        require("catppuccin").setup({
            transparent_background = false,
            flavour = "macchiato"
        })
    end,
}
