@echo off
cd %~dp0

set Dir_Root=%~dp0
set Dir_ProtoInput=%Dir_Root%proto
set Dir_CS_Output=%Dir_Root%/Assets/Script/cs_out

cd %Dir_Root%bin
echo currentDir: %~dp0
echo Dir_CS_Output: %Dir_CS_Output%

echo protos: %Dir_ProtoInput%/*.proto

protoc.exe -I %Dir_ProtoInput% %Dir_ProtoInput%/*.proto --csharp_out %Dir_CS_Output%

echo Build Complete!

pause
