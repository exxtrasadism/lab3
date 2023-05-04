@echo off
chcp 65001
xcopy /? > "E:\Лабораторные\Группа\ФИО\batch\Не скрытая папка\copyhelp.txt"
xcopy "E:\Лабораторные\Группа\ФИО\batch\Не скрытая папка\copyhelp.txt" "E:\Лабораторные\Группа\ФИО\batch\Cкрытая папка\copied_copyhelp.txt" /I /Q /Y
pause