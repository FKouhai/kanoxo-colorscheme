local palette = require("kanoxo.palette")
local spec = require("kanoxo.spec")

local M = {}

M.config = {
  variant = "wave",
  transparent = false,
  dimInactive = false,
  terminal_colors = true,
  styles = {
    comments = { italic = true },
    keywords = { italic = true },
    functions = {},
  },
  overrides = {},
  on_highlights = nil,
}

function M.setup(opts)
  M.config = vim.tbl_deep_extend("force", M.config, opts or {})
end

local function apply_transparent(p)
  return vim.tbl_extend("force", p, {
    bg = "NONE",
    bg_dim = "NONE",
    bg_dark = "NONE",
    bg_float = "NONE",
    bg_menu = "NONE",
  })
end

function M.load(variant)
  variant = variant or M.config.variant
  M.config.variant = variant
  local p = palette[variant]
  if not p then
    vim.notify("kanoxo: unknown variant '" .. variant .. "'. Use 'wave' or 'dragon'.", vim.log.levels.ERROR)
    return
  end

  vim.cmd("highlight clear")
  if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "kanoxo_" .. variant

  if M.config.transparent then
    p = apply_transparent(p)
  end

  local s = spec.get(p)
  require("kanoxo.theme").apply(s, M.config)

  if M.config.terminal_colors then
    for i = 0, 15 do
      vim.g["terminal_color_" .. i] = s.terminal[i]
    end
  end
end

return M
