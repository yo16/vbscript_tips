Option Explicit

Dim nowNichiji
nowNichiji = Now

'MsgBox nowNichiji+1'<=1日プラス(わかりづらい)

nowNichiji = DateAdd("m",1,nowNichiji)
MsgBox nowNichiji
