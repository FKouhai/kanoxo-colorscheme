local M = {}

function M.get(spec)
  local e = spec.editor
  local g = spec.git

  return {
    DiffAdd    = { fg = g.add },
    DiffChange = { fg = g.change },
    DiffDelete = { fg = g.delete },
    DiffText   = { fg = g.text, bg = e.bg_sel },
    Added      = { fg = g.add },
    Changed    = { fg = g.change },
    Removed    = { fg = g.delete },

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
