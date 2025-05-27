{ lib, ... }:
{
  options.users.lcleveland.settings.username = lib.mkOption {
    type = lib.types.str;
    default = "lcleveland";
    description = "Username for lcleveland";
  };
}
