# Demo of Windows Builds with CMake and Visual Studio

This is a simple example of creating a CMake project for 
Windows with Visual Studio and vcpkg for package management. 

## Prerequisites

You need a working installation of Visual Studio (tested for 2019) and vcpkg.
Vcpkg can be found [here](https://github.com/Microsoft/vcpkg]) . If you have vcpkg 
installed you can install dependencies and make them available system-wide. 

```bash
#This needs to executed once with administrator privileges
.\vcpkg integrate install
```
In order to install a dependecy use
```bash
.\vcpkg install depname:x64-windows
```
Here the target platform is explicitly stated as "x64-windows" because the default
platform which vcpkg chooses if you just type `.\vcpkg install depname` is "x86-windows"
which is probably not what you want and you might get strange errors from CMake that your dependencies
cannot be found. 

## Dependencies
Install as described above. All dependencies are searched for in the global CMakeLists.txt via `find_package()`

* fmt