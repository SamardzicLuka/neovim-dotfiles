return {
    "numToStr/Comment.nvim",
     opts = function()
        require('Comment').setup({
            -- Specify only the configurations you want to change
            toggler = {
                line = 'cc',  -- Use 'cc' to toggle comments on the current line in normal mode
            },
            opleader = {
                line = 'c',   -- Use 'c' in visual mode to toggle comments on selected lines
            },
            mappings = {
                basic = true,  -- Enable basic mappings like 'gcc' for line comments
                extra = true,  -- Enable extra mappings like 'gco', 'gcO', and 'gcA'
            },
        })
    end
}
