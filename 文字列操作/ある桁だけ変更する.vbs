Option Explicit

Dim mojiretu
mojiretu = "abcde"
Dim exChar
exChar = "x"

If (changeOneChar(mojiretu,3,exChar) = 0) Then
	msgbox mojiretu
End If



Function changeOneChar(byRef exStr,keta,exChar)
	Dim motoKeta
	motoKeta = Len(exStr)

	If (motoKeta - keta <= 0) Then
		WScript.Echo exStr&"は"&keta&"桁以下のため、処理を中断します。"
		changeOneChar = -1
		Exit Function
	End If

	Dim tmpStr
	tmpStr = Left(exStr,motoKeta - keta)
	tmpStr = tmpStr & exChar
	tmpStr = tmpStr & Right(exStr,keta - 1)

	exStr = tmpStr
	changeOneChar = 0

End Function

