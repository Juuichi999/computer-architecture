@echo off
setlocal

mkdir laboratory\group\Voitenko_Evgen\batch

cd laboratory\group\Voitenko_Evgen\batch

mkdir not_hidden_folder
mkdir hidden_folder

attrib +h hidden_folder

endlocal