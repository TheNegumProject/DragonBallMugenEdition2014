
;-| Hyper Motions |--------------------------------------------------------


[Command]
name = "Medium kameha"
command = ~D, DF, F, D, DF, F, z
time = 25

[Command]
name = "Medium kameha"
command = ~D, DF, F, D, DF, F, y
time = 25

[Command]
name = "Medium kameha"
command = ~D, DF, F, D, DF, F, x
time = 25

[Command]
name = "SDM"
command = ~F, DF, D, DB, B, F, x
time = 30

[Command]
name = "SDM"
command = ~F, DF, D, DB, B, F, y
time = 30

[Command]
name = "SDM"
command = ~F, DF, D, DB, B, F, z
time = 30



;-| Special Motions |------------------------------------------------------

[Command]
name = "Fireball"
command = ~D, DB, B, x
time = 30

[Command]
name = "Fireball2"
command = ~D, DB, B, y
time = 30

[Command]
name = "Fireball3"
command = ~D, DB, B, z
time = 30

[Command]
name = "Dancing kickEx"
command = ~D, DF, F, a+b
time = 30

[Command]
name = "lateral kickEx"
command = ~D, DB, B, a+b
time = 30

[Command]
name = "lateral kickEx"
command = ~D, DB, B, a+c
time = 30

[Command]
name = "lateral kickEx"
command = ~D, DB, B, b+c
time = 30

[Command]
name = "FireballEX"
command = ~D, DB, B, x+y
time = 30

[Command]
name = "FireballEX"
command = ~D, DB, B, x+z
time = 30

[Command]
name = "FireballEX"
command = ~D, DB, B, y+z
time = 30

[Command]
name = "slide punch"
command = ~D, DB, B, x
time = 30

[Command]
name = "slide punch 2"
command = ~D, DB, B, y
time = 30

[Command]
name = "dancing kick"
command = ~D, DF, F, a
time = 30

[Command]
name = "dancing kick 2"
command = ~D, DF, F, b
time = 30

[Command]
name = "dancing kick 2"
command = ~D, DF, F, c
time = 30

[Command]
name = "dancing kick 3"
command = ~D, DF, F, c
time = 30

[Command]
name = "fratricide3"
command = /$B, c
time = 10

[Command]
name = "lateral kick"
command = ~D, DB, B, a
time = 30

[Command]
name = "lateral kick 2"
command = ~D, DB, B, b
time = 30

[Command]
name = "lateral kick 3"
command = ~D, DB, B, c
time = 30


[Command]
name = "Zanzoken F"
command = c+z
time = 30


[Command]
name = "Zanzoken B"
command = c+z
time = 30

;-| Misc Motions |---------------------------------------------------------

;-| Double Tap |-----------------------------------------------------------

[Command]
name="Super Jump"
command=~D,U
time = 8

[Command]
name = "FF"     
command = F, F
time = 12

[Command]
name = "BB"     
command = B, B
time = 12

[Command]
name = "Long Jump"
command = ~D, UF
time = 12

[Command]
name = "Long Jump"
command = ~D, UB
time = 12

[Command]
name = "UF"     
command = UF
time = 10

;-| 2/3 Button Combination |-----------------------------------------------

[Command]
name = "recovery"
command = x+y
time = 5

[Command]
name = "recovery"
command = y+z
time = 5

[Command]
name = "recovery"
command = x+z
time = 5

[Command]
name = "recovery"
command = x+y+z
time = 5

[Command]
name = "xy"
command = x+y
time = 5

[Command]
name = "yz"
command = y+z
time = 5

[Command]
name = "xz"
command = x+z
time = 5

[Command]
name = "xyz"
command = x+y+z
time = 5

[Command]
name = "ab"
command = a+b
time = 5

[Command]
name = "bc"
command = b+c
time = 5

[Command]
name = "ac"
command = a+c
time = 5

[Command]
name = "abc"
command = a+b+c
time = 5

[Command]
name = "xa"
command = x+a
time = 5

[Command]
name = "by"
command = b+y
time = 5

[Command]
name = "cz"
command = c+z
time = 5

;-| Dir + Button |---------------------------------------------------------

;-| Single Button |---------------------------------------------------------

[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "s"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------------

[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup" 
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

[Command]
name = "holdx" 
command = /x
time = 1

[Command]
name = "holdy" 
command = /y
time = 1

[Command]
name = "holdz" 
command = /z
time = 1

[Command]
name = "holda" 
command = /a
time = 1

[Command]
name = "holdb" 
command = /b
time = 1

[Command]
name = "holdc" 
command = /c
time = 1

[Command]
name = "holds" 
command = /s
time = 1

;---------------------------------------------------------------------------

[Statedef -1]

[State -1]
type = ChangeState
value = 998
triggerall=var(59)=0&&command="SDM"
trigger1 = statetype = S
trigger1 = statetype = S
trigger1 = (power >= 3000) && (life > 100)
trigger1 = ctrl = 1

;===========================================================================
;-| Misc |------------------------------------------------------------------
;---------------------------------------------------------------------------
;Dancing kickEx
[State -1]
type = ChangeState
value = 465
triggerall=var(59)=0&&command="Dancing kickEx"
trigger1 = statetype = S
trigger1 = (power >= 500)
trigger1 = ctrl = 1
;--------------------------------
;lateral kick Ex

[State -1]
type = ChangeState
value = 790
triggerall=var(59)=0&&command="lateral kickEx"
trigger1 = statetype = S
trigger1 = (power >= 500)
trigger1 = ctrl = 1
trigger2=(stateno=200)&&(command="lateral kickEx")
trigger2 = (power >= 500)
trigger3=(stateno=210)&&(command="lateral kickEx")
trigger3 = (power >= 500)
trigger4=(stateno=215)&&(command="lateral kickEx")
trigger4 = (power >= 500)
trigger5=(stateno=300)&&(command="lateral kickEx")
trigger5 = (power >= 500)
trigger6=(stateno=310)&&(command="lateral kickEx")
trigger6 = (power >= 500)
trigger7=(stateno=315)&&(command="lateral kickEx")
trigger7 = (power >= 500)
trigger8=(stateno=320)&&(command="lateral kickEx")
trigger8 = (power >= 500)
trigger9=(stateno=330)&&(command="lateral kickEx")
trigger9 = (power >= 500)
trigger10=(stateno=335)&&(command="lateral kickEx")
trigger10 = (power >= 500)
trigger11=(stateno=700)&&(command="lateral kickEx")
trigger11 = (power >= 500)
trigger12=(stateno=400)&&(command="lateral kickEx")
trigger12 = (power >= 500)
trigger13=(stateno=410)&&(command="lateral kickEx")
trigger13 = (power >= 500)
trigger14=(stateno=420)&&(command="lateral kickEx")
trigger14 = (power >= 500)
trigger15=(stateno=600)&&(command="lateral kickEx")
trigger15 = (power >= 500)
trigger16=(stateno=340)&&(command="lateral kickEx")
trigger16 = (power >= 500)
trigger17=(stateno=405)&&(command="lateral kickEx")
trigger17 = (power >= 500)
trigger18=(stateno=430)&&(command="lateral kickEx")
trigger18 = (power >= 500)
;---------------------------------------------------------------------------
;Fireball EX
[State -1]
type = ChangeState
value = 909
triggerall=var(59)=0&&command="FireballEX"
trigger1 = statetype = S
trigger1 = (power >= 500)
trigger1 = ctrl = 1
trigger2=(stateno=200)&&(command="FireballEX")
trigger2 = (power >= 500)
trigger3=(stateno=210)&&(command="FireballEX")
trigger3 = (power >= 500)
trigger4=(stateno=215)&&(command="FireballEX")
trigger4 = (power >= 500)
trigger5=(stateno=300)&&(command="FireballEX")
trigger5 = (power >= 500)
trigger6=(stateno=310)&&(command="FireballEX")
trigger6 = (power >= 500)
trigger7=(stateno=315)&&(command="FireballEX")
trigger7 = (power >= 500)
trigger8=(stateno=320)&&(command="FireballEX")
trigger8 = (power >= 500)
trigger9=(stateno=330)&&(command="FireballEX")
trigger9 = (power >= 500)
trigger10=(stateno=335)&&(command="FireballEX")
trigger10 = (power >= 500)
trigger11=(stateno=700)&&(command="FireballEX")
trigger11 = (power >= 500)
trigger12=(stateno=400)&&(command="FireballEX")
trigger12 = (power >= 500)
trigger13=(stateno=410)&&(command="FireballEX")
trigger13 = (power >= 500)
trigger14=(stateno=420)&&(command="FireballEX")
trigger14 = (power >= 500)
trigger15=(stateno=600)&&(command="FireballEX")
trigger15 = (power >= 500)
trigger16=(stateno=340)&&(command="FireballEX")
trigger16 = (power >= 500)
trigger17=(stateno=405)&&(command="FireballEX")
trigger17 = (power >= 500)
trigger18=(stateno=430)&&(command="FireballEX")
trigger18 = (power >= 500)
;===========================================================================
;marvel launcher
[State -1, AMP]
type = ChangeState
triggerall=(var(59)=0&&(statetype=S))
trigger1=(stateno=410)&&movecontact&&(command="UF")
value = 40
;---------------------------------------------------------------------------
;lateral kick C

[State -1]
type = ChangeState
value = 740
triggerall=var(59)=0&&command="lateral kick 3"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;teleport forward
[State -1, AMP]
type = ChangeState
triggerall=(var(59)=0&&(statetype=S))
trigger1=(stateno=100)&&(command="Zanzoken F")
trigger2=(stateno=0)&&(command="Zanzoken F")
value = 171
;----------------------------------------------------------------------------------------------------------------
;teleport backward
[State -1, AMP]
type = ChangeState
triggerall=(var(59)=0&&(statetype=S))
trigger1=(stateno=105)&&(command="Zanzoken B")
value = 172

;------------------------------------------------------------------------------------------------------------------

;Fireball
[State -1]
type = ChangeState
value = 900
triggerall=var(59)=0&&command="Fireball"
trigger1 = statetype = S
trigger1 = (power >= 200)
trigger1 = ctrl = 1

[State -1, enchainement]
type = ChangeState
triggerall=(var(59)=0&&(statetype=S))
trigger1=(stateno=900)&&(AnimTime <= 8)&&(command="Fireball2")
value = 901
;-------------------------------------------------------------------------------------------------
;Fireball2
[State -1]
type = ChangeState
value = 901
triggerall=var(59)=0&&command="Fireball2"
trigger1 = statetype = S
trigger1 = (power >= 250)
trigger1 = ctrl = 1
;--------------------------------------------------------------------------------------------
;Fireball2
[State -1]
type = ChangeState
value = 908
triggerall=var(59)=0&&command="Fireball3"
trigger1 = statetype = S
trigger1 = (power >= 350)
trigger1 = ctrl = 1

[State -1, enchainement]
type = ChangeState
triggerall=(var(59)=0&&(statetype=S))
trigger1=(stateno=901)&&(AnimTime <= 11)&&(command="Fireball3")
value = 908
;---------------------------------------------------------------------------
;Medium kameha
[State -1]
type = ChangeState
value = 970
triggerall=var(59)=0&&command="Medium kameha"
trigger1 = statetype = S
trigger1 = statetype = S
trigger1 = (power >= 1000)
trigger1 = ctrl = 1
trigger2=(stateno=200)&&(command="Medium kameha")
trigger2 = (power >= 1000)
trigger3=(stateno=210)&&(command="Medium kameha")
trigger3 = (power >= 1000)
trigger4=(stateno=215)&&(command="Medium kameha")
trigger4 = (power >= 1000)
trigger5=(stateno=300)&&(command="Medium kameha")
trigger5 = (power >= 1000)
trigger6=(stateno=310)&&(command="Medium kameha")
trigger6 = (power >= 1000)
trigger7=(stateno=315)&&(command="Medium kameha")
trigger7 = (power >= 1000)
trigger8=(stateno=320)&&(command="Medium kameha")
trigger8 = (power >= 1000)
trigger9=(stateno=330)&&(command="Medium kameha")
trigger9 = (power >= 1000)
trigger10=(stateno=335)&&(command="Medium kameha")
trigger10 = (power >= 1000)
trigger11=(stateno=700)&&(command="Medium kameha")
trigger11 = (power >= 1000)
trigger12=(stateno=400)&&(command="Medium kameha")
trigger12 = (power >= 1000)
trigger13=(stateno=410)&&(command="Medium kameha")
trigger13 = (power >= 1000)
trigger14=(stateno=420)&&(command="Medium kameha")
trigger14 = (power >= 1000)
trigger15=(stateno=600)&&(command="Medium kameha")
trigger15 = (power >= 1000)
trigger16=(stateno=340)&&(command="Medium kameha")
trigger16 = (power >= 1000)
trigger17=(stateno=405)&&(command="Medium kameha")
trigger17 = (power >= 1000)
trigger18=(stateno=430)&&(command="Medium kameha")
trigger18 = (power >= 1000)
trigger19=(stateno=909)&&(command="Medium kameha")
trigger19 = (power >= 1000)

;-----------------------------------------------------------------------------
;AIR DASH Run Fwd
[State -1: 		Run Fwd]
type 			= ChangeState
value 		= 112
triggerall 		= (Command = "FF") && (StateNo != [100,106])
trigger1		= (StateType = A) && (Ctrl)
;---------------------------------------------------------------------------
; AIR DASH Run Back
[State -1: 		Run Back]
type 			= ChangeState
value 		= 117
triggerall 		= (Command = "BB") && (StateNo != [100,106])
trigger1		= (StateType = A) && (Ctrl)
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

;lateral kick

[State -1]
type = ChangeState
value = 720
triggerall=var(59)=0&&command="lateral kick"
trigger1 = statetype = S
trigger1 = ctrl = 1


;---------------------------------------------------------------------------
;lateral kick B

[State -1]
type = ChangeState
value = 730
triggerall=var(59)=0&&command="lateral kick 2"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;fratricide 3
[State -1]
type = ChangeState
value = 320
triggerall=var(59)=0&&command="fratricide3"
trigger1 = statetype = S
trigger1 = ctrl = 1
;-----------------------
; dancing kick A
[State -1]
type = ChangeState
value = 440
triggerall=var(59)=0&&command="dancing kick"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------
[State -1, enchainement]
type = ChangeState
triggerall=(var(59)=0&&(statetype=A))
trigger1=(stateno=440)&&movecontact&&(command="a")
value = 450

;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
; dancing kick 2 B
[State -1]
type = ChangeState
value = 460
triggerall=var(59)=0&&command="dancing kick 2"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------

[State -1, enchainement]
type = ChangeState
triggerall=(var(59)=0&&(statetype=A))
trigger1=(stateno=460)&&movecontact&&(command="b")
value = 470
;-------------------------------------
[State -1, enchainement]
type = ChangeState
triggerall=(var(59)=0&&(statetype=A))
trigger1=(stateno=470)&&movecontact&&(command="b")
value = 480

;---------------------------------------------------------------------------
; dancing kick 2 C -emulation of the B moves, character unfinished
[State -1]
type = ChangeState
value = 460
triggerall=var(59)=0&&command="dancing kick 2"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------

[State -1, enchainement]
type = ChangeState
triggerall=(var(59)=0&&(statetype=A))
trigger1=(stateno=460)&&movecontact&&(command="c")
value = 470
;-------------------------------------
[State -1, enchainement]
type = ChangeState
triggerall=(var(59)=0&&(statetype=A))
trigger1=(stateno=470)&&movecontact&&(command="c")
value = 480

;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\



;Super Jump
[State -1,SJ]
type=ChangeState
value=707
triggerall=var(59)=0
triggerall=command="Super Jump"
triggerall=alive
triggerall=pos y>=0
triggerall=!win
trigger1=(statetype!=A&&ctrl)
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Run Fwd
[State -1: 		Run Fwd]
type 			= ChangeState
value 		= 100
triggerall 		= (Command = "FF") && (StateNo != [100,106])
trigger1		= (StateType = S) && (Ctrl)

;---------------------------------------------------------------------------
;Run Back
[State -1: 		Run Back]
type 			= ChangeState
value 		= 105
triggerall 		= (Command = "BB") && (StateNo != [100,106])
trigger1		= (StateType = S) && (Ctrl)

;---------------------------------------------------------------------------

;-| Hyper |-----------------------------------------------------------------

;---------------------------------------------------------------------------

;===========================================================================
;-| Special |---------------------------------------------------------------



;===========================================================================
;-| Basic |-----------------------------------------------------------------
;Stand Weak Punch 
[State -1, SWP]
type = ChangeState
triggerall=(var(59)=0&&(statetype=S))
trigger1=(ctrl)&&(command="x")
value = 200
;---------------------------------------------------------------------------
;Stand Medium Punch 
[State -1, SMP]
type = ChangeState
triggerall=(var(59)=0&&(statetype=S))
trigger1=(ctrl)&&(command="y")
value = 210
;---------------------------------------------------------------------------
;Stand HARD Punch 
[State -1, SHP]
type = ChangeState
triggerall=(var(59)=0&&(statetype=S))
trigger1=(ctrl)&&(command="z")
value = 340
;---------------------------------------------------------------------------
;Stand hard punch chain cvs
[State -1, AMP]
type = ChangeState
triggerall=(var(59)=0&&(statetype=S))
trigger1=(stateno=210)&&movecontact&&(command="z")
value = 340
;---------------------------------------------------------------------------
;Stand hard punch chain garou/kof
[State -1, AMP]
type = ChangeState
triggerall=(var(59)=0&&(statetype=S))
trigger1=(stateno=310)&&movecontact&&(command="z")
value = 340
;---------------------------------------------------------------------------
;===========================================================================
; chain punch 1
[State -1, AMP]
type = ChangeState
triggerall=(var(59)=0&&(statetype=S))
trigger1=(stateno=200)&&movecontact&&(command="y")
value = 210

; chain punch 2
;[State -1, AMP]
;type = ChangeState
;triggerall=(var(59)=0&&(statetype=S))
;trigger1=(stateno=215)&&movecontact&&(command="y")
;value = 700
;===========================================================================

;/////////////////garou kof chain type\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\


[State -1, AMP]
type = ChangeState
triggerall=(var(59)=0&&(statetype=S))
trigger1=(stateno=300)&&movecontact&&(command="y")
value = 210

[State -1, AMP]
type = ChangeState
triggerall=(var(59)=0&&(statetype=S))
trigger1=(stateno=200)&&movecontact&&(command="a")
value = 300

;=========cvs 3 kick type chain===============================================
;Stand light kick 
[State -1, SLK]
type = ChangeState
triggerall=(var(59)=0&&(statetype=S))
trigger1=(ctrl)&&(command="a")
value = 300
;---------------------------------------------------------------------------
;Stand hard kick 
[State -1, SHK]
type = ChangeState
triggerall=(var(59)=0&&(statetype=S))
trigger1=(ctrl)&&(command="b")
value = 310
;---------------------------------------------------------------------------
;===========================================================================
; chain kick cvs pied 2
[State -1, AMP]
type = ChangeState
triggerall=(var(59)=0&&(statetype=S))
trigger1=(stateno=300)&&movecontact&&(command="b")
value = 315

;Stand hard kick 
[State -1, SLK]
type = ChangeState
triggerall=(var(59)=0&&(statetype=S))
trigger1=(ctrl)&&(command="c")
value = 330

;cvs chain pied 3
[State -1, AMP]
type = ChangeState
triggerall=(var(59)=0&&(statetype=S))
trigger1=(stateno=315)&&movecontact&&(command="c")
value = 330

;cvs chain pied 2.5
[State -1, AMP]
type = ChangeState
triggerall=(var(59)=0&&(statetype=S))
trigger1=(stateno=310)&&movecontact&&(command="c")
value = 330


;===========================================================================

; Crouch weak punch 
[State -1, CWP]
type            = ChangeState
value      = 405
triggerall      = (command = "x")
trigger1        = (statetype = C) && (ctrl)
;---------------------------------------------------------------------------
[State -1, AMP]
type = ChangeState
triggerall=(var(59)=0&&(statetype=C))
trigger1=(stateno=405)&&movecontact&&(command="y")
value = 400

[State -1, AMP]
type = ChangeState
triggerall=(var(59)=0&&(statetype=C))
trigger1=(stateno=400)&&movecontact&&(command="z")
value = 410
; Crouch weak punch 2
[State -1, CWP]
type            = ChangeState
value      = 400
triggerall      = (command = "y")
trigger1        = (statetype = C) && (ctrl)
;---------------------------------------------------------------------------
;Uppercut punch
[State -1, UP]
type = ChangeState
triggerall=(var(59)=0&&(statetype=c))
trigger1 = (Command = "z") && (Command = "holddown") && (Var(2) <= 0)
value = 410
;---------------------------------------------------------------------------

;Crouch light kick 
[State -1, CWK]
type            = ChangeState
value      = 420
triggerall      = (command = "a")
trigger1        = (statetype = C) && (ctrl)
;---------------------------------------------------------------------------
;chain crouch kick 2
[State -1, AMP]
type = ChangeState
triggerall=(var(59)=0&&(statetype=C))
trigger1=(stateno=420)&&movecontact&&(command="b")
value = 600

;chain crouch kick 2
[State -1, AMP]
type = ChangeState
triggerall=(var(59)=0&&(statetype=C))
trigger1=(stateno=600)&&movecontact&&(command="c")
value = 430

;Crouch HIGH kick 
[State -1, ChK]
type            = ChangeState
value      = 600
triggerall      = (command = "b")
trigger1        = (statetype = C) && (ctrl)
;---------------------------------------------------------------------------
;Crouch slide kick 
[State -1, CSK]
type            = ChangeState
value      = 430
triggerall      = (command = "c")
trigger1        = (statetype = C) && (ctrl)
;---------------------------------------------------------------------------








;=============================================================================================
;enchainement aerien X
; Air Light Punch
[State -1, ALP]
type            = ChangeState
value      = 500
triggerall      = (command = "x")
trigger1        = (statetype = A) && (ctrl)


; Air Light Punch 2
[State -1, ALP]
type            = ChangeState
value      = 510
triggerall      = (command = "y")
trigger1        = (statetype = A) && (ctrl)

[State -1, AHP]
type = ChangeState
triggerall=(var(59)=0&&(statetype=A))
trigger1=(stateno=500)&&movecontact&&(command="y")
value = 510

;shit
[State -1, AHP]
type = ChangeState
triggerall=(var(59)=0&&(statetype=A))
trigger1=(stateno=500)&&movecontact&&(command="a")
value = 560

[State -1, AHP]
type = ChangeState
triggerall=(var(59)=0&&(statetype=A))
trigger1=(stateno=510)&&movecontact&&(command="b")
value = 570

;-----------------------------------------------------------------------------------------------------

; 2 mains
[State -1, ALP]
type            = ChangeState
value      = 540
triggerall      = (command = "z")
trigger1        = (statetype = A) && (ctrl)

; 2 mains (hard punch)
[State -1, AHP]
type = ChangeState
triggerall=(var(59)=0&&(statetype=A))
trigger1=(stateno=510)&&movecontact&&(command="z")
value = 540
; 2 mains (hard punch)
[State -1, AHP]
type = ChangeState
triggerall=(var(59)=0&&(statetype=A))
trigger1=(stateno=570)&&movecontact&&(command="z")
value = 540
;-----------------------------------------------------------------------------------------------------



;enchainement kick a
; Air Light Punch
[State -1, ALP]
type            = ChangeState
value      = 560
triggerall      = (command = "a")
trigger1        = (statetype = A) && (ctrl)

; air luight punch chain
[State -1, AHK]
type = ChangeState
triggerall=(var(59)=0&&(statetype=A))
trigger1=(stateno=560)&&movecontact&&(command="y")
value = 510

;enchainement kick b
; Air Light Punch
[State -1, ALP]
type            = ChangeState
value      = 570
triggerall      = (command = "b")
trigger1        = (statetype = A) && (ctrl)

; Air Light kick v
[State -1, ALP]
type            = ChangeState
value      = 550
triggerall      = (command = "c")
trigger1        = (statetype = A) && (ctrl)



; air luight kick chain
[State -1, AHK]
type = ChangeState
triggerall=(var(59)=0&&(statetype=A))
trigger1=(stateno=560)&&movecontact&&(command="b")
value = 570
;------------------------------------------------------------------------------------------------------

; air luight kick chain 2
[State -1, AHK]
type = ChangeState
triggerall=(var(59)=0&&(statetype=A))
trigger1=(stateno=570)&&movecontact&&(command="c")
value = 550
;==============================================================================================================

;=====================enchainement aerien Y======================================================================

;enchainement aerien Y
; Air Medium Punch
;[State -1, AMP]
;type            = ChangeState
;value      = 530
;triggerall      = (command = "y")
;trigger1        = (statetype = A) && (ctrl)
;------------------------------------------------------------------------------------------------------------------
;enchinement y 2
[State -1, AHP]
type = ChangeState
triggerall=(var(59)=0&&(statetype=A))
trigger1=(stateno=530)&&movecontact&&(command="y")
value = 580
;-----------------------------------------------------------------------------------------------------

;Charge Up/Power Up
[State -1, ChargePower]
type = ChangeState
value = 800
triggerall = power < 4000 && time > 2
trigger1 = command = "holda" && command = "holdx" && statetype = S && ctrl = 1 && command != "holdfwd"
;trigger2 = command = "holda" && command = "holdx" && stateno = 3100 && command != "holdfwd"

;================================================================================================================================



[Statedef -2]

;winko helper
[State -2: Helper]
type = Helper
trigger1 = (WinKO) && (NumHelper(10100) = 0)
helpertype = Normal
name = "WinKO"
id = 10100
pos = 0,0
postype = p1
facing = 0
stateno = 10100
keyctrl = 0
ownpal = 1
supermovetime = 1000
pausemovetime = 1000
ignorehitpause = 1

;Parry    Var0 = 4 &&  Var1 = 5

[State -2: Null]
type = Null
trigger1 = (!Time) && (Var(5) = 0)
trigger1 = ((Command = "holdfwd") && (StateNo = 20)) ^^ ((Command = "holddown") && (StateNo = [10,11]))
trigger1 = (Var(4) := 8)
trigger2 = (Command != "holdfwd") && (Command != "holddown") && (Var(5) = 1)
trigger2 = (Var(5) := 0)
ignorehitpause = 1

[State -2: VarAdd]
type = VarAdd
trigger1 = (Var(4) > 0)
var(4) = -1
ignorehitpause = 1

;This is used for parrying in the air, while jumping and during the aerial parry.
;Note: ***1 is the ground parry state, ***2 is the air parry state, ***3 is the
;helper for air parrying, and ***4 is the parry spark.

[State -2: Helper]
type = Helper
trigger1 = ((StateNo = 50) || (StateNo = 8223)) && (Command = "holdfwd") && (NumHelper(10150) = 0)
helpertype = Normal
name = "Air Parry"
id = 10150
pos = 0,0
postype = p1
facing = 0
stateno = 10150
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1

;The standing parry state.

[State -2: HitOverride]
type = HitOverride
triggerall = (StateType != A) && (Ctrl) && (Var(4) > 0)
trigger1 = (Command != "holddown") && (Command != "holdback")
attr = SA, AA, AP
slot = 0
stateno = 8221
ignorehitpause = 1

;The crouching parry state, for low attacks.

[State -2: HitOverride]
type = HitOverride
triggerall = (StateType != C) && (Ctrl) && (Var(4) > 0)
trigger1 = (Command != "holdfwd") && (Command != "holdback")
attr = C, AA, AP
slot = 0
stateno = 8221
ignorehitpause = 1

;The aerial parry state.

[State -2: HitOverride]
type = HitOverride
triggerall = ((StateNo = 50) || (StateNo = 8223)) && (Var(4) > 0)
trigger1 = (Command != "holddown") && (Command != "holdback")
attr = SCA, AA, AP
slot = 0
stateno = 8223
ignorehitpause = 1

;---------------------------------------------------------------------------------------------------------------------------------




[Statedef -3]

[State -3, VarAdd]
type = Varadd
triggerall = (GetHitVar(HitShakeTime) = 5)
trigger1 = (StateNo = 150) || (StateNo = 152)
var(0) = 1
ignorehitpause = 1

[State -3, VarAdd]
type = VarAdd
triggerall = (GetHitVar(HitShakeTime) = 10)
trigger1 = (StateNo = 150) || (StateNo = 152)
var(0) = 2
ignorehitpause = 1

[State -3, VarAdd]
type = Varadd
triggerall = (GetHitVar(HitShakeTime) = 15)
trigger1 = (StateNo = 150) || (StateNo = 152)
var(0) = 3
ignorehitpause = 1

;This is used, to recover from the effect if the character is not blocking, or getting hit by an attack...

[State -3, VarAdd]
type = VarAdd
triggerall = (Var(0) > 0) && (!Time) && (StateNo = 5000) && (Alive)
trigger1 = (Anim = 5000) || (Anim = 5001) || (Anim = 5010) || (Anim = 5011)
var(0) = -3
ignorehitpause = 1

;...and this is used when the character has reached his/her limit.

[State -3, VarAdd]
type = VarAdd
triggerall = (Var(0) > 5) && (!Time) && (StateNo = 5010) && (Alive)
trigger1 = (Anim = 5020) || (Anim = 5021)
var(0) = -3
ignorehitpause = 1

[State -3, VarAdd]
type = VarAdd
triggerall = (Var(0) > 0) && (!Time) && (StateNo = 5000) && (Alive)
trigger1 = (Anim = 5002) || (Anim = 5012)
var(0) = -6
ignorehitpause = 1

[State -3, VarAdd]
type = VarAdd
trigger1 = (Var(0) > 0) && (!Time) && (StateNo = 5010) && (Alive) && (Anim = 5022)
var(0) = -6
ignorehitpause = 1

[State -3, VarAdd]
type = VarAdd
trigger1 = (Var(0) > 0) && (!Time) && (StateNo = 5100) && (Alive)
var(0) = -9
ignorehitpause = 1
 
;A code is needed, to recover from the effect if the character is not blocking, nor getting hit by an attack.

[State -3, VarAdd]
type = VarAdd
trigger1 = (Var(0) > 5) && ((GameTime%5) = 0) && (MoveType != H) && (StateNo != [130,160])
var(0) = -1
ignorehitpause = 1

[State -3, ChangeState]
type = ChangeState
trigger1 = var(0) >= 35
value = 5300
ctrl = 0
ignorehitpause = 1





;-------------------------------------------------------------------------------------------------------------------------------------------
