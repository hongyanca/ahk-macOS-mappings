#Requires AutoHotkey v2.0

; IME Switch
!space::{
  SendInput("{LAlt donw}{Shift}{LAlt up}")
}

; Open Downloads folder
^!z::Run "C:\Users\yanh\Downloads"

; Open Temp folder on NAS
^!t::Run "N:\Downloads\Temp"

; Open Multimedia folder on NAS
^!x::Run "N:\Multimedia"

!Right::Send "{End}"
!Left:: Send "{Home}"

;CMD+W and CMD+Q behaviour of macOS
!w::{
  if WinActive("ahk_exe explorer.exe")
    WinClose
  else if WinActive("ahk_exe ImageGlass.exe")
    WinClose
  else if WinActive("ahk_exe notepad++.exe")
    Send "^{w}"
  else if WinActive("ahk_exe WindowsTerminal.exe")
    Send "^+{w}"
    else
    Send "^{F4}"
}
!q::Send "!{F4}"

!f::Send "^{f}"
!t::{
  if WinActive("ahk_exe notepad++.exe")
    Send "^{n}"
    else
    Send "^{t}"
}
!n::Send "^{n}"
+!n::Send "^+{n}"

; Zoom in, zoom out and open in new tab
!=::Send "^{=}"
!-::Send "^{-}"
!l::Send "^{l}"
!LButton::Send "^{LButton}"

; Ctrl+C/V -> CMD+C/V behaviour of macOS
!c::Send "^{c}"
!v::Send "^{v}"
!a::Send "^{a}"
!x::Send "^{x}"
!z::Send "^{z}"

; Ctrl+S -> CMD+S behaviour of macOS
!s::Send "^{s}"
