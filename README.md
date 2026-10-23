# kanoxo

A Neovim colorscheme blending [Kanagawa](https://github.com/rebelot/kanagawa.nvim)'s atmospheric depth with [Oxocarbon](https://github.com/nyoom-engineering/oxocarbon.nvim)'s IBM Design Language palette. Two variants: **wave** (cool blue-purple nights) and **dragon** (earthy neutrals).

## Variants

| | wave | dragon |
|---|---|---|
| Background | `#1c1c24` | `#181616` |
| Foreground | `#dcd7ba` | `#cac8c0` |
| Functions | `#80aaff` | `#8aa3b8` |
| Keywords | `#b08cf0` | `#9c8ec2` |
| Strings | `#5cc070` | `#8aaa8a` |
| Types | `#3fd0c9` | `#6f9a8d` |

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
| Background dim | `#16161d` | ![](https://placehold.co/16x16/16161d/16161d.png) |
| Selection | `#2a2740` | ![](https://placehold.co/16x16/2a2740/2a2740.png) |
| Comments | `#76718d` | ![](https://placehold.co/16x16/76718d/76718d.png) |
| Foreground | `#dcd7ba` | ![](https://placehold.co/16x16/dcd7ba/dcd7ba.png) |
| Red | `#e5486a` | ![](https://placehold.co/16x16/e5486a/e5486a.png) |
| Orange | `#e89060` | ![](https://placehold.co/16x16/e89060/e89060.png) |
| Yellow | `#d9a656` | ![](https://placehold.co/16x16/d9a656/d9a656.png) |
| Green | `#5cc070` | ![](https://placehold.co/16x16/5cc070/5cc070.png) |
| Teal | `#3fd0c9` | ![](https://placehold.co/16x16/3fd0c9/3fd0c9.png) |
| Blue | `#80aaff` | ![](https://placehold.co/16x16/80aaff/80aaff.png) |
| Purple | `#b08cf0` | ![](https://placehold.co/16x16/b08cf0/b08cf0.png) |
| Pink | `#e09ab5` | ![](https://placehold.co/16x16/e09ab5/e09ab5.png) |

### Dragon

| Role | Color | Preview |
|------|-------|---------|
| Background | `#181616` | ![](https://placehold.co/16x16/181616/181616.png) |
| Background dim | `#131111` | ![](https://placehold.co/16x16/131111/131111.png) |
| Selection | `#2d2a2a` | ![](https://placehold.co/16x16/2d2a2a/2d2a2a.png) |
| Comments | `#7c6c6c` | ![](https://placehold.co/16x16/7c6c6c/7c6c6c.png) |
| Foreground | `#cac8c0` | ![](https://placehold.co/16x16/cac8c0/cac8c0.png) |
| Red | `#c07070` | ![](https://placehold.co/16x16/c07070/c07070.png) |
| Orange | `#c08a5e` | ![](https://placehold.co/16x16/c08a5e/c08a5e.png) |
| Yellow | `#c4a882` | ![](https://placehold.co/16x16/c4a882/c4a882.png) |
| Green | `#8aaa8a` | ![](https://placehold.co/16x16/8aaa8a/8aaa8a.png) |
| Teal | `#6f9a8d` | ![](https://placehold.co/16x16/6f9a8d/6f9a8d.png) |
| Blue | `#8aa3b8` | ![](https://placehold.co/16x16/8aa3b8/8aa3b8.png) |
| Purple | `#9c8ec2` | ![](https://placehold.co/16x16/9c8ec2/9c8ec2.png) |
| Pink | `#c1949c` | ![](https://placehold.co/16x16/c1949c/c1949c.png) |

## Plugin support

Core `NormalFloat` / `FloatBorder` / `FloatTitle` fallbacks plus link-first groups for: GitSigns, Neogit, Diffview, Telescope, FzfLua, Snacks, Noice, nvim-notify, Blink/CMP, Oil, NvimTree, Neo-tree, Trouble, Which-key, Mini, Indent Blankline, Rainbow Delimiters, Lazy, Mason, DAP, Flash/Leap, Treesitter-context, Aerial, Illuminate, Navic, BufferLine, Dashboard, RenderMarkdown. Lualine themes: `kanoxo_wave`, `kanoxo_dragon`. Unknown plugins degrade to core groups; use `overrides` / `on_highlights` for the rest.

## License

MIT
