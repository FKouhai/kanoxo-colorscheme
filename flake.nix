{
  description = "kanoxo — Kanagawa × Oxocarbon Neovim colorscheme";

  inputs.nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

  outputs =
    { self, nixpkgs }:
    let
      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "aarch64-darwin"
      ];
      forAllSystems = nixpkgs.lib.genAttrs systems;
    in
    {
      overlays.default = import ./nix/overlay.nix self;

      nixvimModules.default = import ./nix/nixvim-module.nix;

      packages = forAllSystems (system: {
        default = nixpkgs.legacyPackages.${system}.callPackage ./nix/package.nix { src = self; };
      });
    };
}
