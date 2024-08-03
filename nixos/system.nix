# nix settings
{
  lib,
  config,
  pkgs,
  ...
}: {
  nix.settings.experimental-features = "nix-command flakes";
  system.stateVersion = "23.11";
}
