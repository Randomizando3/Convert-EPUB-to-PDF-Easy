#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

FileSelectFolder, pastaselecionada,  ::{20d04fe0-3aea-1069-a2d8-08002b30309d}
FileCreateDir, C:\Users\%A_Username%\Downloads\arquivos\
Sleep 1000
FileCopy, %pastaselecionada%, C:\Users\%A_Username%\Downloads\arquivos\
Sleep 5000
Run %comspec% /c "%A_ScriptDir%\magick.exe" C:\Users\%A_Username%\Downloads\arquivos\*.png C:\Users\%A_Username%\Downloads\arquivos\livroconvertidodeim.pdf
Run %comspec% /c "%A_ScriptDir%\magick.exe" C:\Users\%A_Username%\Downloads\arquivos\*.jpg C:\Users\%A_Username%\Downloads\arquivos\livroconvertidodeim2.pdf
Sleep 5000
Filecopy, C:\Users\%A_Username%\Downloads\arquivos\livroconvertidodeim.pdf, %pastaselecionada%\livroconvertidodeim.pdf
Filecopy, C:\Users\%A_Username%\Downloads\arquivos\livroconvertidodeim2.pdf, %pastaselecionada%\livroconvertidodeim2.pdf
Sleep 5000
FileRemoveDir, C:\Users\%A_Username%\Downloads\arquivos\, 1
return