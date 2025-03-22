return {
    "rebelot/kanagawa.nvim",   -- plugin repository
    lazy = false,               -- Load the plugin immediately
    name = "kanagawa",          -- Name of the plugin
    priority = 1000,            -- Priority for loading
    config = function()
        -- Set up the kanagawa colorscheme with your custom options
        require('kanagawa').setup({
            compile = false,               -- Disable compiling
            undercurl = true,              -- Enable undercurls
            commentStyle = { italic = true },
            functionStyle = {},
            keywordStyle = { italic = true },
            statementStyle = { bold = true },
            typeStyle = {},
            transparent = false,           -- Do not use transparent background
            dimInactive = false,           -- Do not dim inactive windows
            terminalColors = true,         -- Define terminal colors
            colors = {                     -- Modify theme colors (optional)
                palette = {},
                theme = {
                    wave = {},
                    lotus = {},
                    dragon = {},
                    all = {}
                },
            },
            overrides = function(colors)    -- Modify highlights (optional)
                return {}
            end,
            theme = "wave",                -- Use "wave" theme by default
            background = {                 -- Background mappings
                dark = "wave",              -- Set for dark mode
                light = "lotus"             -- Set for light mode
            },
        })
        -- Apply the colorscheme after setup
        vim.cmd("colorscheme kanagawa")
    end
}

