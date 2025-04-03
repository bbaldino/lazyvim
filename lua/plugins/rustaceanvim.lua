return {
  "mrcjkb/rustaceanvim",
  opts = {
    server = {
      default_settings = {
        diagnostics = {
          enable = diagnostics == "rust-analyzer",
          disabled = { "proc-macro-disabled", "proc-macros-disabled" },
        },
        ["rust-analyzer"] = {
          rustfmt = {
            extraArgs = {
              "+nightly",
            },
          },
        },
      },
    },
  },
}
