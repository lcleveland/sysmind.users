{ lib, ... }:
{
  options.users.lcleveland.settings.initial_password = lib.mkOption {
    type = lib.types.str;
    default = "changeme";
    description = "Initial password for lcleveland";
  };
}
