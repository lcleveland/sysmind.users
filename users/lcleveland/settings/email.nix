{ lib, ... }:
{
  options.users.lcleveland.settings.email = lib.mkOption {
    type = lib.types.str;
    default = "lcleveland@proton.me";
    description = "Email address for lcleveland";
  };
}
