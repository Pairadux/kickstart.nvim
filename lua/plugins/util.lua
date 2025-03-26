return {
    {
        'stevearc/resession.nvim',
        keys = {
            {
                '<leader>ss',
                function()
                    local cwd = vim.fn.getcwd()
                    require('resession').save(cwd, { dir = 'dirsession', notify = true })
                end,
                desc = '[S]ession [S]ave',
            },
            {
                '<leader>sl',
                function()
                    require('resession').load()
                end,
                desc = '[S]ession [L]oad',
            },
            {
                '<leader>st',
                function()
                    require('resession').save_tab()
                end,
                desc = '[S]ession Save [T]ab',
            },
            {
                '<leader>sd',
                function()
                    require('resession').delete(nil, { dir = 'dirsession', notify = true })
                end,
                desc = '[S]ession [D]elete',
            },
        },
        opts = { extensions = {} },
    },
}
