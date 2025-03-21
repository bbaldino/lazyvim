return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      preset = "enter",
      ["<Tab>"] = { "select_next", "snippet_forward", "fallback" },
      ["<S-Tab>"] = { "select_prev", "snippet_backward", "fallback" },
    },
    completion = {
      list = {
        selection = {
          preselect = true,
        },
      },
    },
    sources = {
      providers = {
        buffer = {
          min_keyword_length = 8,
        },
      },
    },
  },
}
-- return {
--   "saghen/blink.cmp",
--   lazy = false, -- lazy loading handled internally
--   -- optional: provides snippets for the snippet source
--   -- dependencies = 'rafamadriz/friendly-snippets',
--
--   -- use a release tag to download pre-built binaries
--   version = "v0.*",
--   -- OR build from source, requires nightly: https://rust-lang.github.io/rustup/concepts/channels.html#working-with-nightly-rust
--   -- build = 'cargo build --release',
--   -- If you use nix, you can build from source using latest nightly rust with:
--   -- build = 'nix run .#build-plugin',
--
--   ---@module 'blink.cmp'
--   ---@type blink.cmp.Config
--   opts = {
--     -- 'default' for mappings similar to built-in completion
--     -- 'super-tab' for mappings similar to vscode (tab to accept, arrow keys to navigate)
--     -- 'enter' for mappings similar to 'super-tab' but with 'enter' to accept
--     -- see the "default configuration" section below for full documentation on how to define
--     -- your own keymap.
--     keymap = {
--       preset = "default",
--       ["<D-c>"] = { "show" },
--       ["<S-CR>"] = { "hide" },
--       ["<CR>"] = { "select_and_accept", "fallback" },
--       ["<Tab>"] = { "select_next", "fallback" },
--       ["<S-Tab>"] = { "select_prev", "fallback" },
--       ["<Down>"] = { "select_next", "fallback" },
--       ["<Up>"] = { "select_prev", "fallback" },
--       ["<PageDown>"] = { "scroll_documentation_down" },
--       ["<PageUp>"] = { "scroll_documentation_up" },
--     },
--
--     appearance = {
--       -- Sets the fallback highlight groups to nvim-cmp's highlight groups
--       -- Useful for when your theme doesn't support blink.cmp
--       -- will be removed in a future release
--       use_nvim_cmp_as_default = true,
--       -- Set to 'mono' for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
--       -- Adjusts spacing to ensure icons are aligned
--       nerd_font_variant = "mono",
--     },
--
--     -- default list of enabled providers defined so that you can extend it
--     -- elsewhere in your config, without redefining it, via `opts_extend`
--     sources = {
--       completion = {
--         enabled_providers = { "lsp", "path", "snippets", "buffer" },
--       },
--     },
--
--     windows = {
--       documentation = {
--         border = vim.g.borderStyle,
--         min_width = 15,
--         max_width = 45, -- smaller, due to https://github.com/Saghen/blink.cmp/issues/194
--         max_height = 10,
--         auto_show = true,
--         auto_show_delay_ms = 250,
--       },
--     },
--
--     -- experimental auto-brackets support
--     completion = { accept = { auto_brackets = { enabled = true } } },
--
--     -- experimental signature help support
--     -- signature = { enabled = true },
--   },
--   -- allows extending the enabled_providers array elsewhere in your config
--   -- without having to redefine it
--   opts_extend = { "sources.completion.enabled_providers" },
-- }
