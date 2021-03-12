with import <nixpkgs> { };
let
  cuda-10-1-libonly = pkgs.cudaPackages.cudatoolkit_10.overrideAttrs (oldAttrs: {
    meta = oldAttrs.meta // { outputsToInstall = [ "lib" ]; };
  });
in
{ cudaProdEnv = buildEnv {
  name = "cuda-prod-env";
  paths = [
    # Always include nix, or environment will break
    # Include bash for base OSes without bash
    nix
    bash
    
    # CUDA libraries
    # cuda-10-1-libonly
    cudaPackages.cudatoolkit_10
    
    ];
  };
}
