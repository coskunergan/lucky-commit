@echo off
setlocal enabledelayedexpansion

for /F "tokens=1 delims=v" %%a in (version.txt) do (    
	set the_line=%%a	
)

if defined the_line (
    set ver=ce00!the_line:.=!
    
) else (
    set ver=ce00000
)

start lucky_commit !ver!
