require("mason").setup()

require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "pyright" },
  -- можно управлять автоматическим включением LSP
  automatic_enable = true,
})

local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

local on_attach = function(_, bufnr)
  local opts = { noremap = true, silent = true, buffer = bufnr }
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
  vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
  vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
  vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
end

-- Настраиваем сами через vim.lsp.config API (новая модель)
vim.lsp.config("lua_ls", {
  on_attach = on_attach,
  capabilities = capabilities,
})
vim.lsp.config("pyright", {
  on_attach = on_attach,
  capabilities = capabilities,
})
vim.lsp.config("tsserver", {
  on_attach = on_attach,
  capabilities = capabilities,
})
