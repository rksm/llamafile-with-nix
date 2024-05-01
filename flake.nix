{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
        cudatoolkit = pkgs.cudaPackages.cudatoolkit;
      in
      {
        devShells.default = pkgs.mkShell {
          packages = with pkgs; [
            cudatoolkit
            gcc12
          ];

          LD_LIBRARY_PATH=/run/opengl-driver/lib;
        };
      }
    );
}
