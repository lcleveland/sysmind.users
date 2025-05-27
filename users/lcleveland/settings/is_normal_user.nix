{ lib, ... }:
{
  options.users.lcleveland.settings.is_normal_user = lib.mkOption {
    type = lib.types.bool;
    default = true;
    description = "Is lcleveland a normal user";
  };
}
