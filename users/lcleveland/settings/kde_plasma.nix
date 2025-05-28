{ config, lib, inputs, ... }:
{
  config = {
    home-manager = {
      sharedModules = [
        inputs.plasma_manager.homeManagerModules.plasma-manager
      ];
      users.lcleveland.programs.plasma = {
        enable = true;
        panels = [
          {
            location = "bottom";
            widgets = [
              {
                kickoff = {
                  icon = "nix-snowflake-white";
                };
              }
              "org.kde.plasma.marginsseparator"
              {
                digitalClock = {
                  timeZone.lastSelected = "America/Chicago";
                };
              }
            ];
          }
        ];
        workspace = {
          lookAndFeel = "org.kde.breezedark.desktop";
          wallpaper = "/home/lcleveland/sysmind.nix/resources/wallpapers/sysmind_brain_green.png";
        };
      };
    };
  };
}
