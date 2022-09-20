@echo off
mkdir build 2> nul
pushd "build"
cl.exe /nologo /Zi /MDd /W4 /D_CRT_SECURE_NO_WARNINGS /D_SILENCE_ALL_CXX17_DEPRECATION_WARNINGS /wd4530 /wd4201 /wd4577 /wd4310 /FC /std:c++17 /GR- ../vulkan-demo.cpp /I"C:\VulkanSDK\1.3.224.1\Include" /I"D:\Programming\glfw\include" /link user32.lib Shell32.lib gdi32.lib Kernel32.lib Vulkan-1.lib glfw3.lib /libpath:"D:\Programming\glfw\lib-vc2022" /libpath:"C:\VulkanSDK\1.3.224.1\Lib" /MACHINE:X64 /out:"VulkanDemo.exe"
popd