Option Explicit

Dim X
Set X = New TestClass

Dim modori
modori = X.DoTest("？")
MsgBox modori

X.SubTest("subtest")

Set X = Nothing

Class TestClass
	Private Sub Class_Initialize
		MsgBox("TestClass が 作られました！")
	End Sub
	
	Public Function DoTest(pMsg)
		MsgBox pMsg
		DoTest = "["&pMsg&"]"
	End Function
	
	Public Sub SubTest(pMsg)
		MsgBox pMsg
	End Sub
	
	Private Sub Class_Terminate
		MsgBox("TestClass が 破棄されました！")
	End Sub
End Class

