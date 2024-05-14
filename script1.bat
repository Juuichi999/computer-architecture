@echo off
cd laboratory\group\Voitenko_Evgen\batch
xcopy /? > "not_hidden_folder\copyhelp.txt"
xcopy "not_hidden_folder\copyhelp.txt" "hidden_folder\copied_copyhelp.txt"