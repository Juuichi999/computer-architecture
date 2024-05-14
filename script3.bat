@echo off
powershell -Command "& {Get-ChildItem 'C:\Users\Evgen\Desktop\laboratory\' -Recurse ^
ForEach-Object { $_.CreationTime = '2021-01-01 11:11:11'}}"