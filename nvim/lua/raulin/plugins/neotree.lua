return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim",
            "nvim-tree/nvim-web-devicons", -- optional, but recommended
        },
        lazy = false, -- neo-tree will lazily load itself
        config = function()
            require("neo-tree").setup({
                window = {
                    mappings = {
                        ["l"] = "open", -- Use 'l' to open files/folders
                        ["h"] = "close_node", -- Use 'h' to close nodes
                        ["P"] = { "toggle_preview", config = { use_float = true } }, -- Custom preview
                        ["Z"] = "expand_all_nodes",
                    },
                },
                filesystem = {
                    hijack_netrw_behavior = "disabled",
                    window = {
                        mappings = {
                            ["H"] = "toggle_hidden", -- Specific to filesystem source
                        },
                    },
                },
            })
        end,
    },
}
