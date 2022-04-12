# ================================
# === Linux Home Configuration ===
# ================================

{ config, lib, pkgs, ... }:

let config = import ../..;
in rec {

  # === Configuration ===

  home.username = "sam";
  home.homeDirectory = "/home/sam";

  # === User Packages ===

  home.packages = with config.pkgs;
    [
      # <nixpkgs>
      # ...
      # <growthatpkgs>
      # ...
    ];

  # === Programs ===

  programs.git = { extraConfig.credential.helper = "store"; };

  # === Services ===
  # ...

  imports = [ ../common/home.nix ];
}
