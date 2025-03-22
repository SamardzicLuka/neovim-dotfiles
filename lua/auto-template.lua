-- Neovim autocommand to insert HTML template when creating a new .html file
vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
    pattern = "*.html",  -- Trigger for .html files
    callback = function()
        -- Check if the buffer is empty before inserting the template
        if vim.fn.line('$') == 1 and vim.fn.getline(1) == "" then
            -- Path to your template file
            local template_path = vim.fn.expand("~/.config/nvim/lua/templates/template.html")
            -- Read the contents of the template
            local template = vim.fn.readfile(template_path)
            -- Insert the template at the beginning of the buffer
            vim.api.nvim_buf_set_lines(0, 0, 0, false, template)
        end
    end,
})
