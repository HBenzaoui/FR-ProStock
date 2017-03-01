@ECHO ON
@SET PATH="%~dp0";%PATH%
@SET PGDATA=%~dp0\data
@SET PGUSER=postgres
@SET PGPORT=5432
@SET PGLOCALEDIR=%~dp0\share\locale
"%~dp0initdb" -U postgres -D "%~dp0/data" -E UTF8
"%~dp0pg_ctl" -w -D "%~dp0/data" start
psql.exe -U postgres -f "C:\ProStock\bin\db_create.sql" postgres
pg_ctl.exe register -N postgres -D "C:\ProStock\bin\" 
"%~dp0pg_ctl" -D "%~dp0/data" stop



