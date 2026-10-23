local M = {}

-- wave: Oxocarbon-led — cool slate backgrounds, vivid Carbon accents.
M.wave = {
  -- backgrounds (dark < dim < bg < float; cool slate)
  bg       = "#1c1c24",
  bg_dim   = "#16161d",
  bg_dark  = "#101014",
  bg_sel   = "#2a2740",
  bg_float = "#232637",
  bg_menu  = "#191922",
  border   = "#3f3b5c",
  -- foregrounds (warm Kanagawa fuji, cool slate comment)
  fg       = "#dcd7ba",
  fg_dim   = "#c8c4a0",
  fg_dark  = "#76718d",
  none     = "NONE",
  -- accents (vivid, Carbon-like)
  red      = "#e5486a",
  orange   = "#e89060",
  yellow   = "#d9a656",
  green    = "#5cc070",
  teal     = "#3fd0c9",
  blue     = "#80aaff",
  purple   = "#b08cf0",
  pink     = "#e09ab5",
  -- bright variants (lighter versions for terminal)
  red_br   = "#f06080",
  green_br = "#72d888",
  yellow_br= "#e8bc6a",
  blue_br  = "#9abcff",
  purple_br= "#c49cf8",
  teal_br  = "#5fe0d8",
  white    = "#dcd7ba",
  black    = "#101014",
  -- tinted diff backgrounds
  diff_add_bg    = "#1c2f26",
  diff_change_bg = "#2f2a1e",
  diff_delete_bg = "#352021",
}

-- dragon: Kanagawa-led — warm umber backgrounds, muted earthy accents.
M.dragon = {
  -- backgrounds (dark < dim < bg < float; warm stone)
  bg       = "#181616",
  bg_dim   = "#131111",
  bg_dark  = "#0e0c0c",
  bg_sel   = "#2d2a2a",
  bg_float = "#221e1e",
  bg_menu  = "#1b1919",
  border   = "#453b3b",
  -- foregrounds (warm stone comment for contrast)
  fg       = "#cac8c0",
  fg_dim   = "#b8b4ac",
  fg_dark  = "#7c6c6c",
  none     = "NONE",
  -- accents (muted, Kanagawa earth)
  red      = "#c07070",
  orange   = "#c08a5e",
  yellow   = "#c4a882",
  green    = "#8aaa8a",
  teal     = "#6f9a8d",
  blue     = "#8aa3b8",
  purple   = "#9c8ec2",
  pink     = "#c1949c",
  -- bright variants (lighter versions for terminal)
  red_br   = "#d48888",
  green_br = "#a3bfa3",
  yellow_br= "#d8bc98",
  blue_br  = "#a3b8cc",
  purple_br= "#b3a6d4",
  teal_br  = "#8ab5a8",
  white    = "#cac8c0",
  black    = "#0e0c0c",
  -- tinted diff backgrounds
  diff_add_bg    = "#1d2a22",
  diff_change_bg = "#2b2520",
  diff_delete_bg = "#2e2020",
}

return M
