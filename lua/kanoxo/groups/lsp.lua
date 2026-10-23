local M = {}

function M.get(spec)
  local e = spec.editor
  local d = spec.diag

  return {
    DiagnosticError          = { fg = d.error },
    DiagnosticWarn           = { fg = d.warn },
    DiagnosticInfo           = { fg = d.info },
    DiagnosticHint           = { fg = d.hint },
    DiagnosticOk             = { fg = d.ok },
    DiagnosticUnderlineError = { sp = d.error, undercurl = true },
    DiagnosticUnderlineWarn  = { sp = d.warn, undercurl = true },
    DiagnosticUnderlineInfo  = { sp = d.info, undercurl = true },
    DiagnosticUnderlineHint  = { sp = d.hint, undercurl = true },
    DiagnosticUnderlineOk    = { sp = d.ok, undercurl = true },
    DiagnosticVirtualTextError = { fg = d.error, bg = e.bg_dim },
    DiagnosticVirtualTextWarn  = { fg = d.warn, bg = e.bg_dim },
    DiagnosticVirtualTextInfo  = { fg = d.info, bg = e.bg_dim },
    DiagnosticVirtualTextHint  = { fg = d.hint, bg = e.bg_dim },
    DiagnosticVirtualTextOk    = { fg = d.ok, bg = e.bg_dim },
    DiagnosticDeprecated     = { sp = d.error, strikethrough = true },
    DiagnosticUnnecessary    = { link = "Comment" },

    LspReferenceText  = { bg = e.bg_sel },
    LspReferenceRead  = { bg = e.bg_sel },
    LspReferenceWrite = { bg = e.bg_sel, bold = true },
    LspInlayHint      = { fg = e.comment, italic = true },
    LspCodeLens       = { fg = e.comment, italic = true },
    LspCodeLensSeparator = { fg = e.fg_dark },
    LspSignatureActiveParameter = { bg = e.bg_sel, bold = true },
  }
end

return M
