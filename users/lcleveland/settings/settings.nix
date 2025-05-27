{ config, lib, ... }:
{
  config = lib.mkIf config.users.lcleveland.settings.enable {
    users.users.lcleveland = {
      extraGroups = config.users.lcleveland.settings.groups;
    };
  };
}
