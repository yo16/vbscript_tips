Option Explicit

Dim strA, strB ,pos

strA = "abCdefCg"
strB = "C"

pos = InStr(strA, strB )
msgbox "通常:"+CStr(pos)	' 3

pos = InStrRev(strA, strB )
msgbox "逆:"+CStr(pos)		' 7



' 実装サンプル
' 最後のCより前を取得
Dim targetStr
targetStr = Left(strA,pos-1)
msgbox targetStr			' abCdef
