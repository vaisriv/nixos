# network, hostname, and bluetooth
{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  networking.hostName = "olorin";
  networking.networkmanager.enable = true;
}
