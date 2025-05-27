{ lib, ... }:
{
  options.users.lcleveland.settings.groups = lib.mkOption {
    type = lib.types.listOf lib.types.str;
    default = [ "wheel" "networkmanager" ];
    description = "Groups for lcleveland";
  };
}
