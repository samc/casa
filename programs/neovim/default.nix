{ lib, pkgs, ... }:

let inherit (builtins) readFile;
in rec {
  programs.neovim = {
    enable = true;
    viAlias = true;
    vimAlias = true;
    extraConfig = readFile ./config/vimrc;
    plugins = with pkgs.vimPlugins; [
      ale
      fugitive
      fzf-vim
      gruvbox
      indentLine
      nerdtree
      syntastic
      vim-airline
      vim-airline-themes
      vim-devicons
    ];
  };
}
