workspace "HelloWorld"
    configurations { "Debug", "Release" }

project "HelloWorld"
    location "HelloWorld"
    kind "ConsoleApp"
    language "C"
    targetdir "bin/%{cfg.buildcfg}"

    files { "HelloWorld/src/*.c", "HelloWorld/include/*.h" }

    filter "configuration:Debug"
        defines { "DEBUG" }
        symbols "On"

    filter "configuration:Release"
        defines { "NDEBUG" }
        optimize "On"