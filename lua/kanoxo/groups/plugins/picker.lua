local M = {}

function M.get(spec)
  local e = spec.editor
  local s = spec.syntax
  local d = spec.diag

  return {
    SnacksDashboardHeader = { fg = s.func },
    SnacksDashboardFooter = { fg = e.comment },
    SnacksDashboardTitle  = { fg = s.func, bold = true },
    SnacksDashboardKey    = { fg = s.constant, bold = true },
    SnacksDashboardDesc   = { fg = e.fg_dim },
    SnacksDashboardIcon   = { fg = s.type },
    SnacksPickerBorder    = { fg = e.border },
    SnacksPickerMatch     = { fg = e.match, bold = true },
    SnacksPickerDir       = { link = "Directory" },
    SnacksPickerFile      = { link = "Normal" },
    SnacksPickerTitle     = { link = "FloatTitle" },

    -- fzf-lua links back to telescope/picker primitives
    FzfLuaNormal       = { link = "NormalFloat" },
    FzfLuaBorder       = { link = "FloatBorder" },
    FzfLuaTitle        = { link = "FloatTitle" },
    FzfLuaPreviewTitle = { link = "TelescopePreviewTitle" },
    FzfLuaCursorLine   = { link = "TelescopeSelection" },
    FzfLuaSearch       = { fg = e.match, bold = true },

    -- mini.*
    MiniStatuslineModeNormal  = { fg = e.bg, bg = s.func, bold = true },
    MiniStatuslineModeInsert  = { fg = e.bg, bg = s.string, bold = true },
    MiniStatuslineModeVisual  = { fg = e.bg, bg = s.keyword, bold = true },
    MiniStatuslineModeReplace = { fg = e.bg, bg = d.error, bold = true },
    MiniStatuslineModeCommand = { fg = e.bg, bg = s.constant, bold = true },
    MiniStatuslineFilename    = { fg = e.fg_dim, bg = e.bg_dim },
    MiniStatuslineInactive    = { fg = e.comment, bg = e.bg_dim },
    MiniIndentscopeSymbol     = { fg = e.bg_sel },
    MiniPickBorder            = { fg = e.border },
    MiniPickMatchCurrent      = { bg = e.bg_sel },
    MiniPickMatchRanges       = { fg = e.match, bold = true },
    MiniPickPrompt            = { fg = s.func },
    MiniFilesTitle            = { link = "FloatTitle" },
    MiniFilesBorder           = { link = "FloatBorder" },
  }
end

return M
