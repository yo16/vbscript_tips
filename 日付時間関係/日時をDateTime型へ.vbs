Option Explicit

' 文字列の日時をDateTime型へ変換
' 2015/7/30

Dim dt
dt = CDate("2015/7/30 13:4:6")

' DateTime型として正しく入っているか確認
MsgBox FormatDateTime(dt, 0)
' → 2015/07/30 13:04:06
MsgBox Year(dt)
' → 2015

