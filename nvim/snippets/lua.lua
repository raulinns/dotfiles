-- File: lua/raulin/config/snippets.lua

local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local t = ls.text_node

return {
ls.add_snippets("lua", {
    s("hello", {
        t('print("hello world")')
    })
})
}
