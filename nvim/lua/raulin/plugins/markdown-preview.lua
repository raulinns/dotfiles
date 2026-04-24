return {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && yarn install",
    init = function()
        vim.g.mkdp_filetypes = { "markdown" }
        -- TAMBAHKAN BARIS INI (pilih salah satu sesuai browser anda):
        vim.g.mkdp_browser = "firefox"
        vim.g.mkdp_auto_start = 1
        -- atau
        -- vim.g.mkdp_browser = 'google-chrome-stable'
    end,
    ft = { "markdown" },
}
