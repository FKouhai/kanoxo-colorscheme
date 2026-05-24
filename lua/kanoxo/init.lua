local palette = require("kanoxo.palette")
local spec    = require("kanoxo.spec")
local groups  = require("kanoxo.groups")

local M = {}

M.config = {
  variant         = "wave",
  transparent     = false,
  terminal_colors = true,
}

function M.setup(opts)
  M.config = vim.tbl_deep_extend("force", M.config, opts or {})
end

function M.load(variant)
  variant = variant or M.config.variant
  local p = palette[variant]
  if not p then
    vim.notify("kanoxo: unknown variant '" .. variant .. "'. Use 'wave' or 'dragon'.", vim.log.levels.ERROR)
    return
  end

  vim.cmd("highlight clear")
  if vim.fn.exists("syntax_on") == 1 then vim.cmd("syntax reset") end

  vim.o.termguicolors = true
  vim.g.colors_name = "kanoxo_" .. variant

  if M.config.transparent then
    p = vim.tbl_extend("force", p, {
      bg       = "NONE",
      bg_dim   = "NONE",
      bg_float = "NONE",
    })
  end

  local s = spec.get(p)
  groups.setup(s)

  if M.config.terminal_colors then
    for i = 0, 15 do
      vim.g["terminal_color_" .. i] = s.terminal[i]
    end
  end
end

return M
