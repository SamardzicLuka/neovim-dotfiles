return {
	"nvimtools/none-ls.nvim",
    dependencies = {
        "gbprod/none-ls-shellcheck.nvim",
    },
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
            sources = {
                null_ls.builtins.formatting.shfmt.with({
                    extra_args = { "-i", "2", "-ci" },
                }),
				null_ls.builtins.formatting.stylua,
--                null_ls.builtins.diagnostics.shellcheck,
                require("none-ls-shellcheck.diagnostics"),
                require("none-ls-shellcheck.code_actions")
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
