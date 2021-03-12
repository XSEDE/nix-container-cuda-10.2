# docker-centos-nix-CUDA-10
Docker container with Nix and the CUDA 10.2 toolkit installed. 

The resultant container is about 4.1 GB if the entire toolkit is installed.
If it's an option to only build in the libcudart.so library as a dependency, you may use the
package defined as cuda-10-2-libonly, which results in a base size of ~740MB.
