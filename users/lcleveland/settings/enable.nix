{ lib, ... }:
{
  options.users.lcleveland.settings.enable = lib.mkOption {
    type = lib.types.bool;
    default = true;
    description = "Enable lcleveland";
  };
}
