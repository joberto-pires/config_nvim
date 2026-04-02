return {
    {
	"nvim-treesitter/nvim-treesitter",
	opts = {
	    ensure_installed = {
		"vim", "lua", "vimdoc",
		"html", "css", "elixir", "heex", "eex",
		"go", "rust", "c", "cpp", "c_sharp",
	    },
	},
    },  
}
