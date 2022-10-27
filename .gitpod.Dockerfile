FROM gitpod/workspace-full:latest

RUN install-packages \
	build-essential \
	    libseccomp-dev \
	    libglib2.0-dev \
	    pkg-config \
	    squashfs-tools \
	    cryptsetup \
	    runc \
    && git clone --recurse-submodules https://github.com/sylabs/singularity.git $HOME/singularity \
	&& cd $HOME/singularity \
	&& ./mconfig --without-suid \
	&& make -C builddir \
	&& sudo make -C builddir install
