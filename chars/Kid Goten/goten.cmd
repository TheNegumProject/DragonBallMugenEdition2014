;-| Transformaçao |--------------------------------------------------------
[Command]
name = "ssj"
command = x+y

[Command]
name = "normal"
command = ~s

;-| Super Ataques |--------------------------------------------------------
[Command]
name = "fire_ball"
command = B, F, z
time = 30

[Command]
name = "contra ataque"
command = D, DF, F, a+b
time = 30

[Command]
name = "fly"
command = y+b
time = 30

[Command]
name = "zanzoken"
command = c+z
time = 30

[Command]
name = "wkame"
command = ~D, DF, F, z
time = 30

[Command]
name = "superfireball"
command = ~D, DF, F, y
time = 30

[Command]
name = "raio_fraco"
command = ~D, DF, F, x
time = 30

; Combo
[Command]
name = "Combo"
command = ~D, DF, F, a

; Combo 2
[Command]
name = "Combo2"
command = ~D, DF, F, b

; Combo 3
[Command]
name = "Combo3"
command = ~D, DB, B, a

[Command]
name = "ufire"
command = /UF
time = 1

[Command]
name = "dfire"
command = /DF
time = 1

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF";Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB";Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "charge"
command = /a

[Command]
name = "charge 1"
command = /x


;-| Dir + Button |---------------------------------------------------------
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

[Command]
name = "fwd_ab"
command = /F, a+b
time = 1

[Command]
name = "back_ab"
command = /B, a+b
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

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup";Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]
;Transformar em ssj
[State -1]
type = changestate
triggerall = var(9) = 0
value = 3656
triggerall = command = "ssj" 
trigger1 = statetype = S
trigger1 = ctrl = 1
triggerall = power >= 3000

;Voltar ao Normal
[State -1]
type = changestate
triggerall = var(9) = 1
value = 9999
trigger1 = command = "normal"
trigger1 = statetype = S

;Fire Ball
[State -1]
type = ChangeState
value = 700
triggerall = power > 100
triggerall = command = "fire_ball"
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500

;Fire Ball 1
[State -1]
type = changestate
value = 702
triggerall = command = "z"
triggerall = var(9) = 0
triggerall = power > 100
triggerall = Time > 9
trigger1 = stateno = 700

;Fire Ball 2
[State -1]
type = changestate
value = 700
triggerall = command = "z"
triggerall = var(9) = 0
triggerall = power > 100
triggerall = Time > 9
trigger1 = stateno = 702

;Contra Ataque
[State -1]
type = ChangeState
value = 1200
triggerall = command = "contra ataque"
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500


;---------------------------------------------------------------------------
;Fly
[State -1]
type = ChangeState
value = 1500
triggerall = command = "fly"
triggerall = var(9) = 0
trigger1 = statetype = A
trigger1 = ctrl = 1

;Fly
[State -1]
type = ChangeState
value = 1510
triggerall = command = "fly"
triggerall = var(9) = 0
trigger1 = statetype != A
trigger1 = ctrl = 1

;Zanzoken
[State -1]
type = ChangeState
value = 1600
triggerall = command = "zanzoken"
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1 
trigger2 = stateno = 1500

;Zanzoken - Counter
[State -1]
type = ChangeState
value = 1600
triggerall = command = "zanzoken"
triggerall = var(9) = 0
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

;Weak Kamehameha
[State -1]
type = changestate
value = 1900
triggerall = command = "wkame"
triggerall = numproj = 0
triggerall = power > 0
triggerall = var(9) = 0
trigger1 = statetype != C
trigger1 = ctrl = 1
trigger2 = stateno = 1500

;Super FireBall
[State -1]
type = changestate
value = 2900
triggerall = command = "superfireball"
triggerall = numproj = 0
triggerall = power > 0
triggerall = var(9) = 0
trigger1 = statetype != C
trigger1 = ctrl = 1
trigger2 = stateno = 1500

;Raio Fraco
[State -1]
type = changestate
value = 1700
triggerall = command = "raio_fraco"
triggerall = numproj = 0
triggerall = power > 1000
triggerall = var(9) = 0
trigger1 = statetype != C
trigger1 = ctrl = 1
trigger2 = stateno = 1500


-----
; Combo
[State -1]
type = ChangeState
value = 1000
triggerall = command = "Combo"
triggerall = power >= 500 
triggerall = var(9) = 0
trigger1 = Statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 220
trigger4 = movecontact = 1
trigger5 = stateno = 230
trigger5 = movecontact = 1
trigger6 = stateno = 240
trigger6 = movecontact = 1
trigger7 = stateno = 250
trigger7 = movecontact = 1
trigger8 = stateno = 400
trigger8 = movecontact = 1
trigger9 = stateno = 410
trigger9 = movecontact = 1
trigger10 = stateno = 420
trigger10 = movecontact = 1
trigger11 = stateno = 430
trigger11 = movecontact = 1
trigger12 = stateno = 440
trigger12 = movecontact = 1
trigger13 = stateno = 1500

[State -1]
type = ChangeState
value = 1010
triggerall = command = "Combo2"
triggerall = power >= 500 
triggerall = var(9) = 0
trigger1 = Statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 220
trigger4 = movecontact = 1
trigger5 = stateno = 230
trigger5 = movecontact = 1
trigger6 = stateno = 240
trigger6 = movecontact = 1
trigger7 = stateno = 250
trigger7 = movecontact = 1
trigger8 = stateno = 400
trigger8 = movecontact = 1
trigger9 = stateno = 410
trigger9 = movecontact = 1
trigger10 = stateno = 420
trigger10 = movecontact = 1
trigger11 = stateno = 430
trigger11 = movecontact = 1
trigger12 = stateno = 440
trigger12 = movecontact = 1
trigger13 = stateno = 1500

[State -1]
type = ChangeState
value = 1020
triggerall = command = "Combo3"
triggerall = power >= 500
triggerall = var(9) = 0 
trigger1 = Statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 220
trigger4 = movecontact = 1
trigger5 = stateno = 230
trigger5 = movecontact = 1
trigger6 = stateno = 240
trigger6 = movecontact = 1
trigger7 = stateno = 250
trigger7 = movecontact = 1
trigger8 = stateno = 400
trigger8 = movecontact = 1
trigger9 = stateno = 410
trigger9 = movecontact = 1
trigger10 = stateno = 420
trigger10 = movecontact = 1
trigger11 = stateno = 430
trigger11 = movecontact = 1
trigger12 = stateno = 440
trigger12 = movecontact = 1
trigger13 = stateno = 1500
;---------------------------------------------------------------------------

;RunFwd
[State -1]
type = ChangeState
value = 100
triggerall = var(9) = 0
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;RunBack
[State -1]
type = ChangeState
value = 105
triggerall = var(9) = 0
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;RunFwd
[State -1]
type = ChangeState
value = 3100
triggerall = var(9) = 1
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1

;RunBack
[State -1]
type = ChangeState
value = 3105
triggerall = var(9) = 1
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Stand_b
[State -1]
type = ChangeState
value = 201
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = time >= 20
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 202
trigger4 = movecontact =1
trigger5 = stateno = 210
trigger5 = movecontact = 1
trigger6 = stateno = 211
trigger6 = movecontact = 1
trigger7 = stateno = 212
trigger7 = movecontact = 1
trigger8 = stateno = 1500

;Stand_a
[State -1]
type = ChangeState
value = 3200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = var(9) = 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 3200
trigger2 = time >= 20
trigger3 = stateno = 3201
trigger3 = movecontact = 1
trigger4 = stateno = 3202
trigger4 = movecontact =1
trigger5 = stateno = 3210
trigger5 = movecontact = 1
trigger6 = stateno = 3211
trigger6 = movecontact = 1
trigger7 = stateno = 3212
trigger7 = movecontact = 1
trigger8 = stateno = 1500
;---------------------------------------------------------------------------
;Stand_a
[State -1]
type = ChangeState
value = 200
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = time >= 20
trigger3 = stateno = 201
trigger3 = movecontact = 1
trigger4 = stateno = 202
trigger4 = movecontact =1
trigger5 = stateno = 210
trigger5 = movecontact = 1
trigger6 = stateno = 211
trigger6 = movecontact = 1
trigger7 = stateno = 212
trigger7 = movecontact = 1
trigger8 = stateno = 1500
;---------------------------------------------------------------------------
;Stand_b
[State -1]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500

[State -1]
type = changestate
value = 2100
triggerall = command = "b"
triggerall = var(9) = 0
triggerall = stateno = 210
triggerall = movecontact = 1
trigger1 = statetype = S

[State -1]
type = changestate
value = 2101
triggerall = command = "b"
triggerall = var(9) = 0
triggerall = stateno = 2100
triggerall = movecontact = 1
trigger1 = statetype = S


;--------------------------------------------------------------------------

;Stand_x
[State -1]
type = ChangeState
value = 211
triggerall = command = "a"
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500

[State -1]
type = changestate
value = 214
triggerall = command = "a"
triggerall = var(9) = 0
triggerall = stateno = 211
triggerall = movecontact = 1
trigger1 = statetype = S
;---------------------------------------------------------------------------
;Stand_z
[State -1]
type = ChangeState
value = 213
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 212
trigger2 = time >= 30
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 201
trigger4 = movecontact =1
trigger5 = stateno = 202
trigger5 = movecontact = 1
trigger6 = stateno = 210
trigger6 = movecontact = 1
trigger7 = stateno = 211
trigger7 = movecontact = 1
trigger8 = stateno = 1500

;---------------------------------------------------------------------------
;Crouch_a
[State -1]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = var(9) = 0
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 400
trigger2 = time >= 30
trigger3 = stateno = 410
trigger3 = movecontact = 1

;---------------------------------------------------------------------------
;Crouch_b
[State -1]
type = ChangeState
value = 400
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = var(9) = 0
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 400
trigger2 = time >= 30
trigger3 = stateno = 410
trigger3 = movecontact = 1

;---------------------------------------------------------------------------
;Crouch_c
[State -1]
type = ChangeState
value = 400
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = var(9) = 0
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 400
trigger2 = time >= 30
trigger3 = stateno = 410
trigger3 = movecontact = 1

;---------------------------------------------------------------------------
;Crouch_x
[State -1]
type = ChangeState
value = 410
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = var(9) = 0
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 410
trigger2 = time >= 30
trigger3 = stateno = 400
trigger3 = movecontact = 1

;---------------------------------------------------------------------------
;Crouch_y
[State -1]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = var(9) = 0
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 410
trigger2 = time >= 30
trigger3 = stateno = 400
trigger3 = movecontact = 1

;---------------------------------------------------------------------------
;Crouch_z
[State -1]
type = ChangeState
value = 410
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = var(9) = 0
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 410
trigger2 = time >= 30
trigger3 = stateno = 400
trigger3 = movecontact = 1

;---------------------------------------------------------------------------

;Jump_a
[State -1]
type = ChangeState
value = 602
triggerall = var(9) = 0
trigger1 = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Jump_b
[State -1]
type = ChangeState
value = 602
triggerall = var(9) = 0
trigger1 = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Jump_c
[State -1]
type = ChangeState
value = 602
triggerall = var(9) = 0
trigger1 = command = "z"
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Jump_x
[State -1]
type = ChangeState
value = 610
triggerall = var(9) = 0
trigger1 = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Jump_y
[State -1]
type = ChangeState
value = 610
triggerall = var(9) = 0
trigger1 = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Jump_z
[State -1]
type = ChangeState
value = 610
triggerall = var(9) = 0
trigger1 = command = "c"
trigger1 = statetype = A
trigger1 = ctrl = 1
;-------------------------------------------------------------------
-----
;Charge
[State -1]
type = ChangeState
value = 730
triggerall = ctrl = 1
triggerall = var(9) = 0
trigger1 = command = "charge"
trigger1 = command = "charge 1"
trigger1 = statetype = S

;Air Charge
[State -1]
type = ChangeState
value = 731
triggerall = var(9) = 0
trigger1 = ctrl = 0
trigger1 = command = "charge"
trigger1 = command = "charge 1"
trigger1 = stateno = 1500
;---------------------------------------------------------------------------
;Uppercut
[State -1]
type = ChangeState
value = 2410
triggerall = command = "fwd_z"
triggerall = command != "holddown"
triggerall = var(9) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
;------------------------------------------------------------------------------
;Auto - Charge
[State -1]
type = PowerAdd
trigger1 = 1
value = 1
;----------------------------------------------------------------------------
;Auto - Regenerate
[State -1]
type = LifeAdd
trigger1 = time = 5
value = 1
