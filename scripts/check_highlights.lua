-- Smoke test: load each variant, assert core + plugin fallbacks resolve.
-- Usage: nvim --headless -u NONE --noplugin -l scripts/check_highlights.lua
vim.opt.runtimepath:prepend(".")

local failures = 0
local function assert_hl(name)
  local ok, hl = pcall(vim.api.nvim_get_hl, 0, { name = name, link = true })
  if not ok or hl == nil then
    print("MISSING: " .. name)
    failures = failures + 1
    return
  end
  if vim.tbl_isempty(hl) then
    print("EMPTY: " .. name)
    failures = failures + 1
  end
end

local core = {
  "Normal", "NormalFloat", "FloatBorder", "FloatTitle", "FloatFooter",
  "Pmenu", "PmenuSel", "WinSeparator", "WinBar", "Substitute",
  "DiagnosticError", "DiagnosticDeprecated", "LspSignatureActiveParameter",
  "@lsp.type.function", "@lsp.mod.readonly",
  "DiffAdd", "DiffDelete",
}

local plugins = {
  "TelescopeBorder", "FzfLuaBorder", "BlinkCmpMenu", "CmpItemAbbr",
  "GitSignsAdd", "NeogitDiffAdd", "NvimTreeFolderName", "NeoTreeDirectoryName",
  "LazyNormal", "MasonNormal", "NotifyERRORBorder", "TroubleNormal",
  "WhichKey", "IblIndent", "RainbowDelimiterRed", "DapBreakpoint",
  "FlashLabel", "TreesitterContext", "BufferLineBufferSelected",
  "OilDir", "MiniStatuslineModeNormal", "SnacksPickerBorder",
}

for _, variant in ipairs({ "wave", "dragon" }) do
  require("kanoxo").setup({ variant = variant })
  require("kanoxo").load(variant)
  assert(vim.g.colors_name == "kanoxo_" .. variant, "colors_name")
  for _, name in ipairs(core) do
    assert_hl(name)
  end
  for _, name in ipairs(plugins) do
    assert_hl(name)
  end
  -- overrides + on_highlights hook
  require("kanoxo").setup({
    variant = variant,
    overrides = { Normal = { fg = "#ffffff" } },
    on_highlights = function(hl)
      hl.CustomHook = { fg = "#000000" }
    end,
  })
  require("kanoxo").load(variant)
  assert_hl("CustomHook")
  print("variant ok: " .. variant)
end

if failures > 0 then
  print("FAIL: " .. failures)
  os.exit(1)
end
print("PASS")
