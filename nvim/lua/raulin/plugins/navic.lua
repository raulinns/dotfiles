return {
    {
        "SmiteshP/nvim-navic",
        dependencies = { "neovim/nvim-lspconfig" },
        opts = {
            lsp = {
                auto_attach = true, -- otomatis attach ke semua LSP yang support documentSymbols
            },
            highlight = true,
            separator = "  ",
            depth_limit = 5,
        },
    },

    {
        "SmiteshP/nvim-navbuddy",
        requires = {
            "neovim/nvim-lspconfig",
            "SmiteshP/nvim-navic",
            "MunifTanjim/nui.nvim",
            "numToStr/Comment.nvim", -- Optional
            "nvim-telescope/telescope.nvim", -- Optional
        },
    },
}
