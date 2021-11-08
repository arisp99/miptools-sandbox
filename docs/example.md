# Dependencies

A working copy of Singularity is required: https://www.sylabs.io/docs/.
Singularity is best installed with **sudo**. While it is said to be possible to
install with unprivileged user with some features missing, MIPTools hasn't been
tested on such an installation.

Singularity is available for most Linux systems including high-performance clusters. It is also possible to install
and use on Mac OS using virtual machines with a little bit of extra work.

Note that the `snap` package is a rapid way to install the go language
required by Singularity (e.g. on Ubuntu/Debian: `sudo snap install go
--classic`). Install system dependencies