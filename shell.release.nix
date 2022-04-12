{ sources ? import ./nix {} }:
let
  inherit (sources)
    growthatpkgs
    nixpkgs
  ;
in
nixpkgs.mkShell rec {
  name = "release.casa";
  env = nixpkgs.buildEnv { 
    name = name; 
    paths = buildInputs;
  };
  buildInputs = [
    # <growthatpkgs>
    growthatpkgs.jq_1_6
    growthatpkgs.nodejs_12_18_3
    growthatpkgs.python_3_7
    # <nixpkgs>
    # ...
  ];
}