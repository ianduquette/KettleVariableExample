setlocal

set base_dir=%~dp0


REM Get the local date time in a format we can use for a Timestamp.
FOR /F "usebackq tokens=1,2 delims==" %%i in (`wmic os get LocalDateTime /VALUE 2^>NUL`) do IF '.%%i.'=='.LocalDateTime.' SET logTimestamp=%%j
SET logTimestamp=%logTimestamp:~0,4%%logTimestamp:~4,2%%logTimestamp:~6,2%T%logTimestamp:~8,2%%logTimestamp:~10,2%%logTimestamp:~12,2%

SET logFile=%base_dir%MainJob_%logTimestamp%.log

set kettle_home = c:\etl\kettle

CALL C:\ETL\Kettle\kitchen.bat /level:Basic /file="%base_dir%MainJob.kjb" >> %logFile% 2>&1