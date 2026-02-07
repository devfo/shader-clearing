@echo off

REM Define paths
set CSGO_PATH=C:\Program Files (x86)\Steam\steamapps\common\Counter-Strike Global Offensive\game\csgo
set CORE_PATH=C:\Program Files (x86)\Steam\steamapps\common\Counter-Strike Global Offensive\game\core

REM Delete shaders_* files in csgo folder
if exist "%CSGO_PATH%" (
    del /q "%CSGO_PATH%\shaders_*" 2>nul
)

REM Delete shaders_* files in core folder
if exist "%CORE_PATH%" (
    del /q "%CORE_PATH%\shaders_*" 2>nul
)

exit
