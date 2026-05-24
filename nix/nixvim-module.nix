{
  config,
  lib,
  pkgs,
  ...
}:
# Requires pkgs.vimPlugins.kanoxo to exist — apply overlays.default first.
# In your flake: nixpkgs.overlays = [ inputs.kanoxo.overlays.default ];
{
  options.kanoxo = {
    enable = lib.mkEnableOption "kanoxo colorscheme";

    variant = lib.mkOption {
      type = lib.types.enum [
        "wave"
        "dragon"
      ];
      default = "wave";
      description = "wave — cool blue-purple. dragon — earthy neutrals.";
    };

    transparent = lib.mkOption {
      type = lib.types.bool;
      default = true;
    };

    terminalColors = lib.mkOption {
      type = lib.types.bool;
      default = true;
    };
  };

  config = lib.mkIf config.kanoxo.enable {
    extraPlugins = [ pkgs.vimPlugins.kanoxo ];

    extraConfigLua = ''
      require("kanoxo").setup({
        variant         = "${config.kanoxo.variant}",
        transparent     = ${lib.boolToString config.kanoxo.transparent},
        terminal_colors = ${lib.boolToString config.kanoxo.terminalColors},
      })
      vim.cmd.colorscheme("kanoxo_${config.kanoxo.variant}")
    '';
  };
}
