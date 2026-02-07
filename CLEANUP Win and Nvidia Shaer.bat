@echo off

REM Define paths
set NVIDIA_PATH=%LOCALAPPDATA%\NVIDIA
set D3D_PATH=%LOCALAPPDATA%\D3DSCache

REM Delete all subfolders inside NVIDIA
if exist "%NVIDIA_PATH%" (
    for /d %%D in ("%NVIDIA_PATH%\*") do (
        rd /s /q "%%D" 2>nul
    )
)

REM Delete D3DSCache folder entirely
if exist "%D3D_PATH%" (
    rd /s /q "%D3D_PATH%" 2>nul
)

exit