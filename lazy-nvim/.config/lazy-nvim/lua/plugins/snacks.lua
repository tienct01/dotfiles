return {
  "folke/snacks.nvim",
  opts = function(_, opts)
    opts.explorer = opts.explorer or {}
    opts.explorer.hidden = false
    opts.explorer.ignored = false
    opts.explorer.visible = true
  end,
}
