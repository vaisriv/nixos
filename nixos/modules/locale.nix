# locale and internationalization settings
{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  time.timeZone = "America/Los_Angeles";
  i18n.defaultLocale = "en_US.UTF-8";
}
