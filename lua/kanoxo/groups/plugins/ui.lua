local M = {}

-- Generic app UI: package managers, diagnostics lists, help, completion docs.
function M.get(spec)
  local e = spec.editor
  local s = spec.syntax
  local d = spec.diag

  return {
    -- noice / notify
    NoiceConfirmBorder      = { fg = d.hint },
    NoiceCmdlinePopupBorder = { fg = s.keyword },
    NoiceCmdlineIcon        = { fg = s.keyword },
    NotifyERRORBorder = { fg = d.error },
    NotifyWARNBorder  = { fg = d.warn },
    NotifyINFOBorder  = { fg = d.info },
    NotifyDEBUGBorder = { fg = e.comment },
    NotifyERRORTitle  = { link = "DiagnosticError" },
    NotifyWARNTitle   = { link = "DiagnosticWarn" },
    NotifyINFOTitle   = { link = "DiagnosticInfo" },
    NotifyDEBUGTitle  = { link = "Comment" },

    -- trouble
    TroubleNormal  = { fg = e.fg, bg = e.bg },
    TroubleCount   = { fg = s.constant },
    TroubleText    = { fg = e.fg_dim },
    TroubleTextError       = { link = "DiagnosticError" },
    TroubleTextWarning     = { link = "DiagnosticWarn" },
    TroubleTextInformation = { link = "DiagnosticInfo" },
    TroubleTextHint        = { link = "DiagnosticHint" },

    -- which-key
    WhichKeyFloat     = { bg = e.bg_dim },
    WhichKey          = { fg = s.func },
    WhichKeyGroup     = { fg = s.keyword },
    WhichKeyDesc      = { fg = e.fg_dim },
    WhichKeySeparator = { fg = e.comment },

    -- indent guides
    IblIndent = { fg = e.bg_sel },
    IblScope  = { fg = e.fg_dark },
    IndentBlanklineChar = { link = "IblIndent" },
    RainbowDelimiterRed    = { fg = d.error },
    RainbowDelimiterYellow = { fg = d.warn },
    RainbowDelimiterBlue   = { fg = s.func },
    RainbowDelimiterOrange = { fg = s.constant },
    RainbowDelimiterGreen  = { fg = d.ok },
    RainbowDelimiterViolet = { fg = s.keyword },
    RainbowDelimiterCyan   = { fg = s.type },

    -- lazy / mason
    LazyNormal  = { link = "NormalFloat" },
    LazyBorder  = { link = "FloatBorder" },
    MasonNormal = { link = "NormalFloat" },
    MasonHeader = { link = "FloatTitle" },
    MasonHighlight = { fg = s.func },

    -- dap
    DapBreakpoint         = { fg = d.error },
    DapStopped            = { fg = d.warn },
    DapUIPlayPause        = { fg = d.ok },
    NvimDapVirtualText    = { link = "Comment" },

    -- flash / leap / hop
    FlashLabel = { fg = e.bg, bg = e.match, bold = true },
    LeapMatch  = { fg = e.match, bold = true },
    HopNextKey = { fg = e.match, bold = true },

    -- misc context UI
    TreesitterContext     = { bg = e.bg_dim },
    AerialLine            = { bg = e.bg_sel },
    IlluminatedWordText   = { link = "LspReferenceText" },
    IlluminatedWordRead   = { link = "LspReferenceRead" },
    IlluminatedWordWrite  = { link = "LspReferenceWrite" },
    NavicText             = { fg = e.fg_dim },
    NavicSeparator        = { fg = e.comment },

    -- bufferline / dashboard fallbacks
    BufferLineFill        = { link = "TabLineFill" },
    BufferLineBackground  = { link = "TabLine" },
    BufferLineBufferSelected = { link = "TabLineSel" },
    DashboardHeader = { fg = s.func },
    DashboardCenter = { fg = e.fg_dim },
    DashboardFooter = { fg = e.comment },

    -- markdown / headlines
    RenderMarkdownCode    = { bg = e.bg_dim },
    RenderMarkdownH1Bg    = { bg = e.bg_sel },
    Headline1 = { fg = s.func, bold = true },
    Headline2 = { fg = s.type, bold = true },
    Headline3 = { fg = s.keyword, bold = true },
  }
end

return M
