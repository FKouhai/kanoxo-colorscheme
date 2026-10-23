local M = {}

-- Maps semantic roles to palette entries.
-- Highlight groups reference spec, never the palette directly.
function M.get(p)
  return {
    editor = {
      bg        = p.bg,
      bg_dim    = p.bg_dim,
      bg_dark   = p.bg_dark,
      bg_sel    = p.bg_sel,
      bg_float  = p.bg_float,
      bg_menu   = p.bg_menu,
      border    = p.border,
      fg        = p.fg,
      fg_dim    = p.fg_dim,
      fg_dark   = p.fg_dark,
      comment   = p.fg_dark,
      match     = p.orange,
      none      = p.none,
    },
    syntax = {
      func      = p.blue,
      keyword   = p.purple,
      string    = p.green,
      type      = p.teal,
      constant  = p.orange,
      operator  = p.fg_dim,
      special   = p.pink,
      tag       = p.teal,
      escape    = p.pink,
      preproc   = p.teal,
    },
    diag = {
      error = p.red,
      warn  = p.yellow,
      -- info=blue is conventional (func is also blue, but diagnostics
      -- and code occupy different UI areas so they rarely clash).
      info  = p.blue,
      -- hint reuses teal at a different lightness than type via teal_br.
      hint  = p.teal_br,
      ok    = p.green,
    },
    git = {
      add    = p.green,
      change = p.yellow,
      delete = p.red,
      text   = p.blue,
      add_bg    = p.diff_add_bg,
      change_bg = p.diff_change_bg,
      delete_bg = p.diff_delete_bg,
    },
    terminal = {
      [0]  = p.black,
      [1]  = p.red,
      [2]  = p.green,
      [3]  = p.yellow,
      [4]  = p.blue,
      [5]  = p.purple,
      [6]  = p.teal,
      [7]  = p.fg_dim,
      [8]  = p.fg_dark,
      [9]  = p.red_br,
      [10] = p.green_br,
      [11] = p.yellow_br,
      [12] = p.blue_br,
      [13] = p.purple_br,
      [14] = p.teal_br,
      [15] = p.white,
    },
  }
end

return M
