{ config, inputs, lib, ... }:
{
  config = {
    home-manager.users.lcleveland = {
      imports = [ inputs.nixvim.homeManagerModules.nixvim ];
      programs.nixvim = {
        enable = true;
        vimAlias = true;
        defaultEditor = true;
        plugins = {
          cmp = {
            enable = true;
            autoEnableSources = true;
          };
          supermaven.enable = true;
        };
      };
    };
  };
}
