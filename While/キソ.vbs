Option Explicit

Dim idx
idx = 1
Dim str
str = ""

Do While (idx < 10)
	str = str & idx
	idx = idx + 1
Loop

' ↓これでもいいけど、Exit Do使えないからなるべく使うのよそうかな
'While (idx < 10)
'	str = str & idx
'	idx = idx + 1
'Wend

msgbox str

