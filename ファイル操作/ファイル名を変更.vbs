Option Explicit
' ファイル名を変更する
' 2008/01/16 yo16


' MoveFileを使う



Dim fso
Set fso = CreateObject("Scripting.FileSystemObject")
fso.MoveFile "rename_1.txt", "rename_2.txt"


