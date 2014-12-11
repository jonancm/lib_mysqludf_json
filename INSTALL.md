# How to install lib_mysqludf_json

## Prerequisites

In order to compile this software, you will need to have the following packages installed on your system:

- g++ or clang
- make
- cmake
- libmysqlclient-dev

## Building

First, create a new directory where all the build process should take place:

	mkdir build
	cd build

Now configure the build using CMake, which will generate the necessary Makefiles:

	cmake ..

Finally, compile the source:

	make

## Installing

	sudo make install
	mysql -u root -p < lib_mysqludf_json.sql
