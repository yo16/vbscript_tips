Option Explicit


Dim testStr
testStr = "a,b,c,d,e,f,g"

MsgBox getCsvStr(testStr,2)



'****************************************
'csvStrのpartNumber番目の文字列を返す関数
'****************************************
Function getCsvStr(csvStr,partNumber)
	Dim csvStrArray
	csvStrArray = Split(csvStr,",")
	getCsvStr = csvStrArray(partNumber-1)
End Function


