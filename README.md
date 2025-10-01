# 🌲 Neovim Config by shytyrman

A clean and functional Neovim configuration using **lazy.nvim** for plugin management.

## 📦 Installation

### 1. Clone the repository

```bash
git clone https://github.com/shytyrman/nvim-config ~/.config/nvim
```

### 2. Install plugins

Open Neovim and run:

```vim
:Lazy sync
```

### 3. Done!

Restart Neovim, and your configuration will be ready to use.

## 🛠️ Configuration Structure

* `init.lua` — main configuration file.
* `lua/` — additional settings, keymaps, and plugin configurations.

## 📚 Included Plugins

* `lazy.nvim` — plugin manager.
* `nvim-treesitter` — syntax highlighting.
* `nvim-lspconfig` — language server protocol configuration.
* `telescope.nvim` — fuzzy finder and search.
* `nvim-tree.lua` — file explorer.
* And others…

## ⚙️ Customization

All configurations are located in the `lua/` directory. You can easily adjust them to fit your workflow.

## 📄 License

This project is licensed under the MIT License. See the LICENSE file for details.
