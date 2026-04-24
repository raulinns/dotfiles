return {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
        "MunifTanjim/nui.nvim",
        "rcarriga/nvim-notify",
    },
    config = function()
        require("notify").setup({
            background_colour = "#000000",
            render = "wrapped-compact",
        })

        require("noice").setup({
            lsp = {
                override = {
                    ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
                    ["vim.lsp.util.stylize_markdown"] = true,
                    ["cmp.entry.get_documentation"] = true,
                },
                progress = {
                    enabled = true,
                },
            },
            presets = {
                bottom_search = true,
                command_palette = true,
                long_message_to_split = true,
                inc_rename = false,
                lsp_doc_border = true,
            },
            cmdline = {
                enabled = true,
                view = "cmdline_popup",
                format = {
                    cmdline = { pattern = "^:", icon = "" },
                    search_down = { pattern = "^/", icon = " " },
                    search_up = { pattern = "^?", icon = " " },
                    filter = { pattern = "^:%s*!", icon = "$" },
                    lua = { pattern = "^:%s*lua%s+", icon = "" },
                    help = { pattern = "^:%s*he?l?p?", icon = "?" },
                },
            },
            messages = {
                enabled = true,
                view = "notify",
                view_error = "notify",
                view_warn = "notify",
            },
        })
    end,
    keys = {
        {
            "<leader>nl",
            function() require("noice").cmd("last") end,
            desc = "Noice: pesan terakhir",
        },
        {
            "<leader>nh",
            function() require("noice").cmd("history") end,
            desc = "Noice: riwayat pesan",
        },
        {
            "<leader>nd",
            function() require("noice").cmd("dismiss") end,
            desc = "Noice: tutup semua notifikasi",
        },
    },
}
