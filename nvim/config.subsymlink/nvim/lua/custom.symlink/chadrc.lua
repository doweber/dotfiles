-- vim.opt.foldmethod = "indent"

---@type ChadrcConfig
local M = {}
M.ui = {
  theme = 'monekai',
  statusline  = {
    theme = "default", -- default/vscode/vscode_colored/minimal

    -- default/round/block/arrow (separators work only for "default" statusline theme;
    -- round and block will work for the minimal theme only)
    separator_style = "default",
    overriden_modules = nil,
  },
}
M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"
-- require("custom.configs.ufo")
return M
