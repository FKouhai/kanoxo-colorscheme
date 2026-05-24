{ vimUtils, src }:
vimUtils.buildVimPlugin {
  pname = "kanoxo";
  version = "unstable";
  inherit src;
}
