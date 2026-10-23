local M = {}

function M.apply(spec, config)
  local groups = require("kanoxo.groups").collect(spec, config)
  for name, attrs in pairs(groups) do
    vim.api.nvim_set_hl(0, name, attrs)
  end
end

return M
