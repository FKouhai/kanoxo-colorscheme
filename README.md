# kanoxo

A Neovim colorscheme blending [Kanagawa](https://github.com/rebelot/kanagawa.nvim)'s atmospheric depth with [Oxocarbon](https://github.com/nyoom-engineering/oxocarbon.nvim)'s IBM Design Language palette. Two variants: **wave** (cool blue-purple nights) and **dragon** (earthy neutrals).

## Variants

| | wave | dragon |
|---|---|---|
| Background | `#1c1c24` | `#181616` |
| Foreground | `#dcd7ba` | `#cac8c0` |
| Functions | `#80aaff` | `#90b0cc` |
| Keywords | `#b08cf0` | `#b098e0` |
| Strings | `#5cc070` | `#70b870` |
| Types | `#38ccc4` | `#48b8b0` |

## Requirements

- Neovim 0.9+
- A terminal with true color support (`termguicolors`)

## Installation

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "FKouhai/kanoxo-colorscheme",
  lazy = false,
  priority = 1000,
  opts = {
    variant     = "wave",   -- "wave" | "dragon"
    transparent = false,
  },
  config = function(_, opts)
    require("kanoxo").setup(opts)
    vim.cmd.colorscheme("kanoxo_wave")  -- or kanoxo_dragon
  end,
}
```

### [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
  "FKouhai/kanoxo-colorscheme",
  config = function()
    require("kanoxo").setup({ variant = "wave" })
    vim.cmd("colorscheme kanoxo_wave")
  end,
}
```

### [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'FKouhai/kanoxo-colorscheme'
```

Then in your `init.vim` or `init.lua`:

```vim
" init.vim
lua require("kanoxo").setup({ variant = "wave" })
colorscheme kanoxo_wave
```

```lua
-- init.lua
require("kanoxo").setup({ variant = "wave" })
vim.cmd.colorscheme("kanoxo_wave")
```

### Manual

Clone the repo into your Neovim packages directory:

```sh
# Unix
git clone https://github.com/FKouhai/kanoxo-colorscheme \
  ~/.local/share/nvim/site/pack/kanoxo/start/kanoxo-colorscheme

# Windows
git clone https://github.com/FKouhai/kanoxo-colorscheme \
  %LOCALAPPDATA%\nvim-data\site\pack\kanoxo\start\kanoxo-colorscheme
```

Then in your config:

```lua
require("kanoxo").setup({ variant = "dragon" })
vim.cmd.colorscheme("kanoxo_dragon")
```

## Configuration

`setup()` is optional — calling `vim.cmd.colorscheme("kanoxo_wave")` directly also works with defaults.

```lua
require("kanoxo").setup({
  -- "wave"  — cool blue-purple, closer to Oxocarbon in feel
  -- "dragon" — earthy neutrals, closer to Kanagawa Dragon
  variant = "wave",

  -- remove background highlights (useful for transparent terminals)
  transparent = false,

  -- dim inactive windows (NormalNC uses bg_dim when true, links Normal when false)
  dimInactive = false,

  -- populate vim.g.terminal_color_0 … terminal_color_15
  terminal_colors = true,

  -- italic styles (set italic = false to disable)
  styles = {
    comments  = { italic = true },
    keywords  = { italic = true },
    functions = {},
  },

  -- direct highlight overrides: { Normal = { fg = "#ffffff" } }
  overrides = {},

  -- last-chance hook: function(highlights, spec) end
  on_highlights = nil,
})
```

To switch variants at runtime:

```lua
require("kanoxo").load("dragon")
```

## NixOS / nixvim

The repo ships a flake with an overlay (adds `pkgs.vimPlugins.kanoxo`) and a nixvim module.

**1. Add the flake input and apply the overlay** in your NixOS/home-manager flake:

```nix
inputs.kanoxo.url = "github:FKouhai/kanoxo-colorscheme";

# wherever you configure nixpkgs:
nixpkgs.overlays = [ inputs.kanoxo.overlays.default ];
```

**2a. Import the bundled nixvim module** directly:

```nix
imports = [ inputs.kanoxo.nixvimModules.default ];

kanoxo = {
  enable         = true;
  variant        = "wave";   # "wave" | "dragon"
  transparent    = true;
  terminalColors = true;
};
```

**2b. Or via frostvim** (swaps in place of `kanagawa`):

```nix
imports = [ inputs.frostvim.nixvimModules.kanoxo ];

kanoxo = {
  enable  = true;
  variant = "wave";
};
```

Both options require the overlay to be applied so `pkgs.vimPlugins.kanoxo` resolves.

## Palette

### Wave

| Role | Color | Preview |
|------|-------|---------|
| Background | `#1c1c24` | ![](https://placehold.co/16x16/1c1c24/1c1c24.png) |
| Background dim | `#16161f` | ![](https://placehold.co/16x16/16161f/16161f.png) |
| Selection | `#252334` | ![](https://placehold.co/16x16/252334/252334.png) |
| Comments | `#5f5c78` | ![](https://placehold.co/16x16/5f5c78/5f5c78.png) |
| Foreground | `#dcd7ba` | ![](https://placehold.co/16x16/dcd7ba/dcd7ba.png) |
| Red | `#d04870` | ![](https://placehold.co/16x16/d04870/d04870.png) |
| Orange | `#e89060` | ![](https://placehold.co/16x16/e89060/e89060.png) |
| Yellow | `#c8aa72` | ![](https://placehold.co/16x16/c8aa72/c8aa72.png) |
| Green | `#5cc070` | ![](https://placehold.co/16x16/5cc070/5cc070.png) |
| Teal | `#38ccc4` | ![](https://placehold.co/16x16/38ccc4/38ccc4.png) |
| Blue | `#80aaff` | ![](https://placehold.co/16x16/80aaff/80aaff.png) |
| Purple | `#b08cf0` | ![](https://placehold.co/16x16/b08cf0/b08cf0.png) |
| Pink | `#d880a8` | ![](https://placehold.co/16x16/d880a8/d880a8.png) |

### Dragon

| Role | Color | Preview |
|------|-------|---------|
| Background | `#181616` | ![](https://placehold.co/16x16/181616/181616.png) |
| Background dim | `#1e1c1c` | ![](https://placehold.co/16x16/1e1c1c/1e1c1c.png) |
| Selection | `#272525` | ![](https://placehold.co/16x16/272525/272525.png) |
| Comments | `#555055` | ![](https://placehold.co/16x16/555055/555055.png) |
| Foreground | `#cac8c0` | ![](https://placehold.co/16x16/cac8c0/cac8c0.png) |
| Red | `#cc6080` | ![](https://placehold.co/16x16/cc6080/cc6080.png) |
| Orange | `#c8886a` | ![](https://placehold.co/16x16/c8886a/c8886a.png) |
| Yellow | `#c4b08a` | ![](https://placehold.co/16x16/c4b08a/c4b08a.png) |
| Green | `#70b870` | ![](https://placehold.co/16x16/70b870/70b870.png) |
| Teal | `#48b8b0` | ![](https://placehold.co/16x16/48b8b0/48b8b0.png) |
| Blue | `#90b0cc` | ![](https://placehold.co/16x16/90b0cc/90b0cc.png) |
| Purple | `#b098e0` | ![](https://placehold.co/16x16/b098e0/b098e0.png) |
| Pink | `#c88098` | ![](https://placehold.co/16x16/c88098/c88098.png) |

## Plugin support

Core `NormalFloat` / `FloatBorder` / `FloatTitle` fallbacks plus link-first groups for: GitSigns, Neogit, Diffview, Telescope, FzfLua, Snacks, Noice, nvim-notify, Blink/CMP, Oil, NvimTree, Neo-tree, Trouble, Which-key, Mini, Indent Blankline, Rainbow Delimiters, Lazy, Mason, DAP, Flash/Leap, Treesitter-context, Aerial, Illuminate, Navic, BufferLine, Dashboard, RenderMarkdown. Lualine themes: `kanoxo_wave`, `kanoxo_dragon`. Unknown plugins degrade to core groups; use `overrides` / `on_highlights` for the rest.

## License

MIT
