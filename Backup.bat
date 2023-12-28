:: Set the current date in DD-MM-YY format
:: SET CURRENT_DATE=%DATE:~7,2%-%DATE:~4,2%-%DATE:~12,2%

for /f "tokens=1-3 delims=/ " %%a in ('date /t') do (
    set "day=%%a"
    set "month=%%b"
    set "year=%%c"
)
:: set "year=%year:~-2%"
set "current_date=%day%-%month%-%year%"
:: echo %current_date%




:: Set the destination directory for the backup
:: SET DEST=C:\Program Files\MongoDB\Tools\100\bin\%CURRENT_DATE%
:: Create the destination directory
mkdir %DEST%
:: Run mongodump to backup the database
mongodump --uri "mongodb://localhost:27017/test" --out "C:\Users\SERVER\Desktop\Backup\%CURRENT_DATE%"
:: pause

:: https://www.mongodb.com/download-center/database-tools/releases/archive



