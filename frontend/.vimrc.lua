vim.o.title = true
vim.o.titlestring = "frontend"

local capabilities = require('cmp_nvim_lsp').default_capabilities()
require('lspconfig')['ts_ls'].setup {
  capabilities = capabilities
}

require('lspconfig')['html'].setup {
  capabilities = capabilities
}

