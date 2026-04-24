return {
    {
        "mason-org/mason-lspconfig.nvim",
        dependencies = {
            { "mason-org/mason.nvim", opts = {} },
            {
            "SmiteshP/nvim-navbuddy",
            dependencies = {
                "SmiteshP/nvim-navic",
                "MunifTanjim/nui.nvim"
            },
            opts = { lsp = { auto_attach = true } }
        }
        },

        opts = {
            servers = {
                lua_ls = {
                    settings = {
                        lua = {
                            diagnostics = {
                                globals = { "vim" },
                            },
                        },
                    },
                },
                hls = {
                    settings = {
                        haskell = {
                            plugin = {
                                rename = {
                                    config = {
                                        crossModule = true,
                                    },
                                },
                            },
                        },
                    },
                },
                clangd = {},
                tsserver = {},
                cssls = {},
                html = {},
                jsonls = {},
            },
        },

        config = function(_, opts)
            require("mason").setup()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "jdtls" },
                automatic_installation = true,
            })

            for server, config in pairs(opts.servers) do
                vim.lsp.config(server, config)
                vim.lsp.enable(server)
            end

            vim.keymap.set("n", "<leader>m", ":Mason<CR>")
            vim.keymap.set("n", "<leader>mu", ":MasonUpdate<CR>")
        end,
    },

    {
        "neovim/nvim-lspconfig",
        config = function()
            vim.api.nvim_create_autocmd(
                "LspAttach",
                { --  Use LspAttach autocommand to only map the following keys after the language server attaches to the current buffer
                    group = vim.api.nvim_create_augroup("UserLspConfig", {}),
                    callback = function(ev)
                        vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc" -- Enable completion triggered by <c-x><c-o>

                        -- Buffer local mappings.
                        -- See `:help vim.lsp.*` for documentation on any of the below functions
                        local opts = { buffer = ev.buf }
                        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
                        vim.keymap.set("n", "<leader><space>", vim.lsp.buf.hover, opts)
                        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
                        vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, opts)
                        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
                        vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
                        vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)

                        vim.keymap.set("n", "<leader>f", function()
                            vim.lsp.buf.format({ async = true })
                        end, opts)

                        -- Open the diagnostic under the cursor in a float window
                        vim.keymap.set("n", "<leader>d", function()
                            vim.diagnostic.open_float({
                                border = "rounded",
                            })
                        end, opts)
                    end,
                }
            )
            -- Tampilkan navic breadcrumbs di winbar
            vim.o.winbar = "%{%v:lua.require'nvim-navic'.get_location()%}"

            -- Virtual Text for Warning
            vim.diagnostic.config({
                virtual_text = true,
                underline = true,
            })
        end,
    },
}
