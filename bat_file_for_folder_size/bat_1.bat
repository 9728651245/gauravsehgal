@echo off
    setlocal disabledelayedexpansion

    set "folder=%C:\Program Files\Pitney Bowes\Spectrum\index\elasticsearch\data\SpectrumCluster\nodes\0\indices\prof_7b632476-e8f5-4765-af88-3fc8ce0043f7"
    if not defined folder set "folder=%cd%"

    for /d %%a in ("%folder%\*") do (
        set "size=0"
        for /f "tokens=3,5" %%b in ('dir /-c /a /w /s "%%~fa\*" 2^>nul ^| findstr /b /c:"  "') do if "%%~c"=="" set "size=%%~b"
        setlocal enabledelayedexpansion
        echo(%%~nxa # !size!
        endlocal
    )

    endlocal
		
	pause