local mason = require('mason')
mason.setup()
local lspconfig = require('mason-lspconfig')
lspconfig.setup{
    ensure_installed = { 'omnisharp' }
}
