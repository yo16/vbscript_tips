
Option Explicit


Dim WshShell
Set WshShell = WScript.CreateObject("WScript.Shell")

Dim intErrCode
intErrCode=WshShell.Run("cscript 内部で出力先を決めよう.vbs",0,True)


