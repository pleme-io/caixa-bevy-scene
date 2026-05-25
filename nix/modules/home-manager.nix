# nix/modules/home-manager.nix — auto-generated from bevy_scene.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.bevy_scene; in {
  options.programs.bevy_scene = {
    enable = lib.mkEnableOption "bevy_scene";
    package = lib.mkOption { type = lib.types.package; default = pkgs.bevy_scene or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
