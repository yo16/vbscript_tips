Option Explicit

Dim WshShell
Set WshShell = WScript.CreateObject("WScript.Shell")

'ๆ๊๘:exet@Cผ
'ๆ๑๘:Pจย Oจsย
'ๆO๘:PจIน๐าย Oจาฝธษ๐ภs
'฿่l  :OจณํIน PจูํIน
Dim runRtn
runRtn = WshShell.Run("cmd /C echo %date% %time% > date.txt",1,1)

' delฦฏถโ่๛

msgbox runRtn
