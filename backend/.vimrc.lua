vim.o.title = true
vim.o.titlestring = "frontend"
require('lspconfig').pylsp.setup({
  cmd = {'uv', 'run', '--with', 'python-lsp-server', 'pylsp'}
})
