project "TestProject"
	kind "ConsoleApp"
	staticruntime "off"

	language "C++"
	cppdialect "C++20"

	targetdir ("%{wks.location}/bin/" ..outputdir.. "/%{prj.name}")
	objdir ("%{wks.location}/bin-int/" ..outputdir.. "/%{prj.name}")
	
	files {
		"src/**.h",
		"src/**.cpp"
	}

	vpaths {
		["Source Files"] = "src/**.cpp",
		["Header Files"] = "src/**.h"
	}

	includedirs {  "src",
			"%{wks.location}/BaseProject/src",
		    }
	
	links { "BaseProject" }

	configurations {
		"Debug",
		"Release",
		"Distribution"
	}

	filter "system:windows"
		cppdialect "C++20"
		systemversion "latest"
	
	filter "system:linux"
		cppdialect "C++20"
		systemversion "latest"

	filter "configurations:Debug"
		
		defines { "_DEBUG", "_CONSOLE" }
		
		architecture "x64"
		symbols "on"

	filter "configurations:Release"
		
		defines { "NDEBUG", "_CONSOLE" }

		architecture "x64"
		optimize "on"

	filter "configurations:Distribution"
		
		kind "WindowedApp"

		defines { "DISTRIBUTION" }
	
		architecture "x64"
		optimize "on"
