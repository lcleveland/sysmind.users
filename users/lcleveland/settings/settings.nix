{ config, lib, ... }:
{
  config = lib.mkIf config.users.lcleveland.settings.enable {
    system.keyboard.keymap.variant = "colmak_dh";
    users.users.lcleveland = {
      description = config.users.lcleveland.settings.name;
      extraGroups = config.users.lcleveland.settings.groups;
      initialPassword = config.users.lcleveland.settings.initial_password;
      isNormalUser = config.users.lcleveland.settings.is_normal_user;
      isSystemUser = !config.users.lcleveland.settings.is_system_user;
    };
  };
}
