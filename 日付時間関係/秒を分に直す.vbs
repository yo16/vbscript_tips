Option Explicit

Dim byou
byou = 150

msgbox ByouToFun(byou)


'60で割って切り捨てるだけだよ？
Function ByouToFun(pTime)
	Dim rtnByou
	rtnByou = Int(pTime)

	ByouToFun = rtnByou \ 60
End Function


