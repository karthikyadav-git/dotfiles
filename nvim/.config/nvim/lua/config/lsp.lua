local lspconfig = {
	lua_ls = {},
	ts_ls = {},
	pyright = {},
	clangd = {},
}

local servers = {}

for server, _ in pairs(lspconfig) do
	table.insert(servers, server)
end

return {
	lsp = lspconfig,
	servers = servers,
}
