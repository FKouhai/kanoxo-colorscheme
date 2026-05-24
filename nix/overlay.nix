# Usage from flake:   import ./nix/overlay.nix self
# Usage standalone:   import ./nix/overlay.nix /path/to/kanoxo-colorscheme
src: final: prev: {
  vimPlugins = prev.vimPlugins // {
    kanoxo = prev.vimUtils.buildVimPlugin {
      pname = "kanoxo";
      version = "unstable";
      inherit src;
    };
  };
}
