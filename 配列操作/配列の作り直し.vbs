'作り直したら前のは消えちゃうんだね

Option Explicit


Dim testStr
Dim tmpArray

testStr = "a,b,c,d,e"
tmpArray = Split(testStr,",")
MsgBox "配列の個数=>"&UBound(tmpArray)

testStr = "a,b,c"
tmpArray = Split(testStr,",")
MsgBox "配列の個数=>"&UBound(tmpArray)


