' コピー定義で指定したセルのコピー（FROMからTO）
'
' コピー定義ファイルのフォーマットは、下記。
' FROMセル,TOセル名
' 先頭が#で始まる行はコメント
'
' 2007/10/12
Option Explicit

'** 設定 *******************
' コピー元エクセルファイル
Dim strFromFileName
strFromFileName = "コピーfrom.xls"

' コピー先エクセルファイル
Dim strToFileName
strToFileName = "コピーto.xls"

' コピー定義ファイル
Dim strDefFileName
strDefFileName = "コピー定義.txt"


'** 処理 *******************
'------------------------------
' 初期化
'------------------------------
' ファイルシステムオブジェクト
Dim objFS,objFolder
Set objFS = CreateObject("Scripting.FileSystemObject")
Set objFolder = objFS.GetFolder(".")

'------------------------------
' エクセルファイルを開く
'------------------------------
Dim objExcel
Dim objFromBook, objToBook
Set objExcel = CreateObject("Excel.Application")
objExcel.Visible = False
objExcel.DisplayAlerts = False
' FromをOpen
objExcel.Workbooks.Open objFolder.Path & "\" & strFromFileName
Set objFromBook = objExcel.ActiveWorkBook
' ToをOpen
objExcel.Workbooks.Open objFolder.Path & "\" & strToFileName
Set objToBook = objExcel.ActiveWorkBook


'------------------------------
' 定義ファイルを読みながらコピー
'------------------------------
Dim objTS
Set objTS = objFS.OpenTextFile( objFolder.Path & "\" & strDefFileName, 1 )
Dim strLine, aryLine, nLineNum
strLine = ""
nLineNum = 0
Dim nFromCol, nFromRow, nToCol, nToRow
Dim nRtn

Do Until objTS.AtEndOfStream
	nLineNum = nLineNum + 1
	strLine = objTS.ReadLine
	If ( Not( strLine = "" ) and ( Not(Left(strLine,1) = "#") ) ) Then
		
		aryLine = Split( strLine, "," )
		
		' From
		nRtn = GetXlsRowCol( aryLine(0), nFromRow, nFromCol )
		If ( nRtn < 0 ) Then
			MsgBox nLineNum & "行目でエラーが発生しました。" & vbCrLf & strLine
			Quit -1
		End If
		
		' To
		nRtn = GetXlsRowCol( aryLine(1), nToRow, nToCol )
		If ( nRtn < 0 ) Then
			MsgBox nLineNum & "行目でエラーが発生しました。" & vbCrLf & strLine
			Quit -1
		End If
		
		' コピー
		objToBook.Sheets(1).Cells( nToRow, nToCol ).Value _
			= objFromBook.Sheets(1).Cells( nFromRow, nFromCol )
	End If
Loop
objTS.Close





'------------------------------
' エクセルファイルを閉じる
'------------------------------
objFromBook.Close
objToBook.Save		' Toは保存
objToBook.Close

objExcel.Quit

Set objFromBook = Nothing
Set objToBook = Nothing

MsgBox "end★"




' エクセルのセル名を行番号、列番号に変える関数
' 戻り値	0:正常終了
' 2007/10/12
Function GetXlsRowCol( strXlsCellName, ByRef nXlsRow, ByRef nXlsCol )
	nXlsRow = 0
	nXlsCol = 0
	
	' 正規表現オブジェクトを設定
	Dim regEx
	Set regEx = New RegExp
	regEx.Pattern = "^[A-Za-z]+[0-9]+$"
	
	' 検索
	If ( Not regEx.Test( strXlsCellName ) ) Then
		' アンマッチ
		Msgbox "フォーマットが違ってそうです" & vbCrLf & strXlsCellName
		GetXlsRowCol = -1
		Exit Function
	End If
	
	' 大文字化
	strXlsCellName = UCase( strXlsCellName )
	
	' アルファベットと数字を分けるために再検索
	Dim nSepPos
	regEx.Pattern = "[0-9]+"
	Dim regMatches, regMatch
	Set regMatches = regEx.Execute( strXlsCellName )
	For Each regMatch in regMatches
		nSepPos = regMatch.FirstIndex
		Exit For
	Next
	
	' 分ける
	Dim strAlphabetPart, strNumberPart
	strAlphabetPart = Left( strXlsCellName, nSepPos )
	strNumberPart = Mid( strXlsCellName, nSepPos+1 )
	
	' アルファベットパートを数値に変換する（26進数→10進数）
	' 下の位から１文字ずつ変換していく
	Dim nPos, i
	Dim cAZ, strAbc
	strAbc = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
	For i = 1 to Len( strAlphabetPart )
		' １文字取得
		cAZ = Mid( strAlphabetPart, Len( strAlphabetPart )-i+1, 1 )
		' 数値化
		nPos = Instr( strAbc, cAZ )
		
		' 戻り値（列）へ設定
		nXlsCol = nXlsCol + nPos * ( Len(strAbc) ^ (i-1) )
	Next
	' 戻り値（行）へ設定
	nXlsRow = Int( strNumberPart )
	
	GetXlsRowCol = 0
End Function
