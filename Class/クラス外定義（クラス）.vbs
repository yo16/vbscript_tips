
Class SotoClass
	Private Sub Class_Initialize
		MsgBox("SotoClass が 作られました！")
	End Sub
	Public Function DoTest(pMsg)
		MsgBox pMsg
		DoTest = "["&pMsg&"]"
	End Function
	Private Sub Class_Terminate
		MsgBox("SotoClass が 破棄されました！")
	End Sub
End Class

