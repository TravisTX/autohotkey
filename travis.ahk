;   ! = alt
;   + = shift
;   ^ = ctrl
;   # = win

#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.


Capslock::LWin

::``k8::Kubernetes
::``authn::authentication
::``authz::authorization
::``right::→
::``left::←
::``up::↑
::``down::↓
::``r::→
::``l::←
::``u::↑
::``d::↓
::``ur::↗︎
::``ul::↖
::``dr::↘
::``dl::↙
::``lte::≤
::``<=::≤
::``gte::≥
::``>=::≥
::``flower::(◕‿◕✿)
::``shrug::¯\_(ツ)_/¯
::``flip::(╯°□°）╯︵ ┻━┻
::``dissapoint::ಠ_ಠ
::``grim::😬


; launch any sln files in the current directory
::``sln::./*.sln

; TYPOS
::varaible::variable
::varialbe::variable
::leran::learn
::nad::and
::teh::the
::hte::the
::si::is
::fro::from
::whiel::while
::ti::it
::hlep::help
::becuase::because
::porblem::problem
::taht::that
::liek::like
::curous::curious

::avail::available

::``sound::
::``mic::
Run, control mmsys.cpl sounds
return

::``vol::
Run, sndvol.exe
return

; disable and enable the "Realtek(R) Audio" driver under Sound, video and game controllers
::``fixsound::
Run, C:\DevManView.exe /disable_enable "INTELAUDIO\FUNC_01&VEN_10EC&DEV_0298&SUBSYS_10280906&REV_1001\4&256db680&0&0001"
return

;-------------------------------------------------------------------------------------------------
; BEGIN Teams

; CTRL+BACKTICK - toggle mute
Ctrl & `::
prev:=WinActive("A")
WinActivate, ahk_exe Teams.exe
Sleep, 100
Send ^+m ; CTRL+SHIFT+M
Sleep, 500
WinActivate, ahk_id %prev%
return

; typing `away - sets teams to away mode
::``away::
prev:=WinActive("A")
WinActivate, ahk_exe Teams.exe
Sleep, 100
Send ^/
Sleep, 100
Send away`n
Sleep, 500
WinActivate, ahk_id %prev%
return

; typing `back - sets teams to available mode
::``back::
prev:=WinActive("A")
WinActivate, ahk_exe Teams.exe
Sleep, 100
Send ^/
Sleep, 100
Send available`n
Sleep, 500
WinActivate, ahk_id %prev%
return
;-------------------------------------------------------------------------------------------------
; END Teams



 ; Current date time
::``date:: 
FormatTime, CurrentDateTime,, M/d/yyyy h:mm tt  ; It will look like 9/1/2005 3:53 PM
SendInput %CurrentDateTime%
return

