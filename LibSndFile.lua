--
-- Premake5 file for build LibSndFile project. (Force Audio Decoding System)
-- Copyright (c) 2022-2023 by Danil (Kenny) Dukhovenko, All rights reserved.
--
-- Requirement:
--  - ForceEngine.lua
--  - vcpkg installed with 'vcpkg install libsndfile'
--  - vcpkg should also install followed libraries:
--    - libflac
--    - libogg
--    - libvorbis
--    - mp3lame
--    - mpg123
--    - opus
--
-- NOTE: This is thunk library, only with linkage .lib. All source code contains in
-- vcpkg\packages\libsndfile_x64-windows.
-- Read more in ForceEngine.lua::About __NULL_IMPORT_DESCRIPTOR why i made this dicision.
--

-- LibSndFile C++ Project
project "LibSndFile"
	kind          "StaticLib"
	language      "C++"
	cppdialect    "C++17"
	staticruntime "On"
	targetdir     ("%{ForceDir.BinLib}/" .. BuildDir .. "/%{prj.name}/Lib")
	objdir        ("%{ForceDir.BinLib}/" .. BuildDir .. "/%{prj.name}/Obj")

	files {
		"%{IncludeDir.LibSndFile}/**.h",
		"%{IncludeDir.LibSndFile}/**.hh",
		"src/**.cpp"
	}
	
	includedirs {
		"%{IncludeDir.LibSndFile}"
	}

	filter "system:windows"
		systemversion "latest"
	
	filter "system:linux"
		pic "On"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"
		links ( "%{Library.Dbg.LibSndFile}" )

		if Libraries["LibSndFile"] then
			-- DynamicOnly: 
			-- table.insert(LinksList, "%{Library.Dbg.LibFlac}")
			-- table.insert(LinksList, "%{Library.Dbg.LibOgg}")
			-- table.insert(LinksList, "%{Library.Dbg.LibVorbis}")
			-- table.insert(LinksList, "%{Library.Dbg.LibVorbisEnc}")
			-- table.insert(LinksList, "%{Library.Dbg.Mp3Lame}")
			-- table.insert(LinksList, "%{Library.Dbg.Mpg123}")
			-- table.insert(LinksList, "%{Library.Dbg.Opus}")
		end

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
		links ( "%{Library.Rel.LibSndFile}" )

		
		if Libraries["LibSndFile"] then
			-- DynamicOnly: 
			-- table.insert(LinksList, "%{Library.Rel.LibFlac}")
			-- table.insert(LinksList, "%{Library.Rel.LibOgg}")
			-- table.insert(LinksList, "%{Library.Rel.LibVorbis}")
			-- table.insert(LinksList, "%{Library.Rel.LibVorbisEnc}")
			-- table.insert(LinksList, "%{Library.Rel.Mp3Lame}")
			-- table.insert(LinksList, "%{Library.Rel.Mpg123}")
			-- table.insert(LinksList, "%{Library.Rel.Opus}")
		end