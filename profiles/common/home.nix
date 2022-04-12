# =================================
# === Common Home Configuration ===
# =================================

{ lib, pkgs, ... }:

let
  config = import ../..;
in rec {

  # === Configuration ===

  home.stateVersion = "20.09";

  home.file = {
    # `zsh` aliases
    ".config/zsh/aliases".source = config.file "programs/zsh/aliases";
    ".config/zsh/aliases".recursive = true;
    # `zsh` config
    ".config/zsh/config".source = config.file "programs/zsh/config";
    ".config/zsh/config".recursive = true;
    # `zsh` scripts
    ".config/zsh/scripts".source = config.file "programs/zsh/scripts";
    ".config/zsh/scripts".recursive = true;
    # `zsh` themes
    ".config/zsh/themes".source = config.file "programs/zsh/themes";
    ".config/zsh/themes".recursive = true;
  };

  # === User Packages ===

  home.packages = with config.pkgs; [
    # <nixpkgs>
    nixpkgs.act
    nixpkgs.direnv
    nixpkgs.gitAndTools.gh
    nixpkgs.gitAndTools.gitflow
    nixpkgs.glow
    nixpkgs.gtop
    nixpkgs.jq
    nixpkgs.ngrok
    nixpkgs.niv
    nixpkgs.openssh
    nixpkgs.screenfetch
    nixpkgs.vault
    nixpkgs.vimPlugins.vim-plug
    # <growthatpkgs>
    growthatpkgs.bazel
    growthatpkgs.clippy
    growthatpkgs.go
    growthatpkgs.google-cloud-sdk
    growthatpkgs.helm
    growthatpkgs.k9s
    growthatpkgs.python
    growthatpkgs.nodejs
    growthatpkgs.rust
    growthatpkgs.skaffold
  ];

  # === Programs ===

  imports = with config.programs; [ 
    git
    fzf
    keychain
    neovim
    ssh
    tmux
    zsh
  ];

  programs.home-manager = { enable = true; };

  # === Services ===

  services.lorri = {
    enable = true;
    package = config.pkgs.nixpkgs.lorri;
  };
}
