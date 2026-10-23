local M = {}

function M.get(spec)
  local e = spec.editor
  local g = spec.git

  return {
    DiffAdd    = { fg = g.add, bg = g.add_bg },
    DiffChange = { fg = g.change, bg = g.change_bg },
    DiffDelete = { fg = g.delete, bg = g.delete_bg },
    DiffText   = { fg = g.text, bg = e.bg_sel },
    Added      = { fg = g.add, bg = g.add_bg },
    Changed    = { fg = g.change, bg = g.change_bg },
    Removed    = { fg = g.delete, bg = g.delete_bg },

    -- neogit / diffview / gitsigns extras fall back to core diff
    DiffAdded            = { link = "DiffAdd" },
    DiffRemoved          = { link = "DiffDelete" },
    DiffChanged          = { link = "DiffChange" },
    DiffFile             = { link = "Directory" },
    DiffIndexLine        = { link = "Comment" },
    DiffLine             = { link = "Comment" },
    DiffNewFile          = { link = "DiffAdd" },
    DiffOldFile          = { link = "DiffDelete" },
    DiffAddAsDelete      = { link = "DiffDelete" },
    DiffDeleteDim        = { link = "Comment" },
  }
end

return M
