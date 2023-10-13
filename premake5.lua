include "../../premake/common_premake_defines.lua"

project "simdjson"
	kind "StaticLib"
	language "C++"
	cppdialect "C++latest"
	cdialect "C17"
	targetname "%{prj.name}"
	inlining "Auto"

	files {
		"./include/**.h",
		"./src/simdjson.cpp"
	}

	includedirs {
		"./src",

		"%{IncludeDir.simdjson}"
	}