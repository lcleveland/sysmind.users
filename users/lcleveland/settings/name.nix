{ lib, ... }:
{
  options.users.lcleveland.settings.name = lib.mkOption {
    type = lib.types.str;
    default = "Lyle Cleveland";
    description = "Name for lcleveland";
  };
}
