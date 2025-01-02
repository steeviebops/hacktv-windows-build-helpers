This repo contains some patches for hacktv (https://github.com/fsphil/hacktv) to allow it to successfuly compile for Windows.

- Adds a conditional statement to mac.c to resolve gmtime issues (fixes error during final hacktv stage: **mac.c:524:9: error: implicit declaration of function 'localtime_r'; did you mean 'localtime_s'**?)
- Updates the build script with -fstack-protector enabled (fixes error during ffmpeg stage: **ERROR: opus not found using pkg-config**)
- Adds a patch to osmo-fl2k for GCC 14 (fixes error during osmo-fl2k stage: **fl2k_fm.c:455:35: error: passing argument 1 of 'getopt_long' makes pointer from integer without a cast**)

To use it, clone the repo and run build.sh. It'll clone the hacktv repo and apply the patches for you. Tested on Debian 12 and Fedora 41.
