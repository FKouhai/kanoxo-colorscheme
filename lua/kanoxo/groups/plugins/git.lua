local M = {}

function M.get(spec)
  local g = spec.git

  return {
    GitSignsAdd    = { fg = g.add },
    GitSignsChange = { fg = g.change },
    GitSignsDelete = { fg = g.delete },
    GitSignsAddNr    = { link = "GitSignsAdd" },
    GitSignsChangeNr = { link = "GitSignsChange" },
    GitSignsDeleteNr = { link = "GitSignsDelete" },
    GitSignsAddLn    = { bg = g.add_bg },
    GitSignsChangeLn = { bg = g.change_bg },
    GitSignsDeleteLn = { bg = g.delete_bg },
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
