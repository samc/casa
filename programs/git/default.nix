{ lib, pkgs, ... }:

rec {
  programs.git = {
    enable = true;
    userName = "Sam Craig";
    userEmail = "contact@samcraig.io";
    aliases = { 
      uncommit = "reset 'HEAD^'"; };
  };
}
