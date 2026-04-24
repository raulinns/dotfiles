# raulin/nvim

Konfigurasi Neovim personal berbasis [lazy.nvim](https://github.com/folke/lazy.nvim) dengan fokus pada pengalaman coding yang cepat dan efisien.

## Struktur

```
~/.config/nvim/
├── init.lua                    # Entry point
├── ftplugin/
│   └── java.lua                # Konfigurasi khusus Java
├── snippets/
│   ├── lua.lua
│   └── markdown.lua
└── lua/raulin/
    ├── core/
    │   ├── init.lua
    │   ├── remap.lua           # Keymaps global
    │   └── set.lua             # Opsi Vim
    ├── config/
    │   └── snippets.lua
    ├── lazy.lua                # Bootstrap lazy.nvim
    ├── luasnip.lua
    └── plugins/
        ├── autocompletion.lua  # nvim-cmp + LuaSnip + UltiSnips
        ├── auto-save.lua
        ├── bracket.lua
        ├── bufferline.lua
        ├── colorscheme.lua     # Gruvbox (hard, transparent)
        ├── diffview.lua        # Git diff & history
        ├── formatting.lua
        ├── gitstuff.lua        # Gitsigns + Fugitive + LazyGit
        ├── harpoon.lua         # Harpoon2 file marks
        ├── java-lsp.lua        # JDTLS untuk Java
        ├── latex.lua
        ├── lsp.lua             # Mason + nvim-lspconfig
        ├── lualine.lua         # Status line
        ├── markdown-preview.lua
        ├── navic.lua           # Breadcrumb di winbar
        ├── neotree.lua         # File explorer
        ├── noice.lua           # UI untuk messages/cmdline
        ├── oil.lua             # File manager sebagai buffer
        ├── pdfview.lua
        ├── plantuml.lua
        ├── surround.lua        # nvim-surround
        ├── telescope.lua       # Fuzzy finder
        ├── todo.lua            # Todo-comments
        ├── treesitter.lua      # Syntax highlighting
        ├── trouble.lua         # Diagnostics list
        ├── ts-comments.lua
        ├── undotree.lua
        └── yazi.lua            # Terminal file manager
```

## Plugins Utama

| Plugin | Kegunaan |
|---|---|
| [lazy.nvim](https://github.com/folke/lazy.nvim) | Plugin manager |
| [gruvbox.nvim](https://github.com/ellisonleao/gruvbox.nvim) | Colorscheme (hard contrast, transparent) |
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | Fuzzy finder |
| [harpoon2](https://github.com/ThePrimeagen/harpoon) | File marks & quick navigation |
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | LSP client |
| [mason.nvim](https://github.com/mason-org/mason.nvim) | LSP/DAP/Linter installer |
| [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) | Autocompletion |
| [LuaSnip](https://github.com/L3MON4D3/LuaSnip) | Snippet engine |
| [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim) | File explorer |
| [oil.nvim](https://github.com/stevearc/oil.nvim) | File manager sebagai buffer |
| [yazi.nvim](https://github.com/mikavilpas/yazi.nvim) | Terminal file manager |
| [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) | Git signs & blame |
| [vim-fugitive](https://github.com/tpope/vim-fugitive) | Git commands |
| [lazygit.nvim](https://github.com/kdheepak/lazygit.nvim) | LazyGit TUI |
| [diffview.nvim](https://github.com/sindrets/diffview.nvim) | Git diff & file history |
| [trouble.nvim](https://github.com/folke/trouble.nvim) | Diagnostics & quickfix |
| [undotree](https://github.com/mbbill/undotree) | Visualisasi undo history |
| [nvim-surround](https://github.com/kylechui/nvim-surround) | Surround text objects |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Syntax highlighting & parsing |
| [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) | Status line |
| [bufferline.nvim](https://github.com/akinsho/bufferline.nvim) | Buffer tabs |
| [noice.nvim](https://github.com/folke/noice.nvim) | UI messages & cmdline |
| [nvim-navic](https://github.com/SmiteshP/nvim-navic) | Breadcrumb di winbar |
| [nvim-navbuddy](https://github.com/SmiteshP/nvim-navbuddy) | Navigasi simbol LSP |
| [todo-comments.nvim](https://github.com/folke/todo-comments.nvim) | Highlight TODO/FIXME |
| [markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim) | Preview Markdown di browser |

## LSP yang Dikonfigurasi

- `lua_ls` — Lua
- `hls` — Haskell
- `clangd` — C/C++
- `tsserver` — TypeScript/JavaScript
- `cssls` — CSS
- `html` — HTML
- `jsonls` — JSON
- `jdtls` — Java (via `ftplugin/java.lua`)

## Instalasi

```bash
git clone <repo-url> ~/.config/nvim
nvim  # lazy.nvim akan otomatis menginstall semua plugin
```

## Cheatsheet

Lihat [KEYMAPS.md](KEYMAPS.md) untuk daftar lengkap semua keymaps.
