####### Configuration for Neovim ##################################################
##                                                                               ##
## * Foo                                                                         ##
##                                                                               ##
###################################################################################

{ config, lib, pkgs, ... }:

let
  inherit (builtins) readFile;
  inherit (lib) mkDefault;

  config = import ../..;
  plugins = pkgs.vimPlugins // pkgs.callPackage ./plugins.nix {};
in {
  programs.neovim = {
    enable = true;
    viAlias = mkDefault true;
    vimAlias = mkDefault true;
    configure = {
      customRC = readFile ../config/vimrc;
      plug.plugins = with plugins; [
        # Themes
        onedark-vim
      ];
    };
  };
}