--[[
  formatting.lua
  ------------------
  This file is for plugins that handle code formatting.
  Include tools that automatically format your code or integrate with external formatters.
]]

return {
    {
        'stevearc/conform.nvim',
        event = { 'BufWritePre' },
        cmd = { 'ConformInfo' },
        keys = {
            {
                'gw',
                function()
                    require('conform').format { async = true, lsp_format = 'fallback' }
                end,
                mode = '',
                desc = 'Format buffer',
            },
        },
        opts = {
            notify_on_error = false,
            format_on_save = false,
            formatters_by_ft = {
                lua = { 'stylua' },
                -- Conform can also run multiple formatters sequentially
                -- python = { "isort", "black" },
                --
                -- You can use 'stop_after_first' to run the first available formatter from the list
                -- javascript = { "prettierd", "prettier", stop_after_first = true },
            },
        },
    },
}
