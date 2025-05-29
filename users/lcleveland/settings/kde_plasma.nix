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
              {
                iconTasks = {
                  appearance = {
                    indicateAudioStreams = true;
                  };
                };
              }
              {
                systemTray = {
                  items = {
                    shown = [
                      "org.kde.plasma.networkmanagement"
                      "org.kde.plasma.volume"
                      "org.kde.plasma.battery"
                    ];
                  };
                };
              }
              {
                digitalClock = {
                  timeZone = {
                    selected = [ "America/Chicago" ];
                    lastSelected = "America/Chicago";
                  };
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
