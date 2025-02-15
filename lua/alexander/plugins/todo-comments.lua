return {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    keywords = {
        FEATURE = { icon = " ", color = "#043565" },
    },
    colors = {
        feature = { "Identifier", "#6A8D73" }
    },
  }
}
