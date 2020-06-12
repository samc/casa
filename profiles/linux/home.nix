################################################################################
##                                                                            ##
##                   Home configuration for user@linux                        ##
##                                                                            ##
################################################################################

{ config, lib, pkgs, ... }:

let
  inherit (builtins) readFile;
  inherit (lib) mkForce;

  config = import ../..;
in

{
  imports = [ ../common/home.nix ];

  # Linux spedic packages.
  home.packages = with pkgs; [

  ];

  ############################################################################
  ##                          Program Overrides                             ##
  ############################################################################

  programs.git = {
    extraConfig.credential.helper = "store";
  };
}
