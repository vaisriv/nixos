# bootloader options
{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  boot.loader.systemd-boot.enable = true;
}
