local M = {}

function M.get(spec, config)
  local e = spec.editor
  local s = spec.syntax
  local d = spec.diag
  local st = (config and config.styles) or {}
  local comment_italic = st.comments == nil and true or st.comments.italic ~= false
  local keyword_italic = st.keywords == nil and true or st.keywords.italic ~= false
  local function_italic = st.functions ~= nil and st.functions.italic == true

  return {
    Identifier     = { fg = e.fg },
    Function       = { fg = s.func, italic = function_italic or nil },
    Statement      = { fg = s.keyword },
    Keyword        = { fg = s.keyword, italic = keyword_italic or nil },
    Conditional    = { fg = s.keyword, italic = keyword_italic or nil },
    Repeat         = { fg = s.keyword, italic = keyword_italic or nil },
    Label          = { fg = s.keyword },
    Operator       = { fg = s.operator },
    Exception      = { fg = d.error },
    PreProc        = { fg = s.preproc },
    Include        = { fg = s.preproc },
    Define         = { fg = s.preproc },
    Macro          = { fg = s.preproc },
    PreCondit      = { fg = s.preproc },
    Type           = { fg = s.type },
    StorageClass   = { fg = s.keyword },
    Structure      = { fg = s.type },
    Typedef        = { fg = s.type },
    String         = { fg = s.string },
    Character      = { fg = s.string },
    Number         = { fg = s.constant },
    Boolean        = { fg = s.constant },
    Float          = { fg = s.constant },
    Constant       = { fg = s.constant },
    Special        = { fg = s.special },
    SpecialChar    = { fg = s.escape },
    Tag            = { fg = s.tag },
    Delimiter      = { fg = s.operator },
    SpecialComment = { fg = e.comment, italic = comment_italic or nil },
    Comment        = { fg = e.comment, italic = comment_italic or nil },
    Debug          = { fg = s.constant },
    Underlined     = { underline = true },
    Bold           = { bold = true },
    Italic         = { italic = true },
    Todo           = { fg = d.warn, bold = true },
    Error          = { fg = d.error },
  }
end

return M
