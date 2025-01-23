local mason = require("mason")
mason.setup()
local lspconfig = require("mason-lspconfig")
lspconfig.setup({
  ensure_installed = { "omnisharp", "clangd" },
})

local mason_registry = require("mason-registry")
local clang_format = mason_registry.get_package("clang-format")

if not clang_format:is_installed() then clang_format:install() end
