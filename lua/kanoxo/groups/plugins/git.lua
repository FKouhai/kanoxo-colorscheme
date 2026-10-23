local M = {}

function M.get(spec)
  local e = spec.editor
  local g = spec.git

  return {
    GitSignsAdd    = { fg = g.add },
    GitSignsChange = { fg = g.change },
    GitSignsDelete = { fg = g.delete },
    GitSignsAddNr    = { link = "GitSignsAdd" },
    GitSignsChangeNr = { link = "GitSignsChange" },
    GitSignsDeleteNr = { link = "GitSignsDelete" },
    GitSignsAddLn    = { bg = e.bg_dim },
    GitSignsChangeLn = { bg = e.bg_dim },
    GitSignsCurrentLineBlame = { link = "Comment" },

    -- neogit + diffview fall back to core diff/git
    NeogitBranch        = { link = "Keyword" },
    NeogitRemote        = { link = "String" },
    NeogitDiffAdd       = { link = "DiffAdd" },
    NeogitDiffDelete    = { link = "DiffDelete" },
    NeogitDiffContext   = { link = "Normal" },
    NeogitHunkHeader    = { link = "Folded" },
    DiffviewFilePanelTitle = { link = "FloatTitle" },
    DiffviewNormal       = { link = "Normal" },
  }
end

return M
