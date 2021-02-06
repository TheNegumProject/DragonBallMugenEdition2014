;Ginew
;-----------Supers------------------
[Command]
name = "Fireball-Impact"
command = ~D, DB, B, D, DB, B, x+y
time = 30

[Command]
name = "Psyko Quake"
command = ~D, DB, B, D, DB, B, a+b
time = 30

[Command]
name = "Nova Explode"
command = ~D, DF, F, D, DF, F, c
time = 30

[Command]
name = "Mouth Blast"
command = ~D, DF, F, B, y
time = 30
[Command]
name = "Mouth Blast"
command = ~D, DF, F, B, x
time = 30

;-----------Specials Ki----------------
[Command]
name = "Telekinesis Corta"
command = ~F, DF, D, DB, B, a
time = 30

[Command]
name = "Telekinesis Larga"
command = ~F, DF, D, DB, B, b
time = 30

[Command]
name = "Mouth Ball"
command = ~D, DB, B, c
time = 30

[Command]
name = "Inversión de lugar"
command = ~F, B, F, c
time = 30

[Command]
name = "fireball"
command = c
time = 30

;-----------Specials----------------
[Command]
name = "Rush Ginew devil"
command = ~F, D, DF, x
time = 30

[Command]
name = "Rush Ginew Fuerte"
command = ~F, D, DF, y
time = 30

[Command]
name = "Head Press Fuerte"
command = ~30$D,$U, b
time = 20

[Command]
name = "Head Press Devil"
command = ~30$D,$U, a
time = 20

[Command]
name = "Dig Attack"
command = ~F, DF, D, DB, B, x
time = 30

[Command]
name = "Dig Attack 2"
command = ~F, DF, D, DB, B, y
time = 30

[Command]
name = "Mamushka Kicks 1"
command = ~30$B, F, a
time = 10

[Command]
name = "Mamushka Kicks 2"
command = ~30$B, F, b
time = 10
;------------Comands----------------

[Command]
name = "charge"
command = /x
time = 1

[Command]
name = "charge 1"
command = /y
time = 1

;-| 2/3 Button Combination |----------------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "Super Jump"
command = ~D, U
time = 10

[Command]
name = "fly"
command = a+b
time = 1
;------------Secuencias Comunes-------------------
[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

[Command]
name = "UU"
command = U, U
time = 10

[Command]
name = "DD"
command = D, D
time = 10

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_c"
command = /F,c
time = 1

[Command]
name = "fwd_x"
command = /F,x
time = 1

[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "fwd_z"
command = /F,z
time = 1

[Command]
name = "back_a"
command = /B,a
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "back_c"
command = /B,c
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1


;---------Botones--------------------
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


;-----------Holds-----------------------
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

;--------------------------------------------------------------------------------

[Statedef -1]

;---------------------------------------------------------------------------
;Run Fwd en el aire
[State -1: 		Run Fwd]
type 			= ChangeState
value 		        = 107
triggerall 		= (Command = "FF")
trigger1		= (StateType = A) && (Ctrl)

;Run Back en el aire
[State -1: 		Run Back]
type 			= ChangeState
value 		        = 108
triggerall 		= (Command = "BB")
trigger1		= (StateType = A) && (Ctrl)

;===================================================================================
;---------------- Superrs ----------------------------------------------------------
;===================================================================================
;Fireball-Impact
;Psyko Quake
[State -1]
type = ChangeState
value = 4600
triggerall = (Power >= 3000)
triggerall = command = "Fireball-Impact"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (movecontact = 1) && (stateno = 400)
trigger3 = (movecontact = 1) && (stateno = 401)
trigger4 = (movecontact = 1) && (stateno = 410)
trigger5 = (movecontact = 1) && (stateno = 411)
trigger6 = (movecontact = 1) && (stateno = 200)
trigger7 = (movecontact = 1) && (stateno = 201)
trigger8 = (movecontact = 1) && (stateno = 210)
trigger9 = (movecontact = 1) && (stateno = 211)

;Psyko Quake
[State -1]
type = ChangeState
value = 4500
triggerall = (Power >= 3000)
triggerall = command = "Psyko Quake"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (movecontact = 1) && (stateno = 400)
trigger3 = (movecontact = 1) && (stateno = 401)
trigger4 = (movecontact = 1) && (stateno = 410)
trigger5 = (movecontact = 1) && (stateno = 411)
trigger6 = (movecontact = 1) && (stateno = 200)
trigger7 = (movecontact = 1) && (stateno = 201)
trigger8 = (movecontact = 1) && (stateno = 210)
trigger9 = (movecontact = 1) && (stateno = 211)

;Mouth Blast
[State -1]
type = ChangeState
value = 4300
triggerall = (Power >= 1000)
triggerall = command = "Mouth Blast"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = (movecontact = 1) && (stateno = 600)
trigger3 = (movecontact = 1) && (stateno = 601)
trigger4 = (movecontact = 1) && (stateno = 610)
trigger5 = (movecontact = 1) && (stateno = 611)
trigger6 = (movecontact = 1) && (stateno = 500)
trigger7 = (movecontact = 1) && (stateno = 501)
trigger8 = (movecontact = 1) && (stateno = 510)
trigger9 = (movecontact = 1) && (stateno = 511)
trigger10 = (stateno = 991)
trigger11 = (stateno = 2102)

;Nova Explode - En el aire
[State -1]
type = ChangeState
value = 4200
triggerall = (Power >= 1000)
triggerall = command = "Nova Explode"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = (movecontact = 1) && (stateno = 600)
trigger3 = (movecontact = 1) && (stateno = 601)
trigger4 = (movecontact = 1) && (stateno = 630)
trigger5 = (movecontact = 1) && (stateno = 610)
trigger6 = (movecontact = 1) && (stateno = 640)
trigger7 = (stateno = 991)
trigger8 = (stateno = 2102)


;Nova Explode
[State -1]
type = ChangeState
value = 4000
triggerall = (Power >= 1000)
triggerall = command = "Nova Explode"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (movecontact = 1) && (stateno = 400)
trigger3 = (movecontact = 1) && (stateno = 401)
trigger4 = (movecontact = 1) && (stateno = 410)
trigger5 = (movecontact = 1) && (stateno = 411)
trigger6 = (movecontact = 1) && (stateno = 200)
trigger7 = (movecontact = 1) && (stateno = 201)
trigger8 = (movecontact = 1) && (stateno = 210)
trigger9 = (movecontact = 1) && (stateno = 211)



;===================================================================================
;---------------- Specials Ki-------------------------------------------------------
;===================================================================================
;Telekinesis Corta
[State -1]
type = ChangeState
value = 3000
triggerall = command = "Telekinesis Corta"
triggerall = (Power >= 100)
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (movecontact = 1) && (stateno = 400)
trigger3 = (movecontact = 1) && (stateno = 401)
trigger4 = (movecontact = 1) && (stateno = 410)
trigger5 = (movecontact = 1) && (stateno = 411)
trigger6 = (movecontact = 1) && (stateno = 200)
trigger7 = (movecontact = 1) && (stateno = 201)
trigger8 = (movecontact = 1) && (stateno = 210)
trigger9 = (movecontact = 1) && (stateno = 211)


;Telekinesis Larga
[State -1]
type = ChangeState
value = 3300
triggerall = command = "Telekinesis Larga"
triggerall = (Power >= 100)
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (movecontact = 1) && (stateno = 400)
trigger3 = (movecontact = 1) && (stateno = 401)
trigger4 = (movecontact = 1) && (stateno = 410)
trigger5 = (movecontact = 1) && (stateno = 411)
trigger6 = (movecontact = 1) && (stateno = 200)
trigger7 = (movecontact = 1) && (stateno = 201)
trigger8 = (movecontact = 1) && (stateno = 210)
trigger9 = (movecontact = 1) && (stateno = 211)

;Inversión de lugar
[State -1]
type = ChangeState
value = 3400
triggerall = command = "Inversión de lugar"
triggerall = (Power >= 300)
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (movecontact = 1) && (stateno = 400)
trigger3 = (movecontact = 1) && (stateno = 401)
trigger4 = (movecontact = 1) && (stateno = 410)
trigger5 = (movecontact = 1) && (stateno = 411)
trigger6 = (movecontact = 1) && (stateno = 200)
trigger7 = (movecontact = 1) && (stateno = 201)
trigger8 = (movecontact = 1) && (stateno = 210)
trigger9 = (movecontact = 1) && (stateno = 211)

;Mouth Ball
[State -1]
type = ChangeState
value = 3500
triggerall = command = "Mouth Ball"
triggerall = (Power >= 200)
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (movecontact = 1) && (stateno = 400)
trigger3 = (movecontact = 1) && (stateno = 401)
trigger4 = (movecontact = 1) && (stateno = 410)
trigger5 = (movecontact = 1) && (stateno = 411)
trigger6 = (movecontact = 1) && (stateno = 200)
trigger7 = (movecontact = 1) && (stateno = 201)
trigger8 = (movecontact = 1) && (stateno = 210)
trigger9 = (movecontact = 1) && (stateno = 211)

;===================================================================================
;---------------- Specials ---------------------------------------------------------
;===================================================================================

;Ginew elbow
[State -1]
type = ChangeState
value = 2000
triggerall = command = "Rush Ginew devil"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (movecontact = 1) && (stateno = 200)
trigger3 = (movecontact = 1) && (stateno = 201)
trigger4 = (movecontact = 1) && (stateno = 230)
trigger5 = (movecontact = 1) && (stateno = 210)
trigger6 = (movecontact = 1) && (stateno = 240)
trigger7 = (movecontact = 1) && (stateno = 400)
trigger8 = (movecontact = 1) && (stateno = 410)

;Ginew elbow
[State -1]
type = ChangeState
value = 2050
triggerall = command = "Rush Ginew Fuerte"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (movecontact = 1) && (stateno = 200)
trigger3 = (movecontact = 1) && (stateno = 201)
trigger4 = (movecontact = 1) && (stateno = 230)
trigger5 = (movecontact = 1) && (stateno = 210)
trigger6 = (movecontact = 1) && (stateno = 240)
trigger7 = (movecontact = 1) && (stateno = 400)
trigger8 = (movecontact = 1) && (stateno = 410)


;Head Press Devil
[State -1, Patada Sonica Devil]
type = ChangeState
value = 2100
triggerall = command = "Head Press Devil"
trigger1 = statetype!=A && (stateno=[0,40])
trigger2 = (movecontact = 1) && (stateno = 200)
trigger3 = (movecontact = 1) && (stateno = 201)
trigger4 = (movecontact = 1) && (stateno = 230)
trigger5 = (movecontact = 1) && (stateno = 210)
trigger6 = (movecontact = 1) && (stateno = 240)
trigger7 = (movecontact = 1) && (stateno = 400)
trigger8 = (movecontact = 1) && (stateno = 410)

;Head Press Fuerte
[State -1, Head Press Fuerte]
type = ChangeState
value = 2150
triggerall = command = "Head Press Fuerte"
trigger1 = statetype!=A && (stateno=[0,40])
trigger2 = (movecontact = 1) && (stateno = 200)
trigger3 = (movecontact = 1) && (stateno = 201)
trigger4 = (movecontact = 1) && (stateno = 230)
trigger5 = (movecontact = 1) && (stateno = 210)
trigger6 = (movecontact = 1) && (stateno = 240)
trigger7 = (movecontact = 1) && (stateno = 400)
trigger8 = (movecontact = 1) && (stateno = 410)

;Dig Attack
[State -1]
type = ChangeState
value = 2200
triggerall = command = "Dig Attack" || command = "Dig Attack 2"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (movecontact = 1) && (stateno = 200)
trigger3 = (movecontact = 1) && (stateno = 201)
trigger4 = (movecontact = 1) && (stateno = 230)
trigger5 = (movecontact = 1) && (stateno = 210)
trigger6 = (movecontact = 1) && (stateno = 240)
trigger7 = (movecontact = 1) && (stateno = 400)
trigger8 = (movecontact = 1) && (stateno = 410)

;Mamushka Kicks - Alta
[State -1]
type = ChangeState
value = 2400
triggerall = command = "Mamushka Kicks 1"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (movecontact = 1) && (stateno = 200)
trigger3 = (movecontact = 1) && (stateno = 201)
trigger4 = (movecontact = 1) && (stateno = 230)
trigger5 = (movecontact = 1) && (stateno = 210)
trigger6 = (movecontact = 1) && (stateno = 240)
trigger7 = (movecontact = 1) && (stateno = 400)
trigger8 = (movecontact = 1) && (stateno = 410)


;Mamushka Kicks - Larga
[State -1]
type = ChangeState
value = 2500
triggerall = command = "Mamushka Kicks 2"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (movecontact = 1) && (stateno = 200)
trigger3 = (movecontact = 1) && (stateno = 201)
trigger4 = (movecontact = 1) && (stateno = 230)
trigger5 = (movecontact = 1) && (stateno = 210)
trigger6 = (movecontact = 1) && (stateno = 240)
trigger7 = (movecontact = 1) && (stateno = 400)
trigger8 = (movecontact = 1) && (stateno = 410)



;-------------------------------------------------------------------------------------
;FireBall
[State -1]
type = ChangeState
value = 1000
triggerall = command = "fireball"
triggerall = (Power >= 50)
triggerall = numproj = 0
trigger1 = statetype = S
trigger1 = ctrl = 1

;-----------------------------------------------------------------------------
; Shoulder Throw
;[State -1, Throw]
;type = ChangeState
;value = 780
;triggerall = (command = "a" && command = "b") && statetype = S && ctrl && stateno != 100
;trigger1 = command = "holdfwd" && p2bodydist X < 5 && (p2statetype = S || p2statetype = C) && p2movetype != H
;trigger2 = command = "holdback" && p2bodydist X < 7 && (p2statetype = S || p2statetype = C) && p2movetype != H
;-----------------------------------------------------------------------------
;charge
[State -1]
type = ChangeState
value = 730
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = (power < 3000)
trigger1 = command = "charge"
trigger1 = command = "charge 1"
trigger2 = stateno = 1500

;-----------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 185
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;-----------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1

;-------------------------------------------------------------------------------
[State -1, Air Dash Forward]
type = ChangeState
value = 1015
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl = 1

[State -1, Air Dash Back]
type = ChangeState
value = 1016
trigger1 = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl = 1

;===================================================================================
;---------------- Comands ----------------------------------------------------------
;===================================================================================

;-------------------------------------------------------------------
;Zanzouken
[State -1, zanzoken]
type = ChangeState
value = 900
triggerall = command = "z"
triggerall = (power > 400)
triggerall = alive = 1
trigger1 = ctrl = 1
trigger1 = stateno >= 150
trigger2 = Stateno <= 153
trigger3 = stateno = 5000
trigger4 = stateno = 5001
trigger5 = stateno = 5002
trigger6 = stateno = 5010
trigger7 = stateno = 5011
trigger8 = stateno = 5012
trigger9 = stateno = 5020
trigger10 = stateno = 5021
trigger11 = stateno = 5022
trigger12 = stateno = 5110
trigger13 = stateno = 5120
trigger14 = stateno = 5110
trigger15 = stateno = 5035
trigger16 = stateno = 5030
trigger17 = stateno = 5050
trigger18 = stateno = 5040
trigger19 = stateno = 5071
trigger20 = stateno = 1500

;---------------------------------------------------------------------------

;Flying Start
[State -1]
type = ChangeState
value = 990
trigger1 = command = "fly"
trigger1 = ctrl = 1
trigger1 = statetype = A


;===============================================================================
;-------------------------------------------------------------------------------
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1

;-------------------------------------------------------------------------------
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1




;-------------------------------------------------------------------------------
;Super Jump
[State -1:      Super Jump]
type            = ChangeState
value      = 60
triggerall      = command = "Super Jump"
trigger1        = (statetype = S) && (ctrl)


;===================================================================================
;---------------- Normales ------------------------------------------------------------
;===================================================================================


;--------------------------------------------------------------------------------
;crouch light punch
[State -1]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1


;crouch strong punch
[State -1]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = (stateno != 410)
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = (movecontact = 1) && (stateno = 400)
trigger3 = (movecontact = 1) && (stateno = 430)
trigger4 = (movecontact = 1) && (stateno = 200)
trigger5 = (movecontact = 1) && (stateno = 210)

;crouch Light Kick
[State -1]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = (stateno != 430)
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = (movecontact = 1) && (stateno = 400)
trigger3 = (movecontact = 1) && (stateno = 200)
trigger4 = (movecontact = 1) && (stateno = 210)

;crouch Strong Kick
[State -1]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = (stateno != 440)
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = (movecontact = 1) && (stateno = 400)
trigger3 = (movecontact = 1) && (stateno = 410)
trigger4 = (movecontact = 1) && (stateno = 430)
trigger5 = (movecontact = 1) && (stateno = 200)
trigger6 = (movecontact = 1) && (stateno = 210)

;---------------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 310) && (movecontact = 1)


;Stand Strong Punch
[State -1]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (movecontact = 1) && (stateno = 200)
trigger3 = (movecontact = 1) && (stateno = 201)
trigger4 = (movecontact = 1) && (stateno = 230)
trigger5 = (movecontact = 1) && (stateno = 400)
trigger6 = (movecontact = 1) && (stateno = 410)

;Stand light Kick
[State -1]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (movecontact = 1) && (stateno = 200)
trigger3 = (movecontact = 1) && (stateno = 201)
trigger4 = (movecontact = 1) && (stateno = 400)
trigger5 = (movecontact = 1) && (stateno = 410)

;Stand Strong Kick
[State -1]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (movecontact = 1) && (stateno = 200)
trigger3 = (movecontact = 1) && (stateno = 201)
trigger4 = (movecontact = 1) && (stateno = 230)
trigger5 = (movecontact = 1) && (stateno = 210)
trigger6 = (movecontact = 1) && (stateno = 400)
trigger7 = (movecontact = 1) && (stateno = 410)


;-----------------------------------------------------------------------------------
;Jump Light Punch
[State -1]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall= statetype = A
trigger1 = ctrl = 1
trigger2 = (stateno = 2102)

;Jump Strong Punch
[State -1]
type = ChangeState
value = 610
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = (movecontact = 1) && (stateno = 600)
trigger3 = (movecontact = 1) && (stateno = 601)
trigger4 = (movecontact = 1) && (stateno = 630)
trigger5 = (stateno = 2102)


;Jump Light Kick
[State -1]
type = ChangeState
value = 630
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = (movecontact = 1) && (stateno = 600)
trigger3 = (movecontact = 1) && (stateno = 601)
trigger4 = (stateno = 2102)


;Jump Strong Kick
[State -1]
type = ChangeState
value = 640
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = (movecontact = 1) && (stateno = 600)
trigger3 = (movecontact = 1) && (stateno = 601)
trigger4 = (movecontact = 1) && (stateno = 630)
trigger5 = (movecontact = 1) && (stateno = 610)
trigger6 = (stateno = 2102)


;-----------------------------------------------------------------------------------
;Flying Light Punch
[State -1]
type = ChangeState
value = 500
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = Stateno = 991

;Flying  Strong Punch
[State -1]
type = ChangeState
value = 510
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = Stateno = 991

;Flying Light Kick
[State -1]
type = ChangeState
value = 530
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = Stateno = 991

;Flying Strong Kick
[State -1]
type = ChangeState
value = 540
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = Stateno = 991
