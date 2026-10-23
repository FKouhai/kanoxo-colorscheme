local p = require("kanoxo.palette").wave

return {
  normal = {
    a = { bg = p.blue, fg = p.bg_dark, gui = "bold" },
    b = { bg = p.bg_sel, fg = p.fg },
    c = { bg = p.bg_dim, fg = p.fg_dim },
  },
  insert = {
    a = { bg = p.green, fg = p.bg_dark, gui = "bold" },
    b = { bg = p.bg_sel, fg = p.fg },
    c = { bg = p.bg_dim, fg = p.fg_dim },
  },
  visual = {
    a = { bg = p.purple, fg = p.bg_dark, gui = "bold" },
    b = { bg = p.bg_sel, fg = p.fg },
    c = { bg = p.bg_dim, fg = p.fg_dim },
  },
  replace = {
    a = { bg = p.red, fg = p.bg_dark, gui = "bold" },
    b = { bg = p.bg_sel, fg = p.fg },
    c = { bg = p.bg_dim, fg = p.fg_dim },
  },
  command = {
    a = { bg = p.orange, fg = p.bg_dark, gui = "bold" },
    b = { bg = p.bg_sel, fg = p.fg },
    c = { bg = p.bg_dim, fg = p.fg_dim },
  },
  inactive = {
    a = { bg = p.bg_dim, fg = p.fg_dark },
    b = { bg = p.bg_dim, fg = p.fg_dark },
    c = { bg = p.bg_dim, fg = p.fg_dark },
  },
}
