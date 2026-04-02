local function enable_transparency() 
    vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
end

return {
    {
	'kdheepak/monochrome.nvim',
	config = function()
	    vim.cmd.colorscheme "monochrome"
	    enable_transparency()
	end
    },
}

