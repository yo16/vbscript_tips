Option Explicit

Dim WshShell
Set WshShell = WScript.CreateObject("WScript.Shell")

'æêø:exet@C¼
'æñø:P¨Â O¨sÂ
'æOø:P¨I¹ðÒÂ O¨Ò½¸ÉðÀs
'ßèl  :O¨³íI¹ P¨ÙíI¹
msgbox WshShell.Run("sample.bat",1,1)


