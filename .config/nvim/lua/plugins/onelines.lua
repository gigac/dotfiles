return {
    { "tpope/vim-fugitive" },

    {
        'lewis6991/gitsigns.nvim',
        opts = {
            signs = {
                add = { text = '+' },
                change = { text = '~' },
                delete = { text = '_' },
                topdelete = { text = '‾' },
                changedelete = { text = '~' },
            },
            current_line_blame = true,
            current_line_blame_opts = {
                delay = 100,
                virt_text_pos = 'eol',
            },
        },
    },

    {
        'nvim-tree/nvim-tree.lua',
        version = '*',
        lazy = false,
        dependencies = {
            'nvim-tree/nvim-web-devicons',
        },
        config = function()
            require('nvim-tree').setup({
                update_focused_file = {
                    enable = true,
                    update_cwd = true,
                },
            })
        end,
    },

    {
        'pocco81/auto-save.nvim',
        config = function()
            require('auto-save').setup({
                enabled = true,
                execution_message = {
                    message = function() return "" end,
                },
                trigger_events = { "InsertLeave", "TextChanged" },
                debounce_delay = 135,
            })
        end
    },

    {
        "supermaven-inc/supermaven-nvim",
        config = function()
            require("supermaven-nvim").setup({
                keymaps = {
                    accept_suggestion = "<Tab>",
                },
                disable_keymaps = false,
            })
        end,
    },

    { 'folke/todo-comments.nvim', event = 'VimEnter', dependencies = { 'nvim-lua/plenary.nvim' }, opts = { signs = false } },

    -- { 'phpactor/phpactor', build = 'composer install --no-dev -o' },
    -- { 'stephpy/vim-php-cs-fixer' },
}
