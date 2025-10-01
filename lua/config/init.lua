require("config.lazy")
require("config.keymaps")
require("config.cmp")
-- =========================
--   БАЗОВЫЕ НАСТРОЙКИ
-- =========================

-- Номера строк
vim.opt.number = true
vim.opt.relativenumber = true  -- относительные номера

-- Отступы
vim.opt.tabstop = 4      -- ширина таба = 4
vim.opt.shiftwidth = 4   -- сдвиг при >> или << = 4
vim.opt.expandtab = true -- таб = пробелы
vim.opt.smartindent = true

-- Поиск
vim.opt.ignorecase = true -- не учитывать регистр
vim.opt.smartcase = true  -- но учитывать, если есть заглавные

-- Интерфейс
vim.opt.cursorline = true  -- подсветка текущей строки
vim.opt.termguicolors = true -- 24-bit цвета
vim.opt.wrap = false        -- не переносить строки
