return {
    "stevearc/conform.nvim",
    opts = {
        formatters = {
            prettier = {
                stdin = true,
                args = {
                    "--stdin-filepath",
                    "$FILENAME",
                    "--tab-width=4",
                    "--use-tabs=false",
                },
            },

            -- Untuk C, C++, C#
            ["clang-format"] = {
                stdin = true,
                -- Menggunakan file .clang-format di proyek lebih disarankan
                -- daripada mengatur style di sini
                args = { "--style={BasedOnStyle: llvm, IndentWidth: 4}" },
            },

            -- Untuk Java
            ["google-java-format"] = {
                stdin = true,
                prepend_args = { "--aosp" }, -- Use AOSP style for 4-space indentation
            },

            -- Untuk Haskell
            fourmolu = {
                stdin = true,
                -- Menggunakan --stdin-input-file agar bisa membaca konfigurasi proyek
                args = {
                    "--stdin-input-file",
                    "$FILENAME",
                    "--if-style=hanging",
                },
            },

            -- Untuk Lua
            stylua = {
                stdin = true,
                args = {
                    "--indent-type",
                    "Spaces",
                    "--indent-width",
                    "4",
                    "-",
                },
            },

            ["tex-fmt"] = {
                stdin = true,
                prepend_args = {
                    "--tabsize",
                    "4",
                },
            },
        },

        formatters_by_ft = {
            lua = { "stylua" },
            haskell = { "fourmolu" },
            java = { "google-java-format" },
            c = { "clang-format" },
            cpp = { "clang-format" },
            hpp = { "clang-format" },
            cs = { "clang-format" },

            javascript = { "prettier" },
            typescript = { "prettier" },
            javascriptreact = { "prettier" },
            typescriptreact = { "prettier" },
            css = { "prettier" },
            scss = { "prettier" },
            html = { "prettier" },
            json = { "prettier" },
            yaml = { "prettier" },
            markdown = { "prettier" },
            go = { "gofmt" },
            tex = { "tex-fmt" },
        },
    },
    vim.keymap.set({ "n" }, "<leader>gF", function()
        require("conform").format()
    end, { desc = "Format file" }),
}
