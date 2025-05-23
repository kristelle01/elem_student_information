
@echo off
REM -- MySQL Configuration Script After Unattended Install --
REM Assumes MySQL is installed in the default location and added to PATH

set MYSQL_PATH="C:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe"

echo Setting root password and user privileges...
%MYSQL_PATH% -u root --connect-expired-password < "%~dp0elem_student_information.sql"

echo Restoring elem_student_information.sql into elem_student_information...
%MYSQL_PATH% -u root -pmike elem_student_information < "%~dp0elem_student_information.sql"

echo MySQL setup and database restoration complete.
pause