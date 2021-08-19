@Echo off

set "list=jobs.txt"

chcp 949 >NUL
for %%a in (palette\*.pal) do (
	for /f "usebackq delims=" %%i in ("%list%") do (
		for %%j in (%%i) do (
			copy/b %%a "data\palette\¸ö\%%j_%%~na.pal"
		)
	)
)
