Option Explicit

Dim time1,time2
time1 = Now
time2 = time1

'If (time1 = time2) Then MsgBox "同じだぁ！"

If (time1 <> DateAdd("m",1,time2)) Then MsgBox "違うぞぉ！"
