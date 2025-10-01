-- No example configuration was found for this plugin.
--
-- For detailed information on configuring this plugin, please refer to its
-- official documentation:
--
--   https://github.com/nvim-tree/nvim-tree.lua
--
-- If you wish to use this plugin, you can optionally modify and then uncomment
-- the configuration below.

return {
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons", -- красивые иконки (необязательно)
    },
    config = function()
        require("nvim-tree").setup {
          sort_by = "case_sensitive",
          view = {
            width = 35,
            side = "left",
          },
          renderer = {
            group_empty = true,
          },
          filters = {
            dotfiles = false, -- показывать скрытые файлы
          },
          git = {
            enable = true,
          },
        }
    end,
  },
}
