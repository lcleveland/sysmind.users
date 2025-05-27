{ config, lib, ... }:
{
  config = {
    home-manager.users.lcleveland.programs.zen-browser = {
      enable = true;
      policies = {
        DisableAppUpdate = true;
        DisableTelemetry = true;
      };
    };
  };
}
