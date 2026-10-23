local M = {}

function M.get(spec)
  local e = spec.editor
  local s = spec.syntax
  local g = spec.git

  return {
    -- oil
    OilDir    = { fg = s.func },
    OilDirIcon = { link = "OilDir" },
    OilLink   = { fg = s.type },
    OilFile   = { fg = e.fg },
    OilChange = { fg = g.change },
    OilCreate = { fg = g.add },
    OilDelete = { fg = g.delete },
    OilMove   = { fg = s.constant },
    OilCopy   = { fg = s.type },

    -- nvim-tree
    NvimTreeNormal      = { link = "Normal" },
    NvimTreeNormalNC    = { link = "NormalNC" },
    NvimTreeFolderIcon  = { fg = s.func },
    NvimTreeFolderName  = { fg = s.func },
    NvimTreeOpenedFolderName = { fg = s.func, bold = true },
    NvimTreeRootFolder  = { fg = e.comment, italic = true },
    NvimTreeGitDirty    = { fg = g.change },
    NvimTreeGitNew      = { fg = g.add },
    NvimTreeGitDeleted  = { fg = g.delete },

    -- neo-tree
    NeoTreeNormal       = { link = "Normal" },
    NeoTreeNormalNC     = { link = "NormalNC" },
    NeoTreeDirectoryName = { fg = s.func },
    NeoTreeDirectoryIcon = { fg = s.func },
    NeoTreeFileName     = { fg = e.fg },
    NeoTreeGitAdded     = { fg = g.add },
    NeoTreeGitModified  = { fg = g.change },
    NeoTreeGitDeleted   = { fg = g.delete },
    NeoTreeTitleBar     = { link = "FloatTitle" },
    NeoTreeFloatBorder  = { link = "FloatBorder" },
    NeoTreeFloatTitle   = { link = "FloatTitle" },
  }
end

return M
