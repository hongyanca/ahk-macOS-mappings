;Autohotkey script
;Hong Yan, 2020-07-25
;homer.yan@gmail.com

; Switch Left Alt and Left Ctrl
LCtrl::LAlt
LAlt::LCtrl

; Left Alt (^) -> macOS Command Key


; Left Alt + Q -> Command + Q
^q::
Send, !{F4}
return

; Left Alt + Backspace -> Delete
^BS::
Send, {Del}
return

^Space::
Send, #{Space}
return


