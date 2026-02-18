return {
  "ray-x/lsp_signature.nvim",
  event = "VeryLazy",
  config = function()
    require("lsp_signature").setup({
      bind = true,
      handler_opts = {
        border = "rounded",
      },
      hint_enable = true,
      hint_prefix = "🔍 ",
      floating_window = true,
      floating_window_above_cur_line = true,
      fix_pos = false,
      toggle_key = "<M-k>",
      select_signature_key = "<M-n>",
    })
  end,
}
