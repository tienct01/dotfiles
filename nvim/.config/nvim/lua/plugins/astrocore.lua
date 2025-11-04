-- AstroCore provides a central place to modify mappings, vim options, autocommands, and more!
-- Configuration documentation can be found with `:h astrocore`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    autocmds = {
      enable_transparent_on_startup = {
        {
          event = "VimEnter",
          desc = "Enable transparent background on startup",
          callback = function()
            vim.api.nvim_cmd({ cmd = "TransparentEnable" }, {});
          end
        }
      }
    }
  },
}
