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
                    { icon = '💤 ', desc = 'Lazy', group = '@property', action = 'Lazy', key = 'l' },
                    { icon = '📦 ', desc = 'Update', group = '@property', action = 'Lazy update', key = 'u' },
                    { icon = '🔭 ', desc = 'Find files', group = '@property', action = 'Telescope find_files', key = 'f' },
                    { icon = '🚪 ', desc = 'Quit', group = '@property', action = 'qa', key = 'q' },
                },
            },
        }
    end,
}
