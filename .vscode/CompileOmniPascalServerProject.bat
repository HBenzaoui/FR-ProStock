@echo off

SET MSBUILD="C:\Windows\Microsoft.NET\Framework\v4.0.30319\MSBuild.exe"
SET RSVARS="C:\Program Files (x86)\Embarcadero\Studio\20.0\bin\rsvars.bat"
SET PROJECT="D:\Software\WeeCom-Pro\WeeComPro.dproj"

call %RSVARS%
%MSBUILD% %PROJECT% "/t:Clean,Make" "/p:config=Debug" "/verbosity:minimal"

if %ERRORLEVEL% NEQ 0 GOTO END

echo. 

if "%1"=="" goto END

if /i %1%==test (
  pushd "D:\Software\WeeCom-Pro\Win32\Debug"
  "D:\Software\WeeCom-Pro\Win32\Debug\WeeComPro.exe" 
  popd
)
:END

