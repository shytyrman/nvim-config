local jdtls = require("jdtls")

local capabilities = require("cmp_nvim_lsp").default_capabilities()

local on_attach = function(_, bufnr)
  local opts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
  vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
  vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
  vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
end

-- ищем корень проекта
local root_dir = require("jdtls.setup").find_root({".git", "mvnw", "gradlew"})

if root_dir == nil then
  vim.notify("[jdtls] Root dir not found! LSP may not work.", vim.log.levels.WARN)
else
  vim.notify("[jdtls] Root dir = " .. root_dir, vim.log.levels.INFO)
end

-- путь для данных воркспейса
local workspace_dir = vim.fn.stdpath("data") .. "/jdtls-workspace/" .. vim.fn.fnamemodify(root_dir, ":p:h:t")

local config = {
  cmd = { "jdtls" },
  root_dir = root_dir,
  capabilities = capabilities,
  on_attach = on_attach,
  settings = {
    java = {},
  },
  init_options = {
    workspaceFolders = { workspace_dir },
  },
}

jdtls.start_or_attach(config)
