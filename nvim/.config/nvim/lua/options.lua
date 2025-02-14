-- Indentation options
vim.cmd.set("expandtab")
vim.cmd.set("tabstop=2")
vim.cmd.set("softtabstop=2")
vim.cmd.set("shiftwidth=2")

-- Numbering options
vim.cmd.set("number")
vim.cmd.set("relativenumber")

-- LaTeX options
vim.g.vimtex_view_method = "zathura"
vim.g.vimtex_compiler_method = "latexmk"
vim.cmd.set("conceallevel=2")
vim.g.vimtex_syntax_conceal = {
	math_bounds = 1,
	math_delimiters = 1,
	math_fracs = 1, -- Conceals \frac
	math_super_sub = 1,
	math_symbols = 1,
	sections = 1,
}
