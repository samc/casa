{ sources ? import ./sources.nix }:
let overlay = _: pkgs: { inherit (import sources.niv { }) niv; };
in rec {
  growthatpkgs = import sources.growthatpkgs { };
  nixpkgs = import sources.nixpkgs {
    overlays = [ overlay ];
    config = { allowUnfree = true; };
  };
}
