# nix/modules/darwin.nix — auto-generated from bevy_scene.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.services.bevy_scene; in {
  options.services.bevy_scene = {
    enable = lib.mkEnableOption "bevy_scene";
    package = lib.mkOption { type = lib.types.package; default = pkgs.bevy_scene or null; };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
