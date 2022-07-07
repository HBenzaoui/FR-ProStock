@ECHO ON
@SET PATH="%~dp0";%PATH%
@SET PGDATA=%~dp0\data
@SET PGDATABASE=postgres
@SET PGUSER=postgres
@SET PGPORT=5432
@SET PGLOCALEDIR=%~dp0\share\locale
"%~dp0initdb" -U postgres -D "%~dp0/data" -E UTF8 
"%~dp0pg_ctl" -w -D "%~dp0/data" -l logfile start
ECHO "Click enter to stop"
pause
"%~dp0pg_ctl" -D "%~dp0/data" stop