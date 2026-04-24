-- See `:help vim.lsp.start` for an overview of the supported `config` options.
local config = {
    cmd = { vim.fn.expand("~/.local/share/nvim/mason/bin/jdtls") },
    root_dir = vim.fs.dirname(vim.fs.find({ "gradlew", ".git", "mvnw" }, { upward = true })[1]),
}
require("jdtls").start_or_attach(config)
