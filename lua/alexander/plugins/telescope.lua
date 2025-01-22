-- plugins/telescope.lua:
return {
    'nvim-telescope/telescope.nvim',      -- Plugin specification
    tag = '0.1.8',                         -- Optionally specify a tag
    dependencies = { 'nvim-lua/plenary.nvim' },  -- Define dependencies
    config = function()                    -- Configuration
        require('telescope').setup{
            defaults = {
                prompt_prefix = "Search> ",
                selection_caret = "> ",
            }
        }
	-- Keymap for 'find_files' using Telescope
	local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
	vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = 'Telescope find git files' })
    vim.keymap.set('n', '<leader>ps', function()
    local search_term = vim.fn.input("Grep > ")
    if search_term == "" then
        print("Search term cannot be empty!")
        return
    end
    print("Searching for: " .. search_term)
    builtin.grep_string({ search = search_term })
end)    end
}
