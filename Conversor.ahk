#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Gui, Font, s9
Gui, Add, Text, x22 y49 w440 h50 , Clique no botao abaixo para converter arquivos (*.docx`; *.doc`; *.jpg`; *.png`; *.ppt`; *.pptx`; *.pptx`; *.xls`; *.xlsx`; *.mobi`; *.epub`; *.htm`; *.html`; *.txt`; para .pdf
Gui, Add, Text, x22 y189 w440 h50 , Clique no botao abaixo para converter seu livro de imagens para .pdf
Gui, Add, Button, x22 y79 w440 h60 gc1, Converter agora
Gui, Add, Button, x22 y209 w440 h60 gc2, Converter agora
; Generated using SmartGUI Creator for SciTE
Gui, Show, w479 h310, Conversores
return

GuiClose:
ExitApp

c1:
Run %A_ScriptDir%/epubtopdf.exe
ExitApp
return

c2:
Run %A_ScriptDir%/converter imagens para pdf.exe
ExitApp
return