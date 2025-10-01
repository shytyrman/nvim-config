-- No example configuration was found for this plugin.
--
-- For detailed information on configuring this plugin, please refer to its
-- official documentation:
--
--   https://github.com/nvim-treesitter/nvim-treesitter
--
-- If you wish to use this plugin, you can optionally modify and then uncomment
-- the configuration below.

return {
    {
      "nvim-treesitter/nvim-treesitter",
      build = ":TSUpdate",
      config = function()
        require("nvim-treesitter.configs").setup {
          ensure_installed = {
            "lua", "vim", "javascript", "typescript", "java", "python", "html", "css"
          },
          highlight = {
            enable = true,
          },
          indent = {
            enable = true,
          },
          incremental_selection = {
            enable = true,
            keymaps = {
              init_selection = "gnn",
              node_incremental = "grn",
              scope_incremental = "grc",
              node_decremental = "grm",
            },
          },
        }
      end,
    }
}
