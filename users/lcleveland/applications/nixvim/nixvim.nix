{ config, inputs, lib, ... }:
{
  config = {
    home-manager.users.lcleveland = {
      imports = [ inputs.nixvim.homeManagerModules.nixvim ];
      programs.nixvim = {
        enable = true;
      };
    };
  };
}
