return {
  "rebelot/heirline.nvim",
  opts = function(_, opts)
    opts.statusline = opts.statusline or {}

    -- show full file path
    table.insert(opts.statusline, 3, {
      provider = function()
        return vim.fn.expand("%:~:.") -- relative path with ~
      end,
      hl = { fg = "cyan" },       -- optional color
    })

    return opts
  end,
}
