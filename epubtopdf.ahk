
#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
#SingleInstance Force



;-----------------------------------------------------------------------------------------------------------------

;~ Função para executar a conversão para pdf

FileSelectFile, ifname, 3, , Abra um arquivo, Text Documents (*.docx; *.doc; *.jpg; *.png; *.ppt; *.pptx; *.pptx; *.xls; *.xlsx; *.mobi; *.epub; *.htm; *.html; *.txt;)

 if ifname contains .doc,.xls,.ppt,.txt,.htm
 {
   Run %ComSpec% /c ""%A_ScriptDir%\LibreOffice\program\soffice.com" --convert-to pdf %ifname% --outdir %A_desktop%"
   Run %A_Desktop%/
 }

 else if ifname contains .mob,.epub
 {
	Run %ComSpec% /c ""%A_ScriptDir%\ebook-convert.exe" %ifname% %A_desktop%\livroconvertido.pdf"
    Sleep 5000
    Run %A_Desktop%/

 }

 else
 MsgBox, Formato de arquivo não suportado
return


;-----------------------------------------------------------------------------------------------------------------


