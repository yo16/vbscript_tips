Option Explicit
' Splitで見つからなかった場合、(0)に入るのか？

Dim aryFound
aryFound = Split("abcde", "/")

MsgBox aryFound(0)		' abcde
MsgBox UBound(aryFound)	' 0
' (0)にはいり、UBoundは0になる
