local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local t = ls.text_node

ls.add_snippets("javascript", {
  s("arr", {
    t({"() => {", "  ", "}"}),
  }),
  s("reqres", {
    t({"(req, res) => {", "  ", "}"}),
  }),
  s("aget", {
    t({'app.get("", (req, res) => {', '  ', '})'}),
  }),
})
