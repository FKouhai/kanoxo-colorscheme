local editor     = require("kanoxo.groups.editor")
local syntax     = require("kanoxo.groups.syntax")
local diff       = require("kanoxo.groups.diff")
local lsp        = require("kanoxo.groups.lsp")
local treesitter = require("kanoxo.groups.treesitter")
local cmp        = require("kanoxo.groups.plugins.cmp")
local telescope  = require("kanoxo.groups.plugins.telescope")
local picker     = require("kanoxo.groups.plugins.picker")
local files      = require("kanoxo.groups.plugins.files")
local git        = require("kanoxo.groups.plugins.git")
local ui         = require("kanoxo.groups.plugins.ui")

local M = {}

-- Collect every module into one { group = attrs } table.
-- Modules return tables; links are used for unknown-plugin fallback.
function M.collect(spec, config)
  local out = {}
  local mods = { editor, syntax, diff, lsp, treesitter, cmp, telescope, picker, files, git, ui }
  for _, mod in ipairs(mods) do
    for group, attrs in pairs(mod.get(spec, config)) do
      out[group] = attrs
    end
  end

  if config and config.dimInactive == false then
    out.NormalNC = { link = "Normal" }
  end

  if config and config.overrides then
    for group, attrs in pairs(config.overrides) do
      out[group] = attrs
    end
  end

  if config and type(config.on_highlights) == "function" then
    config.on_highlights(out, spec)
  end

  return out
end

-- Back-compat: old `require("kanoxo.groups").setup(spec)` entrypoint.
function M.setup(spec, config)
  require("kanoxo.theme").apply(spec, config or {})
end

return M
