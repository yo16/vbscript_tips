Option Explicit



Dim strTest
strTest = "aabbccaabbcc"

Dim regExp
Set regExp = New RegExp
'regExp.Pattern = "a+.*c+"
regExp.Pattern = "a+.*?c+"		' *の後に?が付いてると最短一致

Dim matches
Set matches = regExp.Execute( strTest )


Dim Match
For Each Match in Matches
	MsgBox Match.Value
Next
