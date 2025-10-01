-- No example configuration was found for this plugin.
--
-- For detailed information on configuring this plugin, please refer to its
-- official documentation:
--
--   https://github.com/hrsh7th/nvim-cmp
--
-- If you wish to use this plugin, you can optionally modify and then uncomment
-- the configuration below.

return {
  -- Автодополнение
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",  -- интеграция с LSP
      "hrsh7th/cmp-buffer",    -- буфер
      "hrsh7th/cmp-path",      -- пути
      "hrsh7th/cmp-cmdline",   -- командная строка
      "L3MON4D3/LuaSnip",      -- сниппеты
      "saadparwaiz1/cmp_luasnip", -- интеграция сниппетов
    },
    config = function()
      local cmp = require("cmp")
      cmp.setup({
        snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body)
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-b>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<C-e>"] = cmp.mapping.abort(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "luasnip" },
        }, {
          { name = "buffer" },
          { name = "path" },
        }),
      })
    end,
  },
}
