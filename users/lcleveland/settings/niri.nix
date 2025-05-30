{ config, lib, inputs, ... }:
{
  config = {
    home-manager.users.lcleveland.programs = {
      fuzzel = {
        enable = true;
      };
      niri = {
        enable = true;
        settings = {
          binds = {
            "Mod+D".action.spawn = "fuzzel";
            "Mod+Q".action = config.lib.niri.actions.close-window;
            "Mod+T".action.spawn = "ghostty";
          };
          input.keyboard.xkb = {
            layout = "us";
            variant = "colemak_dh";
          };
        };
      };
    };
  };
}
