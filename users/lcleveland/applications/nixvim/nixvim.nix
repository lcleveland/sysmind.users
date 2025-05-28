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
          cmp-nvim-lsp.enable = true;
          lsp = {
            enable = true;
            servers = {
              nixd = {
                enable = true;
                autostart = true;
              };
            };
          };
          lsp-format.enable = true;
          supermaven.enable = true;
        };
      };
    };
  };
}
