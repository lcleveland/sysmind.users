{ lib, ... }:
{
  options.users.lcleveland.settings.state_version = lib.mkOption {
    type = lib.types.str;
    default = "25.05";
    description = "State version for lcleveland";
  };
}
