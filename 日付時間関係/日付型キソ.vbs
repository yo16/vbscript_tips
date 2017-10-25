' 日付型のキソ

Dim v_dateA, v_dateB
Dim v_diffAB



' 文字列を日付型に変換
v_dateA = CDate("2004/4/1")
v_dateB = CDate("2004/5/1")

msgbox v_dateA
msgbox v_dateB


' いろいろなやり方で、２つの差を取ってみる
v_diffAB = DateDiff("y", v_dateA, v_dateB)		' 年間通算日 ＡＢ
msgbox v_diffAB
v_diffAB = DateDiff("d", v_dateA, v_dateB)		' 日付 ＡＢ
msgbox v_diffAB
v_diffAB = DateDiff("y", v_dateB, v_dateA)		' 年間通算日 ＢＡ
msgbox v_diffAB
v_diffAB = DateDiff("d", v_dateB, v_dateA)		' 日付 ＢＡ
msgbox v_diffAB

' 結果⇒ 順番は関係ある。第３引数−第２引数を返す！


