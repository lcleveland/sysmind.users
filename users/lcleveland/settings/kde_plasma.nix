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
            widgets = [
              {
                digitalClock = {
                  timeZone.selected = [ "Local" ];
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
