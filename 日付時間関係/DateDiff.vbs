Option Explicit
'DateDiff
' 2015/7/30

Dim dtToday
dtToday = CDate("2015/7/30")
Dim dtOneday
dtOneday = CDate("2015/5/1")

' DateDiffiζRψ|ζQψj
MsgBox DateDiff("d", dtOneday, dtToday)
' ¨ 90
MsgBox DateDiff("d", dtToday, dtOneday)
' ¨ -90
' ζRψ|ζQψΜlπΤ·
' PΒΪΜψ
' έθl	ΰe 
' yyyy		N 
' q			lΌϊ 
' m			 
' y			NΤΚZϊ 
' d			ϊ 
' w			Tϊ 
' ww		T 
' h			 
' n			ͺ 
' s			b 
