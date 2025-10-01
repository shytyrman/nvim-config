local cmp = require("cmp")

-- Иконки для LSP CompletionItemKinds
local kind_icons = {
  Text = "",
  Method = "󰆧",
  Function = "󰊕",
  Constructor = "",
  Field = "󰇽",
  Variable = "󰂡",
  Class = "󰠱",
  Interface = "",
  Module = "",
  Property = "󰜢",
  Unit = "",
  Value = "󰎠",
  Enum = "",
  Keyword = "󰌋",
  Snippet = "",
  Color = "󰏘",
  File = "󰈙",
  Reference = "󰈇",
  Folder = "󰉋",
  EnumMember = "",
  Constant = "󰏿",
  Struct = "󰙅",
  Event = "",
  Operator = "󰆕",
  TypeParameter = "",
}

cmp.setup({
  formatting = {
    fields = { "kind", "abbr", "menu" },
    format = function(entry, vim_item)
      -- добавляем иконку
      vim_item.kind = string.format("%s %s", kind_icons[vim_item.kind] or "", vim_item.kind)

      -- источник подсказки (меню справа)
      vim_item.menu = ({
        nvim_lsp = "[LSP]",
        buffer = "[Buf]",
        path = "[Path]",
        luasnip = "[Snip]",
      })[entry.source.name]

      return vim_item
    end,
  },

  mapping = cmp.mapping.preset.insert({
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
    ["<Tab>"] = cmp.mapping.select_next_item(),
    ["<S-Tab>"] = cmp.mapping.select_prev_item(),
  }),

  sources = cmp.config.sources({
    { name = "nvim_lsp" },
    { name = "luasnip" },
    { name = "buffer" },
    { name = "path" },
  }),

  experimental = {
    ghost_text = true,
  },

  window = {
    completion = cmp.config.window.bordered({
      winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,Search:None",
      max_height = 10, -- 👈 максимум 10 строк, дальше скролл
      max_width = 60,  -- 👈 ограничим ширину, чтобы не закрывал пол экрана
    }),
    documentation = cmp.config.window.bordered(),
  },
})
