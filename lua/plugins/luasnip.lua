return {
  "L3MON4D3/LuaSnip",
  lazy = true,
  config = function()
    require("luasnip.loaders.from_lua").load({ paths = "./lua/luasnippets" })
    local ls = require("luasnip")
    local types = require("luasnip.util.types")
    ls.config.set_config({
      history = true,
      update_events = "TextChanged,TextChangedI",
      ext_opts = {
        [types.choiceNode] = {
          active = {
            virt_text = { { "<- Current choice", "Comment" } },
          },
        },
      },
    })
  end,
  build = (not LazyVim.is_win())
      and "echo 'NOTE: jsregexp is optional, so not a big deal if it fails to build'; make install_jsregexp"
    or nil,
  opts = {
    history = true,
    delete_check_events = "TextChanged",
  },
}
