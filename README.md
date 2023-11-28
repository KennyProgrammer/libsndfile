# libsndfile
Special thunk library of [libsndfile](https://github.com/libsndfile/libsndfile) for Force Engine.

This library, only with linkage .lib. All source code contains in   
- vcpkg\packages\libsndfile_x64-windows.

Requirement:
 - ForceEngine.lua
   - vcpkg installed with 'vcpkg install libsndfile'
 - vcpkg should also install followed libraries:
   - [libflac](https://github.com/xiph/flac)
   - [libogg](https://github.com/gcp/libogg)
   - [libvorbis](https://github.com/AntumDeluge/libvorbis)
   - [mp3lame](https://github.com/inrg/lame)
   - [mpg123](https://github.com/libsdl-org/mpg123)
   - [opus](https://github.com/xiph/opus)
