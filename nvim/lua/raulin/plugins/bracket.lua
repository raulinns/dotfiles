return {
    "m4xshen/autoclose.nvim",
    config = function()
        -- Inisialisasi plugin dengan konfigurasi bawaan
        require("autoclose").setup()

        -- Pemetaan tombol standar Neovim untuk mode Insert
        -- <C-p> memicu gerakan kursor satu karakter ke kanan (<Right>)
        vim.keymap.set("i", "<C-p>", "<Right>", { 
            noremap = true, 
            silent = true, 
            desc = "Keluar dari bracket" 
        })
    end,
}
