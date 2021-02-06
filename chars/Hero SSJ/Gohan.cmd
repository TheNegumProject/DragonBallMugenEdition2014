;===============
;Teen Gohan SSJ2
;===============

;------------------------------------------------------
;Base: Cyanide
;Progging: HaVoC
;Sprites: Neocide
;------------------------------------------------------

;==========================COMMANDS========================================
;-| Super Motions |--------------------------------------------------------

;-----------------------------------

;-----------------------------------

;-----------------------------------

;-----------------------------------


;-| Special Motions |------------------------------------------------------
[Command]
name = "QCB_x"
command = ~D, DB, B, x
time = 30

[Command]
name = "QCB_y"
command = ~D, DB, B, y
time = 30

[Command]
name = "Sonic Kick_y"
command = ~D, U, a
time = 30

[Command]
name = "Sonic Kick_x"
command = ~D, U, b
time = 30

[Command]
name = "Needle Rocket"
command = ~20$B, $F, a

[Command]
name = "Needle Rocket"
command = ~20$B, $F, b

[Command]
name = "QCB_KHH"
command = ~D, DB, B, a
time = 30

[Command]
name = "QCB_KHH"
command = ~D, DB, B, b
time = 30

[Command]
name = "Flying Bat"
command = ~B, DB, DF, y
time = 30

[command]
name = "Sonic Bird"
command = ~D,DF,F,a
time = 15

[command]
name = "Sonic Bird"
command = ~D,DF,F,b
time = 15

[command]
name = "kickair"
command = ~D,B,b
time = 15

[command]
name = "kickair"
command = ~D,B,a
time = 15
;-----------------------------------

;-----------------------------------

;-----------------------------------

;-----------------------------------

;-----------------------------------

;-| Misc Motions |---------------------------------------------------------


;-| Double Tap |-----------------------------------------------------------

[Command]
name = "superj"
command = $D, $U
time = 10
buffer.time = 10

[Command]
name = "FF"     
command = F, F
time = 12

[Command]
name = "BB"     
command = B, B
time = 12

[Command]
name = "ff"     
command = F, F
time = 12
buffer.time = 7

[Command]
name = "bb"     
command = B, B
time = 12
buffer.time = 7

[Command]
name = "DD"     
command = D, D
time = 12
buffer.time = 7

[Command]
name = "UU"     
command = U, U
time = 12
buffer.time = 7

[Command]
name = "Long Jump"
command = ~D, UF
time = 12

[Command]
name = "Long Jump"
command = ~D, UB
time = 12

[command]
name = "zancount"
command = ~D, DB, B, z
time = 15


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
[command]
name = "launch light"
command = /DF, x

[command]
name = "launch hard"
command = /DF, y

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

;===========================================================================
;-| Misc |------------------------------------------------------------------
;---------------------------------------------------------------------------


;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Run Fwd AIR
[State -1: 		Run Fwd]
type 			= ChangeState
value 		= 60
triggerall 		= (Command = "FF") && (StateNo != [60,61])
trigger1		= (StateType = A) && (Ctrl)

;---------------------------------------------------------------------------
;Run BACK AIR
[State -1: 		Run Fwd]
type 			= ChangeState
value 		= 65
triggerall 		= (Command = "BB") && (StateNo != [65,66])
trigger1		= (StateType = A) && (Ctrl)
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
;flight
[state -1]
type = null;changestate
triggerall = command = "cz"
trigger1 = ctrl
value = ifelse(pos Y!= 0, 1900, 1899)

;flight recover
[state -1]
type = null;changestate
triggerall = command = "by" && var(2) >= 10
trigger1 = movetype = H && pos Y< -40
value = 5211

;zanzoken counter
[state -1]
type = null
triggerall = command = "zancount" && var(33)=0 && power >= 500
trigger1 = ctrl && enemy,movetype = A && (inguarddist)
value = 1002

;zanzoken
[state -1]
type = null;changestate
triggerall = command = "z" && var(33)=0
trigger1 = ctrl
trigger2 = stateno = 1900 && var(33)=0
value = 1000

;counter
[state -1]
type = changestate
triggerall = command = "by"
trigger1 = stateno = [130,155]
value = 930

;===========================================================================
;-| Super|------------------------------------------------------------------

;===========================================================================
;-| Special |---------------------------------------------------------------
;Sonic Bird
[State -1, 2100]
type = ChangeState
value = 2100
triggerall = (command ="Sonic Bird")&&(var(3)<2)&&(power > 500)
trigger1 = (ctrl)
trigger2 = (stateno=[130,160])
trigger3 = ((stateno =[2102,2103])&&(movecontact)&&AnimElem =2,>5)
trigger4 = stateno=200&&movecontact
trigger5 = stateno=210&&movecontact
trigger6 = stateno=230&&movecontact
trigger7 = stateno=240&&movecontact
trigger8 = stateno=213&&movecontact
;----------------------------------------------------------------------------
;Pin Missle
[State -1,]
type = ChangeState
value = 251
triggerall = (command ="QCB_x"||command="QCB_y")
trigger1 = statetype=S&&ctrl
trigger2 = (stateno=200||stateno=210)&&movecontact
trigger3 = (stateno=230||stateno=240)&&movecontact
trigger4 = (stateno=213||stateno=220)&&movecontact

;Pin Pocket Medium
[State -1,]
type = Changestate
value = 290
triggerall = (command="x"||command="y")&&(pos y=0)
trigger1 = stateno=280&&movecontact

[State -1,]
type = Changestate
value = 7001
triggerall= command="kickair"
trigger1 = stateno=292&&movecontact

;Pin Pocket Hard
[State -1,]
type = Changestate
value = 292
triggerall = command="x"||command="y"&&pos y=0
trigger1 = stateno=281&&movecontact
;----------------------------------------------------------------------------
;Sonic Kick
[State -1,]
type = ChangeState
value = 460
triggerall = (((command="Sonic Kick_y")||(command="Sonic Kick_x"))&&(statetype=A))
trigger1 = statetype!=C&&statetype!=S&&ctrl
;----------------------------------------------------------------------------
;Needle Rocket
[State -1,]
type = ChangeState
value = 701
triggerall = command="Needle Rocket"
trigger1 = statetype=S&&ctrl
trigger2 = statetype!=C&&statetype!=A
;----------------------------------------------------------------------------
;Flying Bat
[State -1,]
type = ChangeState
value = 702
triggerall = command="Flying Bat"
trigger1 = statetype=S&&ctrl
;----------------------------------------------------------------------------
;Kick Kame-Hame-HA
[State -1,]
type = ChangeState
value = 470
triggerall = ((command="QCB_KHH"&&command!="holdfwd")&&(p2bodydist x <=45&&pos y=0))
trigger1 = statetype=S&&ctrl
trigger1 = ((roundstate=2)&&(power>=500))
trigger2 = ((stateno=280||stateno=200)||(stateno=210))&&movecontact
trigger3 = (stateno=230||stateno=240)&&movecontact
trigger4 = stateno=213&&movecontact

;===========================================================================
;-| Basic |-----------------------------------------------------------------
;--------------------Launchers------------------------------------------------------
[state -1]
type = null;changestate
triggerall = command = "launch light"
trigger1 = ctrl && statetype != A
trigger2 = stateno = 300 && movecontact
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 220 && movecontact 
trigger5 = stateno = 320 && movecontact
value = 240

[state -1]
type =  null;changestate
triggerall = command = "launch hard"
trigger1 = ctrl && statetype != A
trigger2 = stateno = 300 && movecontact
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 220 && movecontact 
trigger5 = stateno = 320 && movecontact
trigger6 = stateno = 210 && movecontact && (prevstateno != 230 && prevstateno != 210)
trigger7 = stateno = 230 && movecontact && (prevstateno != 230 && prevstateno != 210)
value = 241

;--------------------crouching------------------------------------------------------
;Crouch Weak punch
[State -1, SWP]
type = ChangeState
triggerall = command = "x" && command = "holddown"
trigger1 = ctrl && statetype = C
trigger2 = stateno=213&&movecontact
trigger3 = stateno=200&&movecontact
trigger4 = stateno=320&&movecontact
trigger5 = stateno=220&&movecontact
trigger6 = stateno=230&&movecontact
trigger7 = stateno=210&&movecontact

value = 300

;----------------------------------------------------------------------------
;Crouch uppercut
[State -1, SWP]
type = ChangeState
triggerall = command = "y" && command = "holddown"
trigger1 = ctrl && statetype = C
trigger2 = stateno=300&&movecontact
trigger3 = stateno=200&&movecontact
trigger4 = stateno=213&&movecontact

value = 310

;-----------------------------------------------------------------------------
;Crouch Kick
[State -1, SWP]
type = ChangeState
triggerall = command = "a" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno=300&&movecontact
trigger3 = stateno=200&&movecontact
trigger4 = stateno=210&&movecontact
trigger5 = stateno=213&&movecontact
trigger6 = stateno=230&&movecontact
value = 320

;----------------------------------------------------------------------------
;Crouch SLIDE Kick
[State -1, SWP]
type = ChangeState
triggerall = command ="b"&&command="holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno=300&&movecontact
trigger3 = stateno=320&&movecontact
trigger4 = stateno=200&&movecontact
trigger5 = stateno=210&&movecontact
trigger6 = stateno=213&&movecontact
trigger7 = stateno=230&&movecontact

value = 330

;------------------------------------STANDING-------------------------------------
;Stand Elbow Punch
[State -1, SEP]
type = ChangeState
triggerall = command = "x"
triggerall = command != "holddown"
Triggerall = p2bodydist x <= 10
trigger1 = ctrl && statetype = S
trigger2 = stateno=200&&MoveContact
trigger4 = stateno=220&&MoveContact
trigger5 = stateno=210&&movecontact
value = 213

;Stand Light Punch
[State -1, SLP]
type = ChangeState
triggerall = command="x"&&command!="holddown"
trigger1 = ctrl && statetype = S
trigger2 = stateno =200&&MoveContact
trigger3 = stateno=210&&MoveContact

value = 200
;---------------------------------------------------------------------------
;Stand Hard Punch
[State -1, SMP]
type = ChangeState
triggerall = p2bodydist x<5&&command="y"&&command!="holddown"
trigger1 = ctrl&&statetype = S
value = 214

;Stand Medium Punch
[State -1, SMP]
type = ChangeState
triggerall = command="y"&&command!="holddown"
trigger1 = ctrl && statetype = S
trigger2 = stateno=213&&movecontact
trigger3 = stateno=200&&movecontact
trigger4 = stateno=220&&movecontact

value = 210
-------------------------------------------------
;Stand light Kick
[State -1, SWP]
type = ChangeState
triggerall = command ="a"&&command!="holddown"
trigger1 = ctrl && statetype = S
trigger2 = stateno=213&&movecontact
trigger3 = stateno=200&&movecontact
trigger3 = stateno=220&&movecontact
value = 220

;----------------------------------------------------------------------------

;Stand Hard Kick
[State -1, SWP]
type = ChangeState
triggerall = command ="b"&&command!="holddown"
trigger1 = ctrl && statetype = S
trigger2 = stateno=220&&(movecontact&&Animelem=3,2)
value = 230

;-------------------------air---------------------------------------------
;Air light Punch
[State -1, SWP]
type = ChangeState
triggerall = command = "x"
trigger1 = ctrl && statetype = A
trigger2 = stateno = 420 && movecontact
trigger3 = stateno = 421 && movecontact
value = 400

;----------------------------------------------------------------------------
;air light doubletap p
[State -1, ALPP]
type = null;changestate
value = 401
triggerall = command = "x"
trigger1 = stateno = 400 && movecontact && statetype = A

;----------------------------------------------------------------------------
;Air hard Punch
[State -1, SWP]
type = ChangeState
triggerall = command = "y"
trigger1 = ctrl && statetype = A
trigger2 = stateno = 420 && movecontact
trigger3 = stateno = 400 && movecontact
trigger4 = stateno = 401 && movecontact
trigger5 = stateno = 421 && movecontact
value = 410

;-------------------------------------------------------------------------------

;Air light kick
[State -1, SWP]
type = ChangeState
triggerall = command = "a"
trigger1 = ctrl && statetype = A
trigger2 = stateno = 400 && movecontact
trigger3 = stateno = 401 && movecontact
value = 420

;-------------------------------------------------------------------------------
air light doubletap k
[state -1, alkk]
type = null;changestate
value = 421
triggerall = command = "a"
trigger1 = stateno = 420 && movecontact && statetype = A

;----------------------------------------------------------------------------
;Air hard kick
[State -1, SWP]
type = ChangeState
triggerall = command = "b"
trigger1 = ctrl && statetype = A
trigger2 = stateno = 400 && movecontact
trigger3 = stateno = 401 && movecontact
trigger4 = stateno = 410 && movecontact
trigger5 = stateno = 420 && movecontact
value = 430

;____________________________________________________________________________

;=====================================chain smack wall======================================

;---------------------------------------------------------------------------

;Charge Up/Power Up
[State -1, ChargePower]
type = ChangeState
value = 800
triggerall = power < 3000
trigger1 = command = "holda" && command = "holdx" && statetype = S && ctrl = 1

