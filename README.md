# llamafile and nix that uses nvidia/cuda

Just posting this as it took me a while to get it working. This is as of 2024-05-01.

My nixos nvidia setup is:

``` nix
hardware.opengl = {
  enable = true;
  driSupport = true;
  driSupport32Bit = true;
};

services.xserver.videoDrivers = [ "nvidia" ];

hardware.nvidia = {
  modesetting.enable = true;
  open = false;
  package = config.boot.kernelPackages.nvidiaPackages.production;
};
```
