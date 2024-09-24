require'nvim-treesitter.configs'.setup{
    ensure_installed = {
		"c_sharp",
		"css",
		"lua",
		"html",
		"dockerfile",
		"markdown",
		"markdown_inline",
		"yaml",
	},
    sync_install = false,
    highlight = { enable = true },
    indent = { enable = true }, 
}
