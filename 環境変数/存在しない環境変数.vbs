Option Explicit

	Dim WshShell
	Set WshShell = WScript.CreateObject ("WScript.Shell")


	Dim WshEnv
	Set WshEnv = WshShell.Environment("VOLATILE")


	'存在しない環境変数名を入力すると・・・
	If (WshEnv.Item("ABCDEFG") = "") Then
		msgbox "item is (長さ0の文字列)"
	else
		if (WshEnv.Item("ABCDEFG") = Null) Then
			msgbox "item is Null"
		else
			msgbox "item is ?"
		end if
	end if
	


