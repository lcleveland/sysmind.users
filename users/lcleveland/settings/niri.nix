{ config, lib, inputs, ... }:
{
  programs.niri = {
    enable = true;
    settings = {
      binds = {
        "Mod+T".action.spawn = "ghostty";
      };
      input.keyboard.xkb.variant = "colemak_dh";
    };
  };
}
