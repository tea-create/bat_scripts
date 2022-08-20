@echo off
setlocal enabledelayedexpansion
rem -------------------------------------------------------------
rem how to use:
rem audio_linkage.bat [audio_A.wav audio_B.mp3 C:\audio.wav ...]
rem bitrate?=[64k, 96k, 128k ...]
rem -------------------------------------------------------------


set argc=0
set args=
for %%a in ( %* ) do (

set /a argc+=1
set args=!args! -i %%a
)

set /p bitrate=bitrate?[64k, 96k, 128k, ...]=
ffmpeg !args! -b:a !bitrate! -filter_complex ^"concat=n=!argc!:v=0:a=1^" output.mp3
