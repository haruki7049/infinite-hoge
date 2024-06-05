{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs }:
    let
      pkgs = import nixpkgs { inherit self; system = "x86_64-linux"; };
    in
    {
      devShells."x86_64-linux".default = pkgs.mkShell {
        packages = with pkgs; [
          bun
        ];

        shellHook = ''
          export PS1="\n[nix-shell:\w]$ "
        '';
      };
    };
}
