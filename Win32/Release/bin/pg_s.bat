
"%~dp0pg_ctl" -w -D "%~dp0/data" start
ECHO "Click enter to stop"
pause
"%~dp0pg_ctl" -D "%~dp0/data" stop