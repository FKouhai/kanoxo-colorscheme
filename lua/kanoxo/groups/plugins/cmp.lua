local M = {}

function M.get(spec)
  local e = spec.editor
  local s = spec.syntax

  return {
    -- nvim-cmp legacy (fallback for any cmp-based UI)
    CmpItemAbbr           = { fg = e.fg_dim },
    CmpItemAbbrMatch      = { fg = e.match, bold = true },
    CmpItemAbbrMatchFuzzy = { fg = e.match, bold = true },
    CmpItemMenu           = { fg = e.comment },
    CmpItemKind           = { link = "PmenuKind" },

    -- blink.cmp
    BlinkCmpMenu          = { fg = e.fg_dim, bg = e.bg_menu },
    BlinkCmpMenuBorder    = { fg = e.border, bg = e.bg_menu },
    BlinkCmpMenuSelection = { bg = e.bg_sel, bold = true },
    BlinkCmpScrollBarThumb = { bg = e.fg_dark },
    BlinkCmpLabel         = { fg = e.fg_dim },
    BlinkCmpLabelMatch    = { fg = e.match, bold = true },
    BlinkCmpLabelDetail   = { fg = e.comment },
    BlinkCmpDoc           = { link = "NormalFloat" },
    BlinkCmpDocBorder     = { link = "FloatBorder" },

    BlinkCmpKindFunction = { link = "Function" },
    BlinkCmpKindMethod    = { link = "@function.method" },
    BlinkCmpKindVariable  = { link = "@variable" },
    BlinkCmpKindField     = { link = "@property" },
    BlinkCmpKindText      = { link = "Comment" },
    BlinkCmpKindKeyword   = { link = "Keyword" },
    BlinkCmpKindClass     = { link = "Structure" },
    BlinkCmpKindInterface = { link = "@type" },
    BlinkCmpKindModule    = { link = "@module" },
    BlinkCmpKindProperty  = { link = "@property" },
    BlinkCmpKindUnit      = { link = "Number" },
    BlinkCmpKindValue     = { link = "Constant" },
    BlinkCmpKindEnum      = { link = "@type" },
    BlinkCmpKindEnumMember = { link = "@constant" },
    BlinkCmpKindConstant  = { link = "Constant" },
    BlinkCmpKindSnippet   = { link = "Special" },
    BlinkCmpKindColor     = { link = "Special" },
    BlinkCmpKindFile      = { link = "Directory" },
    BlinkCmpKindFolder    = { link = "Directory" },
    BlinkCmpKindReference = { link = "@type" },
    BlinkCmpKindEvent     = { link = "Special" },
    BlinkCmpKindOperator  = { link = "Operator" },
    BlinkCmpKindTypeParameter = { link = "@type" },
    BlinkCmpKindCopilot   = { fg = s.type },
  }
end

return M
