local M = {}

M.gopher = {
  plugin = true,
  n = {
    ["<leader>err"] = {
      "<cmd> GoIfErr <CR>",
    }
  }
}

return M
