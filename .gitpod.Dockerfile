FROM gitpod/workspace-full:latest

RUN git clone --recurse-submodules https://github.com/sylabs/singularity.git $HOME/singularity \
	&& cd $HOME/singularity \
	&& ./mconfig --without-suid \
	&& make -C builddir \
	&& sudo make -C builddir install