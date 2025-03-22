return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
            ensure_installed = {"lua", "java", "bash", "c", "javascript", "html"},
            highlight = {enable = true},
            indent = {enable = true},
            autotag = {enable = true},
        })

        vim.cmd([[
            augroup EjsFiletype
            autocmd!
            autocmd BufRead,BufNewFile *.ejs set filetype=html
            augroup END
        ]])
    end
}

