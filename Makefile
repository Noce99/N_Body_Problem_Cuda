CC = gcc
NVCC = nvcc

CFLAG = -O3
NVCCFLAG = -arch=sm_80 -Xcompiler=-O3

dummy:
	@echo -e "make cuda\t\tcompile C CUDA version"

TargetC=nbody.cu

cuda:    nbody.run

all:    cuda cudafor

nbody.run: $(TargetC)
	   $(NVCC) $(NVCCFLAG) $< -o $@

clean:
	rm -f *.c *.f *.mod *.ptx
