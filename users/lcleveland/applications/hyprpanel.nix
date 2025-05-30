{ config, lib, pkgs, inputs, ... }:
{
  imports = [ inputs.hyprpanel.homeManagerModules.hyprpanel ];
  config = {
    home-manager.users.lcleveland = {
      home.packages = with pkgs; [
        inputs.hyprpanel.packages.${pkgs.system}.wrapper
        hyprpanel
      ];
      programs.hyprpanel = {
        enable = true;
      };
    };
  };
}
