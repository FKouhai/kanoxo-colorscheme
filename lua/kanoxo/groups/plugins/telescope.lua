local M = {}

function M.get(spec)
  local e = spec.editor
  local s = spec.syntax

  return {
    TelescopeBorder       = { fg = e.border, bg = e.bg },
    TelescopeNormal       = { fg = e.fg, bg = e.bg },
    TelescopePromptNormal = { fg = e.fg, bg = e.bg_dim },
    TelescopePromptBorder = { fg = e.border, bg = e.bg_dim },
    TelescopePromptTitle  = { fg = e.bg, bg = s.func, bold = true },
    TelescopePreviewTitle = { fg = e.bg, bg = s.type, bold = true },
    TelescopeResultsTitle = { fg = e.bg, bg = s.keyword, bold = true },
    TelescopeSelection    = { bg = e.bg_sel },
    TelescopeMatching     = { fg = e.match, bold = true },
    TelescopePreviewBorder = { link = "TelescopeBorder" },
    TelescopeResultsBorder = { link = "TelescopeBorder" },
    TelescopePromptPrefix = { fg = s.func },
  }
end

return M
