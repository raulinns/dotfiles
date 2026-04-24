-- File: lua/raulin/plugins/autocompletion.lua

return {
    -- 1. LUA SNIP (Engine untuk Snippets)
    {
        "L3MON4D3/LuaSnip",
        dependencies = { "rafamadriz/friendly-snippets" },
        config = function(_, opts)
            require("luasnip").setup(opts)
            -- Bagian ini sudah benar
            require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/snippets" })
            require("luasnip.loaders.from_vscode").load({ paths = "~/.config/nvim/snippets" })
            require("luasnip.loaders.from_vscode").lazy_load()
        end,
    },

    -- 2. NVIM-CMP (Engine Autocompletion)
    {
        "hrsh7th/nvim-cmp",
        event = "InsertEnter",
        dependencies = {
            -- Sumber untuk nvim-cmp
            "hrsh7th/cmp-nvim-lsp", -- Untuk saran dari LSP
            "hrsh7th/cmp-buffer", -- Untuk saran dari buffer/file yang terbuka
            "hrsh7th/cmp-path", -- Untuk saran path file
            "saadparwaiz1/cmp_luasnip", -- WAJIB: agar snippet dari LuaSnip muncul
            "quangnguyen30192/cmp-nvim-ultisnips",
            "SirVer/ultisnips",
        },
        config = function()
            require("cmp_nvim_ultisnips").setup({})
            local cmp = require("cmp")
            local luasnip = require("luasnip")

            cmp.setup({
                -- Konfigurasi agar snippet bisa di-expand
                snippet = {
                    expand = function(args)
                        luasnip.lsp_expand(args.body)
                    end,
                },

                -- Konfigurasi sumber pelengkapan
                sources = cmp.config.sources({
                    { name = "nvim_lsp" },
                    { name = "luasnip" }, -- Nama sumber untuk snippet
                    { name = "buffer" },
                    { name = "path" },
                    { name = "ultisnips" },
                }),

                require("cmp_nvim_ultisnips").setup({
                    filetype_source = "ultisnips_default",
                    show_snippets = "all",
                    documentation = function(snippet)
                        return snippet.description .. "\n\n" .. snippet.value
                    end,
                }),

                -- Konfigurasi key mapping (sesuai niat 'super-tab' Anda)
                mapping = {
                    -- Terima saran dengan Enter
                    ["<Tab>"] = cmp.mapping.confirm({ select = true }),

                    -- Tolak saran dengan Ctrl + e
                    ["<C-e>"] = cmp.mapping.abort(),

                    -- Tab untuk navigasi & snippet
                    ["<C-p>"] = cmp.mapping(function(fallback)
                        if cmp.visible() then
                            cmp.select_next_item()
                        elseif luasnip.jumpable(1) then
                            luasnip.jump(1)
                        else
                            fallback()
                        end
                    end, { "i", "s" }),

                    ["<C-n>"] = cmp.mapping(function(fallback)
                        if cmp.visible() then
                            cmp.select_prev_item()
                        elseif luasnip.jumpable(-1) then
                            luasnip.jump(-1)
                        else
                            fallback()
                        end
                    end, { "i", "s" }),
                },
            })
        end,
    },
}
