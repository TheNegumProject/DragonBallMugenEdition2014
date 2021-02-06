;-| Button Remapping |-----------------------------------------------------
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s
;-| Default Values |-------------------------------------------------------
[Defaults]
command.time = 15
command.buffer.time = 1

;-| Super Motions |--------------------------------------------------------

;-| Special Motions |------------------------------------------------------

;-|Normal moves|--------------------------------------------------------------------------
[Command]
name = "KX10x"
command = ~F,DF,DB,B, x
time = 15

[Command]
name = "KX10y"
command = ~F,DF,DB,B, y
time = 15

[Command]
name = "KHH"
command = ~B,DB,D,DF,x
time = 15

[Command]
name = "KHH"
command = ~B,DB,D,DF,y
time = 15

[Command]
name = "Taioken"
command =~D,DF,DB,a
time = 20

[Command]
name = "Taioken"
command =~D,DF,DB,b
time = 20

[Command]
name = "Hammer Smash"
command = ~D,DB,a
time = 15

[Command]
name = "Hammer Smash"
command = ~D,DB,b
time = 15

[Command]
name = "rising knee-flip"
command = ~F,DF,a
time = 15

[Command]
name = "rising knee-flip"
command = ~F,DF,b
time = 15

[Command]
name = "AKHH"
command = ~D,DF,x
time = 15

[Command]
name = "AKHH"
command = ~D,DF,y
time = 15


;-|SSJ2 Moves |-----------------------------------------------------------------

[command]
name ="Zanzoken x"
command = ~B,DB,D,DF,x
time = 25

[command]
name ="Zanzoken y"
command = ~B,DB,D,DF,y
time = 25

[command]
name ="S2A"
command = ~F,D,DF,a
time = 25

[command]
name ="S2A"
command = ~F,D,DF,b
time = 25

[command]
name ="Hammer Kick Light"
command = ~B,D,DB,a
time = 25

[command]
name ="Hammer Kick Hard"
command = ~B,D,DB,b
time = 25

[Command]
name = "Ka_A"
command =~D,DB,a
time = 25

[Command]
name = "Ka_B"
command =~D,DB,b
time = 25

[Command]
name = "Pow"
command =~D,DF,a
time = 25

[Command]
name = "Pow"
command =~D,DF,b
time = 25

[Command]
name = "Shunkan Idou"
command =~D,DB,x
time = 25

[Command]
name = "Shunkan Idou Straight"
command =~D,DF,x
time = 25


[Command]
name = "Shunkan Idou High"
command =~D,DB,y
time = 25

;-|SSJ3 Moves |-----------------------------------------------------------------

[command]
name ="Super 3 frenzy light"
command = ~F,D,DF,x
time = 25

[command]
name ="Super 3 frenzy Hard"
command = ~F,D,DF,y
time = 25

[Command]
name = "Bshot_Rapid"
command = ~F,DF,DB,B, x
time = 25

[Command]
name = "Bshot_Spread"
command = ~F,DF,DB,B, y
time = 25

[Command]
name = "Renzoku Frenzy"
command = ~F,DF,DB,B, a
time = 25

[Command]
name = "Renzoku Frenzy Hard"
command = ~F,DF,DB,B, b
time = 25


[Command]
name = "Aki"
command =~D,DF,x
time = 25


[Command]
name = "Aki"
command =~D,DF,y
time = 25


[command]
name ="DT"
command = ~F,D,DF,a
time = 25

[command]
name ="DT"
command = ~F,D,DF,b
time = 25

[Command]
name = "Khh"
command =~D,DF,a
time = 25


[Command]
name = "Khh"
command =~D,DF,b
time = 25

[Command]
name = "Port Attack"
command =~D,DB,a
time = 25

[Command]
name = "Port Attack"
command =~D,DB,b
time = 25




[command]
name ="S2I"
command = U,U,D,D,B,F,B,F
time = 80

[command]
name ="S3I"
command = U,D,D,U,F,F,D,U
time = 80




[command]
name ="Revert"
command = a+c
time = 10


;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "superj"
command = $D, $U
time = 10
buffer.time = 10

[Command]
name = "superj"
command = ~D, UF
time = 10

[Command]
name = "superj"
command = ~D, UB
time = 10

;-| 2/3 Button Combination |-----------------------------------------------

[Command]
name = "recovery2";Required (do not remove)
command = x+y+a
time = 10

[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "KnockAway";Required (do not remove)
command = x+a
time = 5


;-| Dir + Button |---------------------------------------------------------
[Command]
name = "superj"
command = ~$D, $U
time = 10

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b

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
name = "start"
command = s
time = 1

[Command]
name = "charge"
command = /$c
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

[Command]
name = "holdupandfwd";Required (do not remove)
command = /UF
time = 1

[Command]
name = "holdupandback";Required (do not remove)
command = /UB
time = 1

[Command]
name = "holddownandfwd";Required (do not remove)
command = /DF
time = 1

;---------------------------------------------------------------------------
; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]
;---------------------------------------------------------------------------
;-------------------------------SUPERS--------------------------------------
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;------------------------------SPECIALS-------------------------------------
;---------------------------------------------------------------------------

;-|normal specials|-----------------------------------------------------------------------
;Kaioken X10
[State -1, KX10,hard]
type = ChangeState
value = 710
trigger1 = command = "KX10y"
trigger1 = statetype!=A&&ctrl
trigger1 = var(1) = 0
;-----------------------------------------------
;Kaioken X10
[State -1, KX10,light]
type = ChangeState
value = 712
trigger1 = command = "KX10x"
trigger1 = statetype!=A&&ctrl
trigger1 = var(1) = 0
;----------------------------------------------
;KameHameha
[State -1, KHH]
type = ChangeState
value = 720
trigger1 = command = "KHH"
trigger1 = statetype!=A&&ctrl
trigger1 = numhelper(6024) = 0
trigger1 = var(1) = 0
;----------------------------------------------------------
;Taioken
[State -1, taioken]
type = ChangeState
value = 740
triggerall = command = "Taioken"
trigger1 = numtarget(20) = 0
trigger1 = statetype!=A&&ctrl
trigger1 = var(1) = 0
;------------------------------------------------------------------
;Zanzoken hammer smash
[State -1, hammer smash]
type = ChangeState
value = 725
trigger1 = command = "Hammer Smash"
trigger1 = statetype = S || statetype = A && ctrl
trigger1 = var(1) = 0
;------------------------------------------------------------------
;Airial Kamehameha
[State -1, Air Kamehameha]
type = ChangeState
value = 750
trigger1 = command = "AKHH"
trigger1 = statetype = A && ctrl
trigger1 = var(1) = 0
;------------------------------------------------------------------
;rising flip\knee - (knee)
[State -1, knee-flip]
type = ChangeState
value = 730
trigger1 = command = "rising knee-flip"
trigger1 = statetype!=A&&ctrl
trigger1 = var(1) = 0
;------------------------------------------------------------------
;rising flip\knee - (flip)
[State -1, knee-flip]
type = ChangeState
value = 732
triggerall = command = "rising knee-flip"
trigger1 = stateno = 731 && time<45
trigger1 = statetype!=A&&ctrl
trigger1 = var(1) = 0

;-|SSJ2|---------------------------------------------------------------------
;Hammer Kick
[State -1, Super 2 attack]
type = ChangeState
value = 10755
trigger1 = command = "Hammer Kick Light"
trigger1 = statetype!=A&&ctrl
trigger1 = var(1) = 10000
;-----------------------------------------------------------------------
;Hammer Kick
[State -1, Super 2 attack]
type = ChangeState
value = 10756
trigger1 = command = "Hammer Kick Hard"
trigger1 = statetype!=A&&ctrl
trigger1 = var(1) = 10000
;Kapow
[State -1, Ka]
type = ChangeState
value = 10750
trigger1 = command = "Ka_A"
trigger1 = statetype!=A&&ctrl
trigger1 = var(1) = 10000
;------------------------------------------------------------------

[State -1, Ka]
type = ChangeState
value = 10750
trigger1 = command = "Ka_B"
trigger1 = statetype!=A&&ctrl
trigger1 = var(1) = 10000
;--------------------------------------------------------------------
[State -1, Pow]
type = ChangeState
value = 10752
triggerall = command = "Pow"
trigger1 = !statetype=A
trigger1 = var(1) = 10000
trigger1 = stateno = 10751 && time <45
;-----------------------------------------------------------------------
;Super 2 attack
[State -1, Super 2 attack]
type = ChangeState
value = 10753
trigger1 = command = "S2A"
trigger1 = statetype!=A&&ctrl
trigger1 = var(1) = 10000

;---------------------------------------------------------------------
;Zanzoken Assault
[State -1,Zanzoken Assault]
type = ChangeState
value = 10770
trigger1 = command = "Zanzoken x"
trigger1 = statetype!=A&&ctrl
trigger1 = var(1) = 10000

;---------------------------------------------------------------------
;Zanzoken Assault
[State -1, Zanzoken Assault]
type = Changestate
Value = 10771
Trigger1 = command = "Zanzoken y"
Trigger1 = statetype!=A&&ctrl
Trigger1 = Var(1) = 10000

;---------------------------------------------------------------------
;Shunkan Idou
[State -1,Shunkan Idou ]
type = ChangeState
value = 10760
trigger1 = command = "Shunkan Idou"
trigger1 = statetype!=A&&ctrl
trigger1 = var(1) = 10000

;---------------------------------------------------------------------
;Shunkan Idou
[State -1,Shunkan Idou ]
type = ChangeState
value = 10761
trigger1 = command = "Shunkan Idou High"
trigger1 = statetype!=A&&ctrl
trigger1 = var(1) = 10000

;---------------------------------------------------------------------
;Shunkan Idou
[State -1,Shunkan Idou ]
type = ChangeState
value = 10764
trigger1 = command = "Shunkan Idou Straight"
trigger1 = statetype!=A&&ctrl
trigger1 = var(1) = 10000

;-|SSJ3|---------------------------------------------------------------------
;Super 3 frenzy
[State -1, Super 3 frenzy]
type = ChangeState
value = 20750
trigger1 = command = "Super 3 frenzy light"
trigger1 = statetype!=A&&ctrl
trigger1 = var(1) = 20000
;----------------------------------------------------------------------------
;Super 3 frenzy
[State -1, Super 3 frenzy]
type = ChangeState
value = 20753
trigger1 = command = "Super 3 frenzy Hard"
trigger1 = statetype!=A&&ctrl
trigger1 = var(1) = 20000
;----------------------------------------------------------------------------
;Boom! shotgun
[State -1,Boom Shotgun Rapid]
type = ChangeState
value = 20756
trigger1 = command = "Bshot_Rapid"
trigger1 = statetype!=A&&ctrl
trigger1 = var(1) = 20000

;----------------------------------------------------------------------------
;Boom! shotgun
[State -1,Boom Shotgun Rapid]
type = ChangeState
value = 20757
trigger1 = command = "Bshot_Spread"
trigger1 = statetype!=A&&ctrl
trigger1 = var(1) = 20000


[State -1, air kikou]
type = Changestate
value = 20758
triggerall= command="Aki"
trigger1 = statetype=A
trigger1 = stateno=20756||20757&&time>30
trigger1 = var(1) = 20000
;----------------------------------------------------------------------------
;Renzoku frenzy
[State -1,Renzoku Frenzy]
type = ChangeState
value = 20760
trigger1 = command = "Renzoku Frenzy"
trigger1 = statetype!=A&&ctrl
trigger1 = var(1) = 20000

;----------------------------------------------------------------------------
;Renzoku frenzy
[State -1,Renzoku Frenzy]
type = ChangeState
value = 20761
trigger1 = command = "Renzoku Frenzy Hard"
trigger1 = statetype!=A&&ctrl
trigger1 = var(1) = 20000

;----------------------------------------------------------------------------
;Double Trouble
[State -1,Double Trouble]
type = ChangeState
value = 20762
trigger1 = command = "DT"
trigger1 = statetype!=A&&ctrl
trigger1 = var(1) = 20000

[State -1, Kamehameha]
type = Changestate
value = 20764
triggerall= command="Khh"
trigger1 = statetype!=A
trigger1 = stateno=20763&&movehit&&(animelemtime(6) = [1,9]) || (animelemtime(7) = [1,6])
trigger1 = var(1) = 20000

[State -1, Kamehameha]
type = Changestate
value = 20765
triggerall= command="Port Attack"
trigger1 = statetype!=A
trigger1 = stateno=20763&&movehit&&(animelemtime(6) = [1,9]) || (animelemtime(7) = [1,6])
trigger1 = var(1) = 20000



;----------------------------------------------------------------------------

[State -1, S2I]
type =  ChangeState
value = 182
trigger1 = command = "S2I"
trigger1 = statetype = S
trigger1 = ctrl
;------------------------------------------------------------------

[State -1, S3I]
type = ChangeState
value = 182
trigger1 = command = "S3I"
trigger1 = statetype = S
trigger1 = ctrl

;-------------------------------------------------------------------
[State -1, S2R]
type = ChangeState
value = 808
trigger1 = command = "Revert"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = var(1) = 10000 || var(1) = 20000

;------------------------------------------------------------------
; Super Jump - Launcher
[State -1:      SJ - Launcher]
type            = ChangeState
value      = 54
triggerall      = (command = "holdup")
triggerall      = (!statetype = A)
trigger1	= (stateno = 445) && MoveHit
;---------------------------------------------------------------------------
;Run Fwd AIR
[State -1, Run Fwd]
type 			= ChangeState
value 		= 60
triggerall 		= (Command = "FF") && (StateNo != [60,61])
trigger1		= (StateType = A) && (Ctrl)
;---------------------------------------------------------------------------
;Run BACK AIR
[State -1, Run Fwd]
type 			= ChangeState
value 		= 65
triggerall 		= (Command = "BB") && (StateNo != [65,66])
trigger1		= (StateType = A) && (Ctrl)
;---------------------------------------------------------------------------
;PowerUp
[State -1, ChargePower]
type = ChangeState
value = 800
triggerall      = ((command = "holdy") && (command = "holdb"))
trigger1        = (statetype = S) && (ctrl)
;---------------------------------------------------------------------------
;-------------------------------BASICS--------------------------------------
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Weak Punch(Elbow)
[State -1, Stand Elbow Smash]
type = ChangeState
triggerall      = (p2bodydist X < 6) && command != "holddown" && (command = "x")
trigger1        = (statetype = S) && (ctrl)
Trigger2        = (StateNo = 205) && AnimElem = 2 && MoveContact
Trigger2        = (StateNo = 200) && AnimElem = 2
Trigger4        = (StateNo = 400) && AnimElem = 2, <  4&& MoveContact
value = 205
;---------------------------------------------------------------------------
;Stand Weak Punch
[State -1, Stand Weak Punch]
type = ChangeState
triggerall      = (command = "x") && command != "holddown"
trigger1        = (statetype = S) && (ctrl)
trigger2	= (StateNo = 200) && (AnimElem = 2, > 5 || MoveContact&& AnimElem = 2)
Trigger3        = (StateNo = 205) && AnimElem = 3, < 4 && MoveContact
Trigger4        = (StateNo = 400) && AnimElem = 2, < 4 && MoveContact
value = 200


;---------------------------------------------------------------------------
;Stand TwoHand Smash
[State -1, THS]
type = ChangeState
value = 211
triggerall   = (p2bodydist X < 10) && (command = "y") && command != "holddown"
trigger1     = (statetype = S) && (ctrl)

;---------------------------------------------------------------------------
;Stand Medium Punch
[State -1, SMP]
type = ChangeState
triggerall = (command = "y") && (command != "holddown")
trigger1 = ctrl && statetype = S
Trigger2        = (StateNo = 200) && AnimElem = 2, < 3 && MoveContact
Trigger3        = (StateNo = 205) && AnimElem = 2, < 4 && MoveContact
Trigger4        = (StateNo = 400) && MoveContact
Trigger5        = (StateNo = 240) && MoveContact
Trigger6        = (StateNo = 231) && MoveContact
Trigger7        = (StateNo = 230) && MoveContact
value = 210

;---------------------------------------------------------------------------
;Stand Light Kick (close)
[State -1, LLK]
type = ChangeState
triggerall      = (p2bodydist X < 10) && (command = "a") && command != "holddown"
trigger1        = (statetype = S) && (ctrl)
value = 231
;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall      = (command = "a") && command != "holddown"
trigger1        = (statetype = S) && (ctrl)
Trigger2        = (StateNo = 200) && AnimElem = 2, < 4 && MoveContact
Trigger3        = (StateNo = 205) && AnimElem = 3, < 4 && MoveContact
Trigger4        = (StateNo = 400) && AnimElem = 2, < 4 && MoveContact
Trigger5        = (StateNo = 430) && AnimElem = 2, < 4 && MoveContact
;---------------------------------------------------------------------------
;Horse Kick
[State -1, SBK]
type = ChangeState
triggerall      = command = "b" && command != "holddown"
triggerall      = command = "holdback"
trigger1        = (statetype = S) && (ctrl)
Trigger2        = (StateNo = 200) && AnimElem = 2, < 4 && MoveContact
Trigger3        = (StateNo = 205) && AnimElem = 3, < 4 && MoveContact
Trigger4        = (StateNo = 400) && AnimElem = 2, < 4 && MoveContact
Trigger5        = (StateNo = 430) && AnimElem = 2, < 4 && MoveContact
Trigger6        = (StateNo = 230) && MoveContact
Trigger7        = (StateNo = 231) && MoveContact

value = 250
;---------------------------------------------------------------------------
;Roundhouse kick
[State -1, swift roundhouse kick]
type = ChangeState
triggerall      = (p2bodydist X < 7) && (command = "b") && command != "holddown"
trigger1        = (statetype = S) && (ctrl)
value = 241
;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall      = (P2BodyDist Y > -8) && (command = "b") && command != "holddown"
trigger1        = (statetype = S) && (ctrl)
Trigger2        = (StateNo = 200) && AnimElem = 2, < 4 && MoveContact
Trigger3        = (StateNo = 205) && AnimElem = 3, < 4 && MoveContact
Trigger4        = (StateNo = 400) && MoveContact
Trigger5        = (StateNo = 430) && MoveContact
Trigger6        = (StateNo = 241) && MoveContact
Trigger7        = (StateNo = 231) && MoveContact
Trigger8        = (StateNo = 230) && MoveContact
;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall      = (command = "holddown") && (command = "x")
trigger1        = (statetype = C) && (ctrl)
Trigger2        = (StateNo = 400) && AnimElem = 3
Trigger3        = (StateNo = 200) && AnimElem = 2, < 4 && MoveContact
Trigger4        = (StateNo = 205) && AnimElem = 3, < 4 && MoveContact
Trigger5        = (StateNo = 231) && MoveContact
Trigger6        = (StateNo = 211) && MoveContact
Trigger7        = (StateNo = 241) && MoveContact
;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall      = (command = "holddown") && (command = "y")
trigger1        = (statetype = C) && (ctrl)
Trigger2        = (StateNo = 430) && MoveContact
Trigger3        = (StateNo = 200) && AnimElem = 2, < 4 && MoveContact
Trigger4        = (StateNo = 205) && AnimElem = 3, < 4 && MoveContact
Trigger5        = (StateNo = 231) && MoveContact
Trigger6        = (StateNo = 211) && MoveContact
Trigger7        = (StateNo = 241) && MoveContact
Trigger8        = (StateNo = 400) && AnimElem = 2, < 4 && MoveContact
;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall      = (command = "holddown") && (command = "a")
trigger1        = (statetype = C) && (ctrl)
Trigger2        = (StateNo = 400) && AnimElem = 2, < 4 && MoveContact
Trigger3        = (StateNo = 200) && AnimElem = 2, < 4 && MoveContact
Trigger4        = (StateNo = 205) && MoveContact
Trigger5        = (StateNo = 231) && MoveContact
Trigger7        = (StateNo = 241) && MoveContact
Trigger6        = (StateNo = 211) && MoveContact
;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 445
triggerall      = (command = "holddown") && (command = "b")
trigger1        = (statetype = C) && (ctrl)
Trigger2        = (StateNo = 430) && MoveContact
Trigger3        = (StateNo = 200) && AnimElem = 2, < 4 && MoveContact
Trigger4        = (StateNo = 205) && AnimElem = 3, < 4 && MoveContact
Trigger5        = (StateNo = 231) && MoveContact
Trigger6        = (StateNo = 211) && MoveContact
trigger8        = (stateno = 53)  && Movehit
;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall      = (command = "x")
trigger1        = (statetype = A) && (ctrl)

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall      = (command = "y")
trigger1        = (statetype = A) && (ctrl)
trigger2        = (stateno = 600) && AnimElem = 2, < 6 && MoveContact
trigger3        = (stateno = 630) && AnimElem = 2, < 6 && MoveContact

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall      = (command = "a")
trigger1        = (statetype = A) && (ctrl)
trigger2        = (stateno = 600) && AnimElem = 2, < 6 && MoveContact

;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall      = (command = "b")
trigger1        = (statetype = A) && (ctrl)
trigger2        = (stateno = 600) && AnimElem = 2, < 6 && MoveContact
trigger3        = (stateno = 610) && AnimElem = 2, < 7 && MoveContact
trigger4        = (stateno = 630) && AnimElem = 2, < 6 && MoveContact
