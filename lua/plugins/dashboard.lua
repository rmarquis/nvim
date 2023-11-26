return {
    'nvimdev/dashboard-nvim',
    dependencies = {{'nvim-tree/nvim-web-devicons' }},
    event = 'VimEnter',
    config = function()
        require('dashboard').setup {
            -- config
            theme = 'hyper',
            config = {
                week_header = {
                    enable = true,
                },
                shortcut = {
                    { icon = '📦 ', desc = 'Update', group = '@property', action = 'Lazy update', key = 'u' },
                },
            },
        }
    end,
}

