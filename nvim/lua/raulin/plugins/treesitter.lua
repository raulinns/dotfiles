return {
    "nvim-treesitter/nvim-treesitter", branch = 'master', lazy = false, build = ":TSUpdate",
    config = function()
        local treesitter = require("nvim-treesitter.configs")
        treesitter.setup({
            ensure_installed = {"javascript", "haskell", "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "java", "go" },

            -- Install parsers synchronously (only applied to `ensure_installed`)
            sync_install = false,
            auto_install = true,

            highlight = { enable = true },
            indent = { enable = true },
        })
    end
}
