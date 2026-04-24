-- File: lua/raulin/config/snippets.lua

local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local t = ls.text_node

ls.add_snippets("lua", {
    s("hello", {
        t('print("hello world")')
    })
})
-- local snippets = {
--   all = {
--     -- Snippet 'date' bisa tetap di sini karena berguna di mana saja
--     s("date", { t(os.date("%Y-%m-%d")) })
--   },
--   markdown = {} -- Tabel kosong untuk diisi
-- }

-- -- PINDAHKAN SEMUA SNIPPET MATEMATIKA KE KATEGORI MARKDOWN
-- snippets.markdown = {
--     s({trig = "mk"}, { t("$"), i(1), t("$") }),
--     s({trig = "dm"}, { t({ "$$", "" }), i(1), t({ "", "$$" }) }),
--     s({trig = "beg"}, { t({ "\\begin{", "" }), i(1), t({ "", "}", "" }), i(2), t({ "", "\\end{", "" }), f(function(_, snip) return snip.captures[1] end, {1}), t({ "", "}"}) }),
--     s({trig = "@a"}, { t("\\alpha") }),
--     s({trig = "@b"}, { t("\\beta") }),
--     s({trig = "@g"}, { t("\\gamma") }),
--     s({trig = "@G"}, { t("\\Gamma") }),
--     s({trig = "@d"}, { t("\\delta") }),
--     s({trig = "@D"}, { t("\\Delta") }),
--     s({trig = "@e"}, { t("\\epsilon") }),
--     s({trig = ":e"}, { t("\\varepsilon") }),
--     s({trig = "@z"}, { t("\\zeta") }),
--     s({trig = "@t"}, { t("\\theta") }),
--     s({trig = "@T"}, { t("\\Theta") }),
--     s({trig = ":t"}, { t("\\vartheta") }),
--     s({trig = "@i"}, { t("\\iota") }),
--     s({trig = "@k"}, { t("\\kappa") }),
--     s({trig = "@l"}, { t("\\lambda") }),
--     s({trig = "@L"}, { t("\\Lambda") }),
--     s({trig = "@s"}, { t("\\sigma") }),
--     s({trig = "@S"}, { t("\\Sigma") }),
--     s({trig = "@u"}, { t("\\upsilon") }),
--     s({trig = "@U"}, { t("\\Upsilon") }),
--     s({trig = "@o"}, { t("\\omega") }),
--     s({trig = "@O"}, { t("\\Omega") }),
--     s({trig = "ome"}, { t("\\omega") }),
--     s({trig = "Ome"}, { t("\\Omega") }),
--     s({trig = "text"}, { t("\\text{"), i(1), t("}") }),
--     s({trig = "\""}, { t("\\text{"), i(1), t("}") }),
--     s({trig = "sr"}, { t("^{2}") }),
--     s({trig = "cb"}, { t("^{3}") }),
--     s({trig = "rd"}, { t("^{"), i(1), t("}") }),
--     s({trig = "sts"}, { t("_\\text{"), i(1), t("}") }),
--     s({trig = "sq"}, { t("\\sqrt{"), i(1), t("}") }),
--     s({trig = "ee"}, { t("e^{"), i(1), t("}") }),
--     s({trig = "invs"}, { t("^{-1}") }),
--     s({trig = "conj"}, { t("^{*}") }),
--     s({trig = "Re"}, { t("\\mathrm{Re}") }),
--     s({trig = "Im"}, { t("\\mathrm{Im}") }),
--     s({trig = "bf"}, { t("\\mathbf{"), i(1), t("}") }),
--     s({trig = "rm"}, { t("\\mathrm{"), i(1), t("}") }),
--     s({trig = "trace"}, { t("\\mathrm{Tr}") }),
--     s({trig = "hat"}, { t("\\hat{"), i(1), t("}") }),
--     s({trig = "bar"}, { t("\\bar{"), i(1), t("}") }),
--     s({trig = "cdot"}, { t("\\cdot") }),
--     s({trig = "tilde"}, { t("\\tilde{"), i(1), t("}") }),
--     s({trig = "und"}, { t("\\underline{"), i(1), t("}") }),
--     s({trig = "vec"}, { t("\\vec{"), i(1), t("}") }),
--     s({trig = "xnn"}, { t("x_{n}") }),
--     s({trig = "\\xii", priority = 1001}, { t("x_{i}") }),
--     s({trig = "xjj"}, { t("x_{j}") }),
--     s({trig = "xp1"}, { t("x_{n+1}") }),
--     s({trig = "ynn"}, { t("y_{n}") }),
--     s({trig = "yii"}, { t("y_{i}") }),
--     s({trig = "yjj"}, { t("y_{j}") }),
--     s({trig = "ooo"}, { t("\\infty") }),
--     s({trig = "sum"}, { t("\\sum") }),
--     s({trig = "prod"}, { t("\\prod") }),
    -- Lanjutkan sisanya di sini...
-- }

-- Mendaftarkan semua snippet dari tabel di atas ke LuaSnip
-- ls.add_snippets("all", snippets.all)
-- ls.add_snippets("markdown", snippets.markdown)

