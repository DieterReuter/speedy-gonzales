speedy-gonzales
===============

An extremely fast server implementation framework, for building HTTP or other TCP and UDP servers.

Background:
The project name is just a homage to "Speedy Gonzales - The Fastest Mouse in all Mexico".
see http://en.wikipedia.org/wiki/Speedy_Gonzales

Mr. X


Help on Git
===========

Just find some help on using Git in http://git-scm.com/book/en


Including all used submodules
-----------------------------

Include "joyent/libuv":
git submodule add https://github.com/joyent/libuv.git libuv

Include "joyent/http-parser":
git submodule add https://github.com/joyent/http-parser.git

Compiling "libuv"
=================

First install GYP
cd libuv
mkdir -p build
git clone https://git.chromium.org/external/gyp.git build/gyp

./gyp_uv.py -f xcode
xcodebuild -project uv.xcodeproj -configuration Release -target All



