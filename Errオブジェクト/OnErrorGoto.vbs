Option Explicit

test1

msgbox "base"

Sub test1
'	On Error GoTo ErrorProcess1		' goto できない・・なぜ

	' 仕方ないので回避策
	On Error Resume Next
	Err.Raise(6)
	If ( Err.Number = 0 )Then
		MsgBox "no error"
	Else
		MsgBox "error!"
	End If
	On Error Goto 0
	exit sub

	ErrorProcess1:
		msgbox "error1"
End Sub