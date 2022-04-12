{ lib, pkgs, ... }@args:

let
  inherit (builtins) readFile;
in rec {
  programs.zsh = {
    enable = true;
    dotDir = ".config/zsh";

    envExtra = readFile ./config/.zshenv;
    initExtraBeforeCompInit = readFile ./config/.zshrc;
    profileExtra = readFile ./config/.zprofile;
  };
}
