---@type MappingsTable
local M = {}

M.general = {
  n = {
    ["<leader>ft"] = { "<cmd>lua require('nvterm.terminal').toggle 'float'<CR>", "Toggle Floating Terminal" },
  },
}

return M

