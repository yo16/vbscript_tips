' 長い文字列の置換

MsgBox Replace("a-a", "a", "xyz")
' xyz-xyz
' 予想通りの動き

MsgBox Replace("xyz-xyz", "xyz", "abcde")
' abcde-abcde
' 予想通りの動き
