{
  description = "Reusable NixOS user configurations";
  outputs = { self, home-manager, nixpkgs, plasma_manager, zen_browser }@inputs:
    let
      import_modules = import ./import_modules.nix;
      users = import_modules ./users;
    in
    {
      inputs = inputs;
      nixosModules.default = users;
    };
  inputs = {
    plasma_manager = {
      url = "github:nix-community/plasma-manager";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.home-manager.follows = "home-manager";
    };
    zen_browser = {
      url = "github:0xc000022070/zen-browser-flake";
    };
  };
}
