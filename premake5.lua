workspace "TestCpp"
	configurations {
		"Debug",
		"Release",
		"Distribution"
	}

	flags
	{
		"MultiProcessorCompile"
	}

	architecture "x86"

	startproject "TestProject"

outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

include "BaseProject"
include "TestProject"
