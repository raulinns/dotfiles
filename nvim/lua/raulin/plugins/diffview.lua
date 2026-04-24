return {
    "sindrets/diffview.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewFileHistory", "DiffviewToggleFiles" },
    keys = {
        { "<leader>gd", "<cmd>DiffviewOpen<cr>",                desc = "Git: buka diff perubahan saat ini" },
        { "<leader>gh", "<cmd>DiffviewFileHistory %<cr>",       desc = "Git: history file aktif" },
        { "<leader>gH", "<cmd>DiffviewFileHistory<cr>",         desc = "Git: history seluruh repo" },
        { "<leader>gx", "<cmd>DiffviewClose<cr>",               desc = "Git: tutup diffview" },
    },
    opts = {
        enhanced_diff_hl = true, -- highlight diff yang lebih detail
        view = {
            default = {
                layout = "diff2_horizontal", -- split horizontal (atas/bawah)
            },
            merge_tool = {
                layout = "diff3_horizontal",
                disable_diagnostics = true,
            },
        },
        file_panel = {
            listing_style = "tree",
            win_config = {
                position = "left",
                width = 35,
            },
        },
        keymaps = {
            view = {
                { "n", "q",          "<cmd>DiffviewClose<cr>",      { desc = "Tutup diffview" } },
                { "n", "<leader>gx", "<cmd>DiffviewClose<cr>",      { desc = "Tutup diffview" } },
            },
            file_panel = {
                { "n", "q", "<cmd>DiffviewClose<cr>", { desc = "Tutup diffview" } },
            },
        },
    },
}
