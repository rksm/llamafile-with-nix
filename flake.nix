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
        cuda_cudart_static = pkgs.cudaPackages.cuda_cudart.static;
      in
      {
        devShells.default = pkgs.mkShell {
          packages = with pkgs; [
            cudatoolkit
            gcc12
          ];

          LD_LIBRARY_PATH=/run/opengl-driver/lib;
          # NVCC_APPEND_FLAGS="${cuda_cudart_static}/lib";

          # shellHook = ''
          #   export CC=gcc-12
          #   export CXX=g++-12
          #   export CUDA_PATH=${cudatoolkit}
          #   export EXTRA_LDFLAGS="-L/lib -L${pkgs.linuxPackages.nvidia_x11}/lib"
          #   export EXTRA_CCFLAGS="-I/usr/include"
          #   export PATH=${cudatoolkit}/bin:${pkgs.gcc12}/bin:$PATH
          # '';

        };
      }
    );
}
