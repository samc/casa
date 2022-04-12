{ pkgs, lib, ... }:

rec {
  programs.keychain = {
    enable = true;
    enableZshIntegration = true;
    keys = [ "sam.craig" ];
    extraFlags = [
      "--quiet"
      "--noask"
    ];
  };
}
