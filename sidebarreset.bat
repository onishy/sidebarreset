tasklist | find "sidebar.exe" >nul
if errorlevel 0 (
	taskkill /f /im sidebar.exe
	:loop
	tasklist | find "sidebar.exe"
	if errorlevel 1 (
		start sidebar.exe
		sidebarnot.vbs
	) else (
		goto loop
	)
) else (
	start sidebar.exe
	sidebarald.vbs
)

exit