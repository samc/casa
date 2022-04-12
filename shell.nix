{ sources ? import ./nix {} }:
let
  inherit (sources)
    growthatpkgs
    nixpkgs
  ;
in
nixpkgs.mkShell rec {
  name = "casa";
  env = nixpkgs.buildEnv { 
    name = name; 
    paths = buildInputs;
  };
  buildInputs = [
    # <growthatpkgs>
    growthatpkgs.act
    growthatpkgs.nodejs
    growthatpkgs.python
    # <nixpkgs>
    nixpkgs.shfmt
    # ...
  ];
}