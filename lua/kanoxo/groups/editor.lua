local M = {}

-- Core editor UI. Everything else links back here as fallback.
function M.get(spec)
  local e = spec.editor
  local s = spec.syntax
  local d = spec.diag

  return {
    Normal        = { fg = e.fg, bg = e.bg },
    NormalNC      = { fg = e.fg, bg = e.bg },
    NormalFloat   = { fg = e.fg, bg = e.bg_float },
    FloatBorder   = { fg = e.border, bg = e.bg_float },
    FloatTitle    = { fg = s.func, bg = e.bg_float, bold = true },
    FloatFooter   = { fg = e.comment, bg = e.bg_float },

    Cursor        = { fg = e.bg, bg = e.fg },
    lCursor       = { fg = e.bg, bg = e.fg },
    TermCursor    = { fg = e.bg, bg = e.fg },
    CursorLine    = { bg = e.bg_sel },
    CursorColumn  = { bg = e.bg_sel },
    CursorLineNr  = { fg = s.constant, bold = true },
    LineNr        = { fg = e.fg_dark },
    SignColumn    = { fg = e.fg_dark, bg = e.bg },
    ColorColumn   = { bg = e.bg_sel },
    EndOfBuffer   = { fg = e.bg_sel },
    Conceal       = { fg = e.fg_dark },

    Folded        = { fg = e.comment, bg = e.bg_sel },
    FoldColumn    = { fg = e.comment, bg = e.bg },

    VertSplit     = { fg = e.border },
    WinSeparator  = { fg = e.border },
    WinBar        = { fg = e.fg_dim, bg = e.bg, bold = true },
    WinBarNC      = { fg = e.comment, bg = e.bg },

    StatusLine    = { fg = e.fg_dim, bg = e.bg_dim },
    StatusLineNC  = { fg = e.comment, bg = e.bg_dim },

    TabLine       = { fg = e.fg_dim, bg = e.bg_dim },
    TabLineFill   = { bg = e.bg_dim },
    TabLineSel    = { fg = e.fg, bg = e.bg, bold = true },

    WildMenu      = { fg = e.bg, bg = s.func },
    Pmenu         = { fg = e.fg_dim, bg = e.bg_menu },
    PmenuSel      = { fg = e.fg, bg = e.bg_sel, bold = true },
    PmenuSbar     = { bg = e.bg_menu },
    PmenuThumb    = { bg = e.fg_dark },
    PmenuKind     = { fg = s.type, bg = e.bg_menu },
    PmenuKindSel  = { fg = s.type, bg = e.bg_sel },
    PmenuExtra    = { fg = e.comment, bg = e.bg_menu },
    PmenuExtraSel = { fg = e.comment, bg = e.bg_sel },

    Visual        = { bg = e.bg_sel },
    VisualNOS     = { bg = e.bg_sel },
    Search        = { fg = e.bg, bg = s.constant },
    IncSearch     = { fg = e.bg, bg = e.match },
    CurSearch     = { fg = e.bg, bg = e.match },
    Substitute    = { fg = e.bg, bg = d.error },
    MatchParen    = { fg = e.match, bold = true, underline = true },

    SpecialKey    = { fg = s.type },
    NonText       = { fg = e.bg_sel },
    Whitespace    = { fg = e.bg_sel },
    QuickFixLine  = { bg = e.bg_sel },
    Directory     = { fg = s.func },
    Title         = { fg = s.func, bold = true },

    ErrorMsg      = { fg = d.error },
    WarningMsg    = { fg = d.warn },
    MoreMsg       = { fg = d.info },
    Question      = { fg = d.ok },
    ModeMsg       = { fg = e.fg_dim },
    MsgArea       = { fg = e.fg_dim },
    MsgSeparator  = { fg = e.border },

    SpellBad      = { sp = d.error, undercurl = true },
    SpellCap      = { sp = d.warn, undercurl = true },
    SpellRare     = { sp = s.keyword, undercurl = true },
    SpellLocal    = { sp = d.info, undercurl = true },
  }
end

return M
