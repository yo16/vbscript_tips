Option Explicit

' Function呼び出し

Dim returnValue
returnValue = func_A(1, 2)
msgbox "Function呼べたかな"&returnValue


' Sub呼び出し
Call sub_B("呼べるかな")




Function func_A(paramA, paramB)
	' 戻り値設定
	func_A = paramA+paramB
End Function

Sub sub_B(param1)
	MsgBox(param1)
End Sub

