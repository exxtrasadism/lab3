@echo off
chcp 65001
:start
set /p input=Введіть команду(help для списку команд):
if "%input%"=="help" goto help
if "%input%"=="startcount" goto startcount
:help
echo help - Підказка до програми
echo startcount - Підрахунок обсягу файлів у вибраному каталозі
pause
goto start 
:startcount
    set /p dir=Введіть шлях до каталогу: 
    if not exist "%dir%" (
      echo Каталог "%dir%" не існує.
      pause
      exit /b 1
    )

    set size=0
    for /r "%dir%" %%f in (*) do set /a size+=%%~zf
    echo Сумарний обсяг файлів: %size% байт
    pause
    exit
)
:standartexit
echo Команду не знайдено!
pause
exit /b 1