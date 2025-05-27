{ config, lib, inputs, ... }:
{
  config = {
    home-manager = {
      sharedModules = [
        inputs.plasma_manager.homeManagerModules.plasma-manager
      ];
      users.lcleveland.programs.plasma = {
        enable = true;
        workspace = {
          lookAndFeel = "org.kde.breezedark.desktop";
          wallpaper = "../../../resources/wallpapers/sysmind_brain_green.png";
        };
      };
    };
  };
}
