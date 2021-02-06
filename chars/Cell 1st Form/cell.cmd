;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
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

;---------------------------------------------------------------------------
;-------| Hypers |--------------------------------------------------

[Command]
name = "cell2"
command = D, F, D, F, c
time = 30

[Command]
name = "Genkidama"
command = D, F, D, F, b
time = 35

;-------| Supers |--------------------------------------------------

[Command]
name = "absorcion"
command = ~D, F, D, F, a
time = 20

[Command]
name = "kamehameha"
command = ~D, B, F, x
time = 30

[Command]
name = "kamehameha1"
command = ~D, B, F, y
time = 30

[Command]
name = "Makankosapo"
command = ~D, B, F, a
time = 30

[Command]
name = "Makankosapo1"
command = ~D, B, F, b
time = 30

[Command]
name="SuperCell"
Command = c+z
time= 8


;-------|Especiales|--------------------------------------------------

[Command]
name = "rafaga"
command = D, DB, b
time = 13

[Command]
name = "kiensan"
command = D, DF, y
time = 13

[Command]
name = "Taioken"
command = DB, B, a
time = 13

[Command]
name = "rayo"
command = D, DF, a
time = 13

[Command]
name = "rayo2"
command = D, DF, b
time = 13

[Command]
name = "rayo3"
command = ~D, F, c
time = 13

;-------| Otros |--------------------------------------------------

[Command]
name = "Combo_y"
command = D, DB, y
time = 13

[command]
name = "Combo_x"
command = D, DB, x
time = 13

[command]
name = "Colazo"
command = D, DF, x
time = 13

[command]
name = "MColazo"
command = B, F, a
time = 13

[Command]
name = "rayfly"
command = DF, F, a
time = 10

[Command]
name = "rayfly2"
command = DF, F, b
time = 10

[Command]
name = "Ataque Rapido"
command = y+x
time = 10

[Command]
name = "fly"
command = b+y
time = 10

[Command]
name = "start"
command = s
time = 1

;---------------------------------------------------------------------------
;QCF
;---------------------------------------------------------------------------
[Command]
name = "QCF_a"
command = ~D, DF, F, a

[Command]
name = "QCF_b"
command = ~D, DF, F, b

[Command]
name = "QCF_c"
command = ~D, DF, F, c

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_z"
command = ~D, DF, F, z

;---------------------------------------------------------------------------
;FQCF
;---------------------------------------------------------------------------
[Command]
name = "FQCF_a"
command = ~F, D, DF, a

[Command]
name = "FQCF_b"
command = ~F, D, DF, b

[Command]
name = "FQCF_c"
command = ~F, D, DF, c

[Command]
name = "FQCF_x"
command = ~F, D, DF, x

[Command]
name = "FQCF_y"
command = ~F, D, DF, y

[Command]
name = "FQCF_z"
command = ~F, D, DF, z

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

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

[Command]
name = "hold_b"
command = /b
time = 30

[Command]
name = "hold_y"
command = /y
time = 30

;-| Hold Dir |--------------------------------------------------------------

[Command]
name = "charge" ;nombre del comando que se comunica con el ChangeState del [State -1] decargarki
command = /a ; comando con que se realiza

[Command]
name = "charge 1"
command = /x

[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Command]
name = "holda";Required (do not remove)
command = /a
time = 1

[Command]
name = "holdb";Required (do not remove)
command = /b

time = 1
[Command]
name = "holdc";Required (do not remove)
command = /c
time = 1

[Command]
name = "holdx";Required (do not remove)
command = /x
time = 1

[Command]
name = "holdy";Required (do not remove)
command = /y
time = 1

[Command]
name = "holdz";Required (do not remove)
command = /z
time = 1

[Command]
name = "charge" ;nombre del comando que se comunica con el ChangeState del [State -1] decargarki
command = /a ; comando con que se realiza

[Command]
name = "charge 1"
command = /x

[Command]
name = "DU"
command = $D, $U
time = 12

[Command]
name = "Long Jump"
command = ~D, UF
time = 12

[Command]
name = "Long Jump"
command = ~D, UB
time = 12

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
name = "UU"     ;Required (do not remove)
command = U, U
time = 10

[Command]
name = "DD"     ;Required (do not remove)
command = D, D
time = 10

[Command]
name = "FD"     ;Required (do not remove)
command = F, D
time = 14

[Command]
name = "FU"     ;Required (do not remove)
command = F, U
time = 14

[Command]
name = "BD"     ;Required (do not remove)
command = B, D
time = 14

[Command]
name = "BU"     ;Required (do not remove)
command = B, U
time = 14

;---------------------------------------------------------------------------
;-| Inteligencia artificial |--------------------------------------------------------------
;---------------------------------------------------------------------------
;Ai

[Command]
name = "CPU_1"
command = b, a, b, a, b, a
time = 1

[Command]
name = "CPU_2"
command = y, x, y, x, y, x
time = 1

[Command]
name = "CPU_3"
command = x, a, x, a, x, a
time = 1

[Command]
name = "CPU_4"
command = z, z, z, z, z, z
time = 1

[Command]
name = "CPU_5"
command = a, a, a, y, y, y
time = 1

[Command]
name = "CPU_6"
command = a, a, b, a, a, b
time = 1

[Command]
name = "CPU_7"
command = F, F, F, F, F, F
time = 1

[Command]
name = "CPU_8"
command = B, B, B, B, B, B
time = 1

[Command]
name = "CPU_9"
command = D, U, D, U, D+U, a
time = 1

[Command]
name = "CPU_10"
command = ~F, F, x,x,x,y,x,x
time = 1

[Command]
name = "CPU_11"
command = ~D, DB, a,a,b,a,a,b
time = 1

[Command]
name = "CPU_12"
command = ~D, DB, x,x,y,x,x
time = 1

[Command]
name = "CPU_13"
command = ~D, DB, y,b,y,x
time = 1

[Command]
name = "CPU_14"
command = ~D, DF, y,x
time = 1

[Command]
name = "CPU_15"
command = ~D, DF, x, D, DB, y
time = 1


;---------------------------------------------------------------------------
; 2. State entry

; --------------
[Statedef -1]
;===========================================================================

;---------------------------------------------------------------------------
;Kame Hame Ha
[State -1, KameHameHa]
type = ChangeState
value = 3500
triggerall = command = "kamehameha"
triggerall = power >= 1000
trigger1 = statetype = S && ctrl = 1
trigger2 = stateno = 1500

[State -1, KameHameHa]
type = ChangeState
value = 3500
triggerall = command = "kamehameha1"
triggerall = power >= 1000
trigger1 = statetype = S && ctrl = 1
trigger2 = stateno = 1500



;---------------------------------------------------------------------------
;Makankosapo
[State -1]
type = ChangeState
value = 2700
triggerall = command = "Makankosapo"
triggerall = numproj = 0
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500

;Makankosapo
[State -1]
type = ChangeState
value = 2700
triggerall = command = "Makankosapo1"
triggerall = numproj = 0
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500

;---------------------------------------------------------------------------
;Absorbcion
[State -1]
type = ChangeState
value = 1999
triggerall = command = "absorcion"
triggerall = numproj = 0
triggerall = power >= 1000
trigger1 = statetype != C
trigger1 = ctrl = 1
trigger2 = stateno = 1500

;-----------------------------------------------------------------------------
;Super Imperfect Cell
[State -1]
type = ChangeState
value = 2999
triggerall = (Power >= 2500)
triggerall = (command = "SuperCell")
triggerall = (var(4) = 0)
triggerall = (var(5) = 0)
trigger1 = (statetype=S)&&(ctrl)

;---------------------------------------------------------------------------
;Cell Forma 2
[State -1]
type = ChangeState
value = 8925
triggerall = var(6) = 0
triggerall = power >= 3000 ;Level 3 Super
triggerall = life <= 3500
triggerall = command = "cell2"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Genkidama
[State -1]
type = ChangeState
value = 1900
triggerall = command = "Genkidama"
triggerall = numproj = 0
triggerall = power >= 2000 ;Level 3 Super
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500

;---------------------------------------------------------------------------
;Ataque Rapido
[State -1]
type = ChangeState
value = 1610
triggerall = command = "Ataque Rapido"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 1500

;---------------------------------------------------------------------------
;Colazo
[State -1]
type = ChangeState
value = 2225
triggerall = command = "Colazo"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500

;---------------------------------------------------------------------------
;MColazo
[State -1]
type = ChangeState
value = 1404
triggerall = command = "MColazo"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500

;---------------------------------------------------------------------------
;Zanzouken
[State -1,Zanzouken]
type =ChangeState
value= 1100
triggerall = Command = "z"
trigger1 =(statetype=S) && (Ctrl)
trigger2 = stateno = 1500
trigger3 = stateno = 50

;Zanzouken
[State -1,Zanzouken]
type =ChangeState
value= 1100
triggerall = Command = "z"
trigger1 =(statetype=C) && (Ctrl)
trigger2 = stateno = 1500
trigger3 = stateno = 50

;Zanzouken
[State -1,Zanzouken]
type =ChangeState
value= 1100
triggerall = Command = "z"
trigger1 =(statetype=A) && (Ctrl)
trigger2 = stateno = 1500
trigger3 = stateno = 50
;---------------------------------------------------------------------------
;Fly
[State -1]
type = ChangeState
value = 1500
triggerall = command = "fly"
trigger1 = statetype = A
trigger1 = ctrl = 1

;Fly
[State -1]
type = ChangeState
value = 1510
triggerall = command = "fly"
trigger1 = statetype != A
trigger1 = ctrl = 1

;Flight Guard
[State -1, FlyGuard]
type = ChangeState
value = 132 ;GUARDIA AERIA
triggerall = p2movetype = A && ctrl = 1 && stateno = 1500
trigger1 = command = "holdback"

;---------------------------------------------------------------------------
;Taunt Dialogo
[State -1]
type 			= ChangeState
value 			= 196
triggerall		= (BackEdgeBodyDist > -5) && (Var(2) <= 0)
trigger1 		= (Command = "start") && (StateType = S) && (Ctrl)
ignorehitpause		= 1

;---------------------------------------------------------------------------
;Combo Y
[State -1]
type = changestate
value = 1182
triggerall = command = "Combo_y"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500

;---------------------------------------------------------------------------
;Combo_X
[State -1]
type = ChangeState
value = 3105
triggerall = (command ="Combo_x")&&(power > 200)
trigger1 = (ctrl)
trigger2 = stateno = 1500
trigger3 = ((stateno =[2102,2103])&&(movecontact)&&AnimElem =2,>5)
;---------------------------------------------------------------------------
;Super Jump
[State -1]
type = ChangeState
value = 707
triggerall = command = "DU"
trigger1 = statetype = C
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Rayo de energia
[State -1]
type = ChangeState
value = 750
triggerall = power > 400
triggerall = command = "rayo3"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500
;---------------------------------------------------
;Rayo de energia
[State -1]
type = ChangeState
value = 710
triggerall = power > 400
triggerall = command = "rayo2"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500
;---------------------------------------------------
;Rayo de energia
[State -1]
type = ChangeState
value = 700
triggerall = power > 400
triggerall = command = "rayo"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500
;---------------------------------------------------

;Rayo ojos
[State -1,]
type = ChangeState
value = 1700
triggerall = command = "rayfly"
triggerall = Time > 5
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 708
trigger2 = movecontact = 1
trigger3 = stateno = 1500

;Rayo ojos 2
[State -1,]
type = ChangeState
value = 1700
triggerall = command = "rayfly2"
triggerall = Time > 5
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 708
trigger2 = movecontact = 1
trigger3 = stateno = 1500

;---------------------------------------------------------------------------
;Kiensan
[State -1]
type = ChangeState
value = 1302
triggerall = var(59) = 0
triggerall = power >= 200
triggerall = (command = "kiensan")
trigger1 = (ctrl)
trigger2 = (stateno = [200,599]) && (movecontact)
trigger3 = (stateno = 1301 && AnimElem = 4,>=1) && (power >= 300)
trigger4 = (stateno = [1100,1105]) && (MoveContact)
trigger5 = stateno = 1500

;---------------------------------------------------------------------------
;Taioken
[State -1]
type = ChangeState
value = 3000
triggerall = var(6) = 0
triggerall = power >= 300
triggerall = command = "Taioken"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500
trigger3 = stateno = 8748
;---------------------------------------------------------------------------
;Rafaga de viento
[State -1]
type = ChangeState
value = 2600
triggerall = command = "rafaga"
triggerall = command != "holddown"
triggerall = numprojid(2650) = 0
triggerall = power >= 300
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500
;---------------------------------------------------------------------------
;Cargar ki
[State -1]
type = ChangeState
value = 5040 ; valor del statedef de el charge en el cns
triggerall =  time > 2 && Power < 3000
trigger1 = command = "charge" && command = "charge 1" && statetype = S && ctrl = 1 && command != "holdfwd"
trigger2 = command = "charge" && command = "charge 1" && stateno = 1500 && command != "holdfwd"
;---------------------------------------------------------------------------

[State -1, Fireball]
type = ChangeState
value = 1400
triggerall = command = "c"
triggerall = power >= 100
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (stateno = 1400)  && (movecontact)
trigger3 = (stateno = 1401)  && (movecontact)
trigger4 = (stateno = 1502)  && (movecontact)
trigger5 = stateno = 1500
trigger6 = stateno = 50
trigger7 = stateno = 11
ignorehitpause = 1

[State -1, Fireball]
type = ChangeState
value = 10000
triggerall = command = "c"
triggerall = power >= 100
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = (stateno = 10000)  && (movecontact)
trigger3 = (stateno = 1001)  && (movecontact)
trigger4 = (stateno = 1002)  && (movecontact)
trigger5 = stateno = 1500
ignorehitpause = 1

[State -1, Fireball]
type = ChangeState
value = 10000
triggerall = command = "c"
triggerall = power >= 100
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = (stateno = 10000)  && (movecontact)
trigger3 = (stateno = 1001)  && (movecontact)
trigger4 = (stateno = 1002)  && (movecontact)
trigger5 = stateno = 1500
ignorehitpause = 1

;---------------------------------------------------------------------------
;Run Adelante
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Agarre
[State -1, ]
type = ChangeState
value = 805
triggerall = (command = "QCF_z")
trigger1 = (Stateno = 801) && (AnimElemTime(3) >= 0 && AnimElemTime(4) < 0)

;---------------------------------------------------------------------------
[State -1, ]
type = ChangeState
value = 800
triggerall = (command = "holdfwd" || command = "holdback") && (command = "y") && (P2BodyDist X <= 10) && (P2Statetype = S) && (P2Movetype != H)
trigger1 = (ctrl) && (statetype = S)

;---------------------------------------------------------------------------
[State -1, ]
type = ChangeState
value = 670
triggerall = (command = "b")
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 650 || stateno = 600 || stateno = 610 || stateno = 651) && (movecontact)

;---------------------------------------------------------------------------
[State -1, ]
type = ChangeState
value = 651
triggerall = (command = "a") && (Vel X != 0)
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600) && (movecontact)

;---------------------------------------------------------------------------
[State -1, ]
type = ChangeState
value = 650
triggerall = (command = "a") && (Vel X = 0)
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600) && (movecontact)

;---------------------------------------------------------------------------
[State -1, ]
type = ChangeState
value = 621
triggerall = (command = "z") && (Vel X != 0)
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 610 || stateno = 660  || stateno = 661) && (movecontact)

;---------------------------------------------------------------------------
[State -1, ]
type = ChangeState
value = 610
triggerall = (command = "y")
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = 600 || stateno = 650  || stateno = 651) && (movecontact)

;---------------------------------------------------------------------------
[State -1, ]
type = ChangeState
value = 600
triggerall = (command = "x")
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno =600) && (AnimElem = 2,>4)

;---------------------------------------------------------------------------

[State -1, ]
type = ChangeState
value = 470
triggerall = (command = "b") && (command = "holddown")
trigger1 = (ctrl) && (statetype = C)
trigger2 = (stateno = 460 || stateno = 410) && (movecontact)
trigger3 = (stateno = 400) && (MoveContact)
trigger4 = (stateno = 460) && (MoveContact)

;---------------------------------------------------------------------------
[State -1, ]
type = ChangeState
value = 460
triggerall = (command = "a") && (command = "holddown")
trigger1 = (ctrl) && (statetype = C)
trigger2 = (stateno = 460) && (AnimElem = 2,>5 || MoveContact)
trigger3 = (stateno = 400) && (MoveContact)
trigger4 = (stateno = 470) && (MoveContact)

;---------------------------------------------------------------------------
[State -1, ]
type = ChangeState
value = 420
triggerall = (command = "y") && (command = "holddown")
trigger1 = (ctrl) && (statetype = C)
trigger2 = (stateno = 410 || stateno = 460) && (movecontact)
trigger3 = (stateno = 400) && (MoveContact)
trigger4 = (stateno = 470) && (MoveContact)
trigger5 = (stateno = 460) && (MoveContact)

;---------------------------------------------------------------------------
[State -1, ]
type = ChangeState
value = 400
triggerall = (command = "x") && (command = "holddown")
trigger1 = (ctrl) && (statetype = C)
trigger2 = (stateno = 400) && (AnimElem = 2,>5 || MoveContact)
trigger3 = (stateno = 420) && (MoveContact)
trigger4 = (stateno = 460) && (MoveContact)
trigger5 = (stateno = 470) && (MoveContact)

;---------------------------------------------------------------------------
[State -1, ]
type = ChangeState
value = 270
triggerall = (command = "b") && (command = "a") && (command != "holddown")
trigger1 = (ctrl) && (statetype = S)
trigger2 = (stateno = 260 || stateno = 210) && (movecontact)
trigger3 = (stateno = 210) && (movecontact)
trigger4 = (stateno = 250) && (movecontact)
trigger5 = (stateno = 260) && (movecontact)
trigger6 = (stateno = 200) && (movecontact)
trigger7 = (stateno = 202) && (movecontact)
trigger8 = (stateno = 203) && (movecontact)
trigger9 = stateno = 1500

;---------------------------------------------------------------------------
[State -1, ]
type = ChangeState
value = 260
triggerall = (command = "b")
trigger1 = (ctrl) && (statetype = S)
trigger2 = (stateno = 210) && (movecontact)
trigger3 = (stateno = 250) && (movecontact)
trigger4 = (stateno = 200) && (movecontact)
trigger5 = (stateno = 270) && (movecontact)
trigger6 = (stateno = 203) && (movecontact)
trigger7 = (stateno = 202) && (movecontact)
trigger8 = (stateno = 271) && (movecontact)
trigger9 = stateno = 1500

[State -1]
type = ChangeState
value = 204
triggerall = (command = "b") && (command != "holddown") && (time >= 8 && time <= 16)
triggerall = movecontact
triggerall = stateno = 260
trigger1 = (statetype = S)
trigger2 = (stateno = 210) && (movecontact)
trigger3 = (stateno = 250) && (movecontact)
trigger4 = (stateno = 200) && (movecontact)
trigger5 = (stateno = 270) && (movecontact)
trigger6 = (stateno = 202) && (movecontact)
trigger7 = stateno = 1500


;---------------------------------------------------------------------------

[State -1, ]
type = ChangeState
value = 271
triggerall = (command = "a") && (command != "holddown") && (P2BodyDist X <= 3) && (P2Statetype = S)
trigger1 = (ctrl) && (statetype = S)
trigger2 = (stateno = 210) && (movecontact)
trigger3 = (stateno = 250) && (movecontact)
trigger3 = (stateno = 200) && (movecontact)
trigger4 = (stateno = 270) && (movecontact)
trigger5 = (stateno = 202) && (movecontact)
trigger6 = (stateno = 203) && (movecontact)
trigger7 = (stateno = 260) && (movecontact)
trigger8 = stateno = 1500

[State -1]
type = ChangeState
value = 250
triggerall = (command = "a")
trigger1 = (ctrl) && (statetype = S)
trigger2 = (stateno = 203)  && (movecontact)
trigger2 = (stateno = 220) && (movecontact)
trigger3 = (stateno = 210) && (movecontact)
trigger4 = (stateno = 200) && (movecontact)
trigger5 = (stateno = 260) && (movecontact)
;trigger6 = (stateno = 270) && (movecontact)
trigger6 = (stateno = 202) && (movecontact)
trigger7 = (stateno = 271) && (movecontact)
trigger8 = stateno = 1500

[State -1]
type = ChangeState
value = 203
triggerall = (command = "a")  && (command != "holddown")
triggerall = stateno = 250
triggerall = movecontact
trigger1 = (statetype = S)
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 210) && (movecontact)
trigger4 = (stateno = 250) && (movecontact)
trigger5 = (stateno = 260) && (movecontact)
trigger6 = (stateno = 270) && (movecontact)
trigger7 = (stateno = 202) && (movecontact)
trigger8 = stateno = 1500

[State -1]
type = ChangeState
value = 220
triggerall = (command = "a") && (command != "holddown")
triggerall = stateno = 203
triggerall = movecontact
trigger1 = (statetype = S)
trigger2 = stateno = 1500


;---------------------------------------------------------------------------
[State -1, ]
type = ChangeState
value = 210
triggerall = (command = "y")
trigger1 = (ctrl) && (statetype = S)
trigger2 = (stateno = 250) && (movecontact)
trigger2 = (stateno = 270) && (movecontact)
trigger3 = (stateno = 200) && (movecontact)
trigger4 = (stateno = 202) && (movecontact)
trigger5 = (stateno = 203) && (movecontact)
trigger6 = (stateno = 271) && (movecontact)
trigger7 = stateno = 1500

[State -1]
type = ChangeState
value = 250
triggerall = (command = "y")  && (command != "holddown")
triggerall = stateno = 210
triggerall = movecontact
trigger1 = (statetype = S)
trigger2 = (stateno = 200) && (movecontact)
trigger3 = stateno = 1500


[State -1]
type = ChangeState
value = 270
triggerall = (command = "y") && (command != "holddown")
triggerall = stateno = 250
triggerall = movecontact
trigger1 = statetype = S
trigger2 = stateno = 1500


;---------------------------------------------------------------------------
[State -1, ]
type = ChangeState
value = 200
triggerall = (command = "x") && (command != "holddown")
trigger1 = (ctrl) && (statetype = S)
trigger2 = (stateno = 210) && (movecontact)
trigger3 = (stateno = 202) && (movecontact)
trigger4 = (stateno = 250) && (movecontact)
trigger5 = (stateno = 260) && (movecontact)
trigger6 = (stateno = 270) && (movecontact)
trigger7 = (stateno = 203) && (movecontact)
trigger8 = (stateno = 271) && (movecontact)
trigger9 = (stateno = 225) && (movecontact)
trigger10 = stateno = 1500

[State -1]
type = ChangeState
value = 202
triggerall = (command = "x")  && (command != "holddown")
trigger1 = (ctrl) && (statetype = S);triggerall = stateno = 200
;triggerall = movecontact
;trigger1 = statetype = S
trigger2 = (stateno = 210) && (movecontact)
trigger3 = (stateno = 200) && (movecontact)
trigger4 = (stateno = 250) && (movecontact)
trigger5 = (stateno = 260) && (movecontact)
trigger6 = (stateno = 270) && (movecontact)
trigger7 = (stateno = 203) && (movecontact)
trigger8 = (stateno = 271) && (movecontact)
trigger9 = (stateno = 225) && (movecontact)
trigger10 = stateno = 1500


;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = null;ChangeState
value = 100
trigger1 = (command = "FF") && (statetype = S) && (ctrl)

;---------------------------------------------------------------------------
;Hop Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = (command = "BB") && (statetype = S) && (ctrl)
;---------------------------------------------------------------------------
;AirDash Fwd
[State -1, Fwd]
type = ChangeState
value = 60
trigger1 = (PrevStateNo != 45) && (command = "FF") && (statetype = A) && (ctrl) && (stateno = 50)
;---------------------------------------------------------------------------
;AirDash Back
[State -1, Back]
type = ChangeState
value = 65
trigger1 = (PrevStateNo != 45) && (command = "BB") && (statetype = A) && (ctrl) && (stateno = 50)
;---------------------------------------------------------------------------

;I.A.

[State -1]
type = VarSet
trigger1 = command = "CPU_1"
trigger2 = command = "CPU_2"
trigger3 = command = "CPU_3"
trigger4 = command = "CPU_4"
trigger5 = command = "CPU_5"
trigger6 = command = "CPU_6"
trigger7 = command = "CPU_7"
trigger8 = command = "CPU_8"
trigger9 = command = "CPU_9"
trigger10 = command = "CPU_10"
trigger11 = command = "CPU_11"
trigger12 = command = "CPU_12"
trigger13 = command = "CPU_13"
trigger14 = command = "CPU_14"
trigger15 = command = "CPU_15"
v = 59
value = 1

;Standing Basics
[State -1, A]
type = ChangeState
triggerall = (Var(59)= 1) && alive = 1 && statetype = S 
trigger1 = p2life > 0 && (p2bodydist x < 40) && ctrl
trigger2 = (prevstateno = 200) && movecontact && random < 300
value = 200

[State -1, B]
type = ChangeState
triggerall = (Var(59)= 1) && alive = 1 && statetype = S 
trigger1 = p2life > 0 && (p2bodydist x < 40) && ctrl
trigger2 = (prevstateno = 200) && movecontact && random < 300
value = 210

[State -1, C]
type = ChangeState
triggerall = (Var(59)= 1)  && alive = 1 && statetype = S 
trigger1 = p2life > 0 && (p2bodydist x < 40) && ctrl
trigger2 = (prevstateno = 210 || prevstateno = 200) && movecontact && random < 150
value = 225

[State -1, D]
type = ChangeState
triggerall = (Var(59)= 1) && alive = 1 && statetype = S  > 0 && stateno !=220
trigger1 = p2life > 0 && (p2bodydist x < 40) && ctrl
trigger2 = (prevstateno = 210 || prevstateno = 220) && movecontact && random < 150
value = 220

[State -1, E]
type = ChangeState
triggerall = (Var(59)= 1) && alive = 1 && statetype = S
trigger1 = p2life > 0 && (p2bodydist x < 40) && ctrl
trigger2 = (prevstateno = 202) && movecontact && random < 150
value = 250

[State -1, F]
type = ChangeState
triggerall = (Var(59)= 1) && statetype = S && p2life > 0
trigger1 = (p2bodydist x < 40 && p2bodydist x >= 7)  && ctrl
trigger2 = (prevstateno = 210 || prevstateno = 250) && movecontact && random < 150
value = 260

[State -1, G]
type = ChangeState
triggerall = (Var(59)= 1) && alive = 1 && statetype = A && movecontact
trigger1 = p2life > 0 && (p2bodydist x < 40) && ctrl
trigger1 =  movecontact && random < 150
value = 280

[State -1, H]
type = ChangeState
triggerall = (Var(59)= 1) && statetype = S && p2life > 0
trigger1 = (p2bodydist x < 40 && p2bodydist x >= 7)  && ctrl
trigger2 = (prevstateno = 250 || prevstateno = 270 || prevstateno = 202) && movecontact && random < 150
value = 210

[State -1, I]
type = ChangeState
triggerall = (Var(59)= 1) && statetype = S && p2life > 0
trigger1 = (p2bodydist x >= 0 && p2bodydist x <= 20)  && ctrl
trigger2 = (prevstateno = 250 || prevstateno = 270 || prevstateno = 202) && movecontact && random < 100
value = 470

[State -1,AI Parar de volar]
type = ChangeState
triggerall = Var(59)= 1 && stateno = 1500  && p2statetype = S
trigger1 = p2statetype = S && (p2bodydist Y >= 120)
value = 50

[State -1, AI Hacia Adelante]
type = ChangeState
triggerall = (Var(59)= 1) && Ctrl && random >= 900
trigger1 = p2statetype = S && (p2bodydist X >= 120)
value = 100

[State -1; AI CARGA]
type = ChangeState
triggerall = (var(59) = 1) && StateType = S && (Power >= 500 && power < 3000) && random < 850 && ctrl = 1
trigger1 = (p2bodydist x >= 100 && p2bodydist x <= 100) && (p2dist y >= 50 && p2dist y > -60) && p2statetype = S
value = 5040

[State -1, Rafaga]
type = ChangeState
triggerall = (var(59) = 1) && alive = 1 && (statetype = S || statetype = A) && p2life > 0 && random < 150 && power >= 150
trigger1 = (p2dist x >= 30 && p2dist x <= 100) && ctrl = 1 && (p2dist y >= -30 && p2dist y <= 30) && p2statetype = S
value = 2600

[State -1, Combox]
type = ChangeState
triggerall = (var(59) = 1) && alive = 1 && p2life > 0
trigger1 = (p2bodydist x >= 60 && p2bodydist x <= 150) && ctrl = 1 && movecontact && random < 150 && (p2statetype = S || p2statetype = A)
value = 3105

[State -1, Comboy]
type = ChangeState
triggerall = (var(59) = 1) && alive = 1 && p2life > 0
trigger1 = (p2bodydist x >= 60 && p2bodydist x <= 150) && ctrl = 1 && movecontact && random < 150 && (p2statetype = S || p2statetype = A)
value = 1182

[State -1, Colazos]
type = ChangeState
triggerall = (Var(59)= 1) && alive = 1 && p2life > 0
trigger1 =  random < 550 && (p2bodydist y = 0 && p2bodydist x <= 50) && ctrl = 1
value = 1404

[State -1, Rapido]
type = ChangeState
triggerall = (Var(59)= 1) && alive = 1 && p2life > 0
trigger1 =  random > 550 && (p2bodydist y = 0 && p2bodydist x <= 20) && ctrl = 1
value = 1610

[State -1, Colazo]
type = ChangeState
triggerall = (Var(59)= 1) && alive = 1 && p2life > 0 && (p2bodydist x >= 15 && p2bodydist x <= 55)
trigger1 =  random < 550 && (p2bodydist  y >= -10 && p2bodydist  y <= 10) && ctrl = 1
value = 2225

[State -1, Kienza]
type = ChangeState
triggerall = (var(59) != 0) && alive = 1 && (statetype = S || statetype = A) && p2life > 0 && random < 170 && power >= 150
trigger1 = (p2bodydist y >= -10 && p2bodydist y <= 10) && ctrl = 1 && p2bodydist x >= 100 && (p2statetype = S || p2statetype = A)
value = 1302

[State -1, Rayonormal]
type = ChangeState
triggerall = (var(59) != 0) && alive = 1 && (statetype = S || statetype = A) && p2life > 0 && random < 170 && power >= 150
trigger1 = (p2bodydist y >= -10 && p2bodydist y <= 10) && ctrl = 1 && p2bodydist x >= 100 && (p2statetype = S || p2statetype = A)
value = 700

[State -1, Rayo]
type = ChangeState
triggerall = (var(59) != 0) && alive = 1 && (statetype = S || statetype = A) && p2life > 0 && random < 170 && power >= 150
trigger1 =  (p2bodydist y >= -10 && p2bodydist y <= 10) && ctrl = 1 &&(p2bodydist  x >= 100 && p2bodydist  x <= 180)
value = 710

[State -1, Rayoalto]
type = ChangeState
triggerall = (var(59) != 0) && alive = 1 && p2life > 0 && random < 170 && power >= 150
trigger1 =  (p2bodydist  y <= -20 && p2bodydist  y >= -160 && p2bodydist x >= 50) && ctrl = 1
value = 750

[State -1, Rayoojos]
type = ChangeState
triggerall = (Var(59)= 1) && alive = 1 && statetype = A && p2life > 0
trigger1 =   random < 650 && (p2bodydist  y >= 20 && p2bodydist  y <= 160 && p2bodydist x <= 70) &&  ctrl = 1
value = 1700

[State -1, Absorcion]
type = ChangeState
triggerall = (var(59) != 0) && (stateno != 1999) && (stateno != 2000) && (stateno != 21111) && p2life > 300 && power >= 1500
trigger1 = ctrl = 1 && random < 350 && movecontact && (p2dist  x < 5 && p2dist x > 40)
value = 1999

[State -1, Super Cell]
type = ChangeState
triggerall = (var(59) != 0) && (stateno != 1999) && (stateno != 2000) && (stateno != 21111) && statetype = S && p2life > 300 && power >= 2500
trigger1 = ctrl = 1 && random < 250 && movecontact
value = 2999

[State -1, Makenkosapo]
type = ChangeState
triggerall = (var(59) != 0) && (stateno != 1999) && alive && statetype = S && p2life > 200 && power >= 1000
trigger1 = (p2dist  x > 90 && p2dist x < 150) && ctrl = 1
trigger2 = random < 350 && movecontact && (p2statetype = S || p2statetype = A)
value = 2700

[State -1, Genki]
type = ChangeState
triggerall = (var(59) != 0) && (stateno != 1999) && alive && statetype = S && p2life > 500 && power >= 2000
trigger1 = (p2bodydist  x >= 120) && ctrl = 1
trigger2 = movecontact && random < 350
value = 1900

[State -1, Kame hame ha]
type = ChangeState
triggerall = (var(59) != 0) && (stateno != 1999) && alive && statetype = S && p2life > 100 && power >= 1000
trigger1 = (p2dist  x >= 120) && ctrl = 1 && (p2dist  y <= -20 && p2dist  y >= 20)
trigger2 = random < 350 && movecontact && p2statetype = S
value = 3500

[State -1, Cell2]
type = ChangeState
triggerall = (var(59) != 0) && (stateno != 1999) && alive && statetype = S && p2life > 600 && power >= 3000
trigger1 = (p2dist  x >= 60) && ctrl = 1 && (p2dist  y <= -20 && p2dist y >= 20)
trigger2 =  random < 250 && movecontact
value = 3231

[State -1]
type = ChangeState
triggerall = Var(39)= 1 && statetype = S && ctrl
trigger1 = (stateno = 100 || stateno = 52) && p2movetype = A && random < 100
value = 130

[State -1]
type = ChangeState
triggerall = Var(39)= 1 && statetype = C && ctrl
trigger1 = (stateno = 140 || stateno = 150 || stateno = 151) && p2movetype = A && random < 100
value = 131

[State -1]
type = ChangeState
triggerall = Var(39)= 1 && statetype = A && ctrl && random < 100
trigger1 = p2movetype = A
value = 132

;---------------------------------------------------------------------------
