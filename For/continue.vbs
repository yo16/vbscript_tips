Option Explicit

' for continueのようなものは
' VBSにはない


Dim idx
Dim tmpNumber
tmpNumber = 0

For idx = 1 to 10 : Do
	If (idx > 5) Then Exit Do
	tmpNumber = tmpNumber + 1
Loop Until 1: Next

MsgBox "tmpNumber is "&tmpNumber


' 下記のForとDoを１行で書いただけ
'	For idx = 1 to 10
'		Do
'			If (idx > 5) Then Exit Do
'			tmpNumber = tmpNumber + 1
'		Loop Until 1
'	Next


