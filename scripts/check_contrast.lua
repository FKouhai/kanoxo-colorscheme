-- Contrast check: WCAG ratio for Normal and Comment per variant.
-- Usage: nvim --headless -u NONE --noplugin -l scripts/check_contrast.lua
vim.opt.runtimepath:prepend(".")

local function lum(hex)
  local r = tonumber(hex:sub(2, 3), 16) / 255
  local g = tonumber(hex:sub(4, 5), 16) / 255
  local b = tonumber(hex:sub(6, 7), 16) / 255
  local f = function(c)
    return c <= 0.03928 and c / 12.92 or ((c + 0.055) / 1.055) ^ 2.4
  end
  return 0.2126 * f(r) + 0.7152 * f(g) + 0.0722 * f(b)
end

local function ratio(a, b)
  local l1, l2 = lum(a), lum(b)
  if l1 < l2 then
    l1, l2 = l2, l1
  end
  return (l1 + 0.05) / (l2 + 0.05)
end

local failures = 0
for _, variant in ipairs({ "wave", "dragon" }) do
  local p = require("kanoxo.palette")[variant]
  local n = ratio(p.fg, p.bg)
  local c = ratio(p.fg_dark, p.bg)
  print(string.format("%s Normal %s/%s = %.2f (want >= 7)", variant, p.fg, p.bg, n))
  print(string.format("%s Comment %s/%s = %.2f (want >= 3)", variant, p.fg_dark, p.bg, c))
  if n < 7 then
    failures = failures + 1
  end
  if c < 3 then
    failures = failures + 1
  end
end

if failures > 0 then
  print("CONTRAST FAIL: " .. failures)
  os.exit(1)
end
print("CONTRAST PASS")
