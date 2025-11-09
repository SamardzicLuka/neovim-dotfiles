return {
    {
        "hrsh7th/cmp-nvim-lsp"
    },
    {
		"L3MON4D3/LuaSnip",
		dependencies = {
			"saadparwaiz1/cmp_luasnip",
            "rafamadriz/friendly-snippets",
		},
    },
{
		"hrsh7th/nvim-cmp",
		config = function()
			local cmp = require("cmp")
            require("luasnip.loaders.from_vscode").lazy_load()

			cmp.setup({
				snippet = {
					-- REQUIRED - you must specify a snippet engine
					expand = function(args)
						require("luasnip").lsp_expand(args.body)
					end,
				},
				window = {
					completion = cmp.config.window.bordered(),
					documentation = cmp.config.window.bordered(),
				},
				mapping = cmp.mapping.preset.insert({
					["<C-b>"] = cmp.mapping.scroll_docs(-4),
					["<C-f>"] = cmp.mapping.scroll_docs(4),
					["<C-Space>"] = cmp.mapping.complete(),
                    ["<C-n>"] = cmp.mapping.select_next_item(),
                    ["<C-p>"] = cmp.mapping.select_prev_item(),
					["<C-e>"] = cmp.mapping.abort(),
					["<CR>"] = cmp.mapping.confirm({ select = true }),
				}),
				sources = cmp.config.sources({
					{ name = "nvim_lsp" },
					{ name = "luasnip" },
					{ name = "buffer" },
				}),
			})
		end,
	},
    {
    -- Diagnostic keymaps defined here
        "nvim-lua/plenary.nvim", -- Dummy plugin to hang keymaps onto
        lazy = false,
        config = function()
            vim.keymap.set("n", "<leader>dq", function()
                vim.diagnostic.setqflist()
            end, { desc = "Add diagnostics to quickfix list" })

            -- vim.keymap.set("n", "<leader>dt", function()
            --     vim.diagnostic.config({ virtual_text = true })
            -- end, { desc = "Enable virtual text diagnostics" })
        end,
    }
}
