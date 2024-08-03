# hyprland and desktop environment install (configuration is in home-manager)
{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  programs = {
    hyprland = {
      enable = true;
      # package = inputs.hyprland.packages."${pkgs.system}".hyprland;
    };
  };
}
