{ config, lib, inputs, ... }:
{
  config = {
    home-manager.users.lcleveland.programs = {
      fuzzel = {
        enable = true;
      };
      niri = {
        settings = {
          binds = with config.lib.niri.actions; {
            "Mod+D".action.spawn = "fuzzel";
            "Mod+Q".action = close-window;
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
