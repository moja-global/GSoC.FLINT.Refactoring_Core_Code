# Moja bench mark 

```powershell
# bootstrap
bootstrap-vcpkg.bat

# install packages
vcpkg.exe install poco:x64-windows fmt:x64-windows boost-format:x64-windows benchmark:x64-windows

# Create a build folder under the Source folder
cd moja-benchmark
mkdir build
cd build

# now create the Visual Studio Solution (2019)
cmake -DVCPKG_TARGET_TRIPLET=x64-windows -DCMAKE_TOOLCHAIN_FILE=c:\Development\moja-global\vcpkg\scripts\buildsystems\vcpkg.cmake ..
```

