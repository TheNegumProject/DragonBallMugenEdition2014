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
[Command]
name = "Kamehameha"
command = ~D, F, D, F, y
time = 25

[Command]
name = "Max Kamehameha"
command = ~D, F, B, y
time = 25

[Command]
name = "hankoku"
command = ~D, F, D, F, b
time = 25

[Command]
name = "speed"
command = ~D, B, F, b
time = 30

[Command]
name = "telekinesis"
command = ~D, B, F, y
time = 20

;-| Special Motions |------------------------------------------------------
[Command]
name = "suiken"
command = ~D, DB, B, a
time = 20

[Command]
name = "suiken2"
command = ~D, DB, B, b
time = 20

[Command]
name = "hadouken"
command = ~D, DF, F, x
time = 15

[Command]
name = "hadouken2"
command = ~D, DF, F, y
time = 15

[Command]
name = "dkick"
command = ~D, DF, F, a
time = 20

[Command]
name = "dkick2"
command = ~D, DF, F, b
time = 20

[Command]
name = "punches"
command = ~F, B, F, x
time = 20

[Command]
name = "punches2"
command = ~F, B, F, y
time = 20

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
name = "hold_a"
command = /$a
time = 1

[Command]
name = "hold_b"
command = /$b
time = 1

[Command]
name = "hold_c"
command = /$c
time = 1

[Command]
name = "hold_x"
command = /$x
time = 1

[Command]
name = "hold_y"
command = /$y
time = 1

[Command]
name = "hold_z"
command = /$z
time = 1

[Command]
name = "start"
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
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Command]
name = "longjump"
command = ~D, $U
time = 11

;---------------------------------------------------------------------------
; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;===========================================================================
;---------------------------------------------------------------------------
[State -1,]
type = ChangeState
value = 3200
TriggerAll = Var(59) <= 0
triggerall = command = "hankoku"
triggerall = power >= 3000
trigger1 = ctrl
trigger1 = statetype != A
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 201 && movecontact
trigger5 = stateno = 202 && movecontact
trigger6 = stateno = 203 && movecontact
trigger7 = stateno = 251 && movecontact
trigger8 = stateno = 253 && movecontact
trigger9 = stateno = 250 && movecontact
trigger10 = stateno = 252 && movecontact
trigger11 = stateno = 400 && movecontact
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 420 && movecontact
trigger14 = stateno = 450 && movecontact
trigger15 = stateno = 500 && movecontact
trigger16 = stateno = 550 && movecontact

[State -1,]
type = ChangeState
value = 3000
triggerall = command = "speed"
triggerall = power >= 2000
trigger1 = ctrl
trigger1 = statetype != A
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 201 && movecontact
trigger5 = stateno = 202 && movecontact
trigger6 = stateno = 203 && movecontact
trigger7 = stateno = 204 && movecontact
trigger8 = stateno = 251 && movecontact
trigger9 = stateno = 253 && movecontact
trigger10 = stateno = 250 && movecontact
trigger11 = stateno = 252 && movecontact
trigger12 = stateno = 400 && movecontact
trigger13 = stateno = 410 && movecontact
trigger14 = stateno = 420 && movecontact
trigger15 = stateno = 450 && movecontact
trigger16 = stateno = 500 && movecontact
trigger17 = stateno = 550 && movecontact

[State -1,]
type = ChangeState
value = 2200
triggerall = command = "Kamehameha"
triggerall = power >= 1000
triggerall = var(10) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 201 && movecontact
trigger5 = stateno = 202 && movecontact
trigger6 = stateno = 203 && movecontact
trigger7 = stateno = 204 && movecontact
trigger8 = stateno = 251 && movecontact
trigger9 = stateno = 253 && movecontact
trigger10 = stateno = 250 && movecontact
trigger11 = stateno = 252 && movecontact
trigger12 = stateno = 400 && movecontact
trigger13 = stateno = 410 && movecontact
trigger14 = stateno = 420 && movecontact
trigger15 = stateno = 450 && movecontact
trigger16 = stateno = 500 && movecontact

[State -1,]
type = ChangeState
value = 2800
triggerall = command = "Max Kamehameha"
triggerall = power >= 2000
triggerall = var(10) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 201 && movecontact
trigger5 = stateno = 202 && movecontact
trigger6 = stateno = 203 && movecontact
trigger7 = stateno = 204 && movecontact
trigger8 = stateno = 251 && movecontact
trigger9 = stateno = 253 && movecontact
trigger10 = stateno = 250 && movecontact
trigger11 = stateno = 252 && movecontact
trigger12 = stateno = 400 && movecontact
trigger13 = stateno = 410 && movecontact
trigger14 = stateno = 420 && movecontact
trigger15 = stateno = 450 && movecontact
trigger16 = stateno = 500 && movecontact

[State -1,]
type = ChangeState
value = 2250
triggerall = command = "Kamehameha"
triggerall = power >= 1000
triggerall = var(10) = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 620 && movecontact
trigger5 = stateno = 630 && movecontact
trigger6 = stateno = 635 && movecontact
trigger7 = stateno = 640 && movecontact
trigger8 = stateno = 650 && movecontact

[State -1,]
type = ChangeState
value = 1100
triggerall = var(59) = 0
triggerall = command = "suiken"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = (stateno = 200 || stateno = 201 || stateno = 202 || stateno = 203 || stateno = 204 || stateno = 251 || stateno = 253 || stateno = 250 || stateno = 252) && (movecontact)
trigger4 = (stateno = 400 || stateno = 410 || stateno = 420 || stateno = 450) && (movecontact)
trigger5 = (stateno = 500) && movecontact

[State -1,]
type = ChangeState
value = 1105
triggerall = var(59) = 0
triggerall = command = "suiken2"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = (stateno = 200 || stateno = 201 || stateno = 202 || stateno = 203 || stateno = 204 || stateno = 251 || stateno = 253 || stateno = 250 || stateno = 252) && (movecontact)
trigger4 = (stateno = 400 || stateno = 410 || stateno = 420 || stateno = 450) && (movecontact)
trigger5 = (stateno = 500) && movecontact

[State -1]
type = ChangeState
value = 1200
triggerall = command = "hadouken"
triggerall = power >= 100
triggerall = numproj = 0 || numproj = 1 && var(10) != 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && movecontact = 1
trigger4 = stateno = 201 && movecontact = 1
trigger5 = stateno = 202 && movecontact = 1
trigger6 = stateno = 203 && movecontact = 1
trigger7 = stateno = 204 && movecontact = 1
trigger8 = stateno = 251 && movecontact = 1
trigger9 = stateno = 253 && movecontact = 1
trigger10 = stateno = 250 && movecontact = 1
trigger11 = stateno = 252 && movecontact = 1
trigger12 = stateno = 400 && movecontact = 1
trigger13 = stateno = 410 && movecontact = 1
trigger14 = stateno = 420 && movecontact = 1
trigger15 = stateno = 450 && movecontact = 1
trigger16 = stateno = 500 && movecontact = 1

[State -1]
type = ChangeState
value = 1205
triggerall = command = "hadouken2"
triggerall = power >= 100
triggerall = numproj = 0 || numproj = 1 && var(10) != 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && movecontact = 1
trigger4 = stateno = 201 && movecontact = 1
trigger5 = stateno = 202 && movecontact = 1
trigger6 = stateno = 203 && movecontact = 1
trigger7 = stateno = 204 && movecontact = 1
trigger8 = stateno = 251 && movecontact = 1
trigger9 = stateno = 253 && movecontact = 1
trigger10 = stateno = 250 && movecontact = 1
trigger11 = stateno = 252 && movecontact = 1
trigger12 = stateno = 400 && movecontact = 1
trigger13 = stateno = 410 && movecontact = 1
trigger14 = stateno = 420 && movecontact = 1
trigger15 = stateno = 450 && movecontact = 1
trigger16 = stateno = 500 && movecontact = 1

[State -1,]
type = ChangeState
value = 1400
triggerall = command = "hadouken"
triggerall = power >= 100
triggerall = numproj = 0 || numproj = 1 && var(10) != 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 620 && movecontact
trigger5 = stateno = 630 && movecontact
trigger6 = stateno = 635 && movecontact
trigger7 = stateno = 640 && movecontact
trigger8 = stateno = 650 && movecontact

[State -1,]
type = ChangeState
value = 1450
triggerall = command = "hadouken2"
triggerall = power >= 100
triggerall = numproj = 0 || numproj = 1 && var(10) != 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 620 && movecontact
trigger5 = stateno = 630 && movecontact
trigger6 = stateno = 635 && movecontact
trigger7 = stateno = 640 && movecontact
trigger8 = stateno = 650 && movecontact


[State -1,]
type = ChangeState
value = 1000
triggerall = var(59) = 0
triggerall = command = "dkick"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = (stateno = 200 || stateno = 201 || stateno = 202 || stateno = 203 || stateno = 204 || stateno = 251 || stateno = 253 || stateno = 250 || stateno = 252) && (movecontact)
trigger4 = (stateno = 400 || stateno = 410 || stateno = 420 || stateno = 450) && (movecontact)
trigger5 = (stateno = 500) && movecontact

; ƒXƒ‰ƒbƒVƒ…ƒ_ƒEƒ“ƒLƒbƒN(Žã)
[State -1,]
type = ChangeState
value = 1001
triggerall = var(59) = 0
triggerall = command = "dkick"
trigger1 = ctrl
trigger1 = statetype = A
trigger2 = (stateno = 600 || stateno = 610 || stateno = 620 || stateno = 630 || stateno = 635 || stateno = 640 || stateno = 650) && (movecontact)


[State -1,]
type = ChangeState
value = 1005
triggerall = var(59) = 0
triggerall = command = "dkick2"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = (stateno = 200 || stateno = 201 || stateno = 202 || stateno = 203 || stateno = 204 || stateno = 251 || stateno = 253 || stateno = 250 || stateno = 252) && (movecontact)
trigger4 = (stateno = 400 || stateno = 410 || stateno = 420 || stateno = 450) && (movecontact)
trigger5 = (stateno = 500) && movecontact

[State -1,]
type = ChangeState
value = 1006
triggerall = var(59) = 0
triggerall = command = "dkick2"
trigger1 = ctrl
trigger1 = statetype = A
trigger2 = (stateno = 600 || stateno = 610 || stateno = 620 || stateno = 630 || stateno = 635 || stateno = 640 || stateno = 650) && (movecontact)

[State -1,]
type = ChangeState
value = 1500
triggerall = var(59) = 0
triggerall = command = "punches"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = (stateno = 200 || stateno = 201 || stateno = 202 || stateno = 203 || stateno = 204 || stateno = 251 || stateno = 253 || stateno = 250 || stateno = 252) && (movecontact)
trigger4 = (stateno = 400 || stateno = 410 || stateno = 420 || stateno = 450) && (movecontact)
trigger5 = (stateno = 500) && movecontact


; —‚Ñ‚¹R‚è(‹­)
[State -1,]
type = ChangeState
value = 1510
triggerall = var(59) = 0
triggerall = command = "punches2"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = (stateno = 200 || stateno = 201 || stateno = 202 || stateno = 203 || stateno = 204 || stateno = 251 || stateno = 253 || stateno = 250 || stateno = 252) && (movecontact)
trigger4 = (stateno = 400 || stateno = 410 || stateno = 420 || stateno = 450) && (movecontact)
trigger5 = (stateno = 500) && movecontact

[State -1]
type = ChangeState
value = 1700
triggerall = var(59) = 0
triggerall = command = "telekinesis"
triggerall = power >= 200
triggerall = numproj = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 220 && movecontact = 1
trigger4 = stateno = 210 && movecontact = 1
trigger5 = stateno = 230 && movecontact = 1
trigger6 = stateno = 200 && movecontact = 1
trigger7 = stateno = 204 && movecontact = 1
trigger8 = stateno = 250 && movecontact = 1
trigger9 = stateno = 260 && movecontact = 1
trigger10 = stateno = 270 && movecontact = 1
trigger11 = stateno = 400 && movecontact = 1
trigger12 = stateno = 410 && movecontact = 1
trigger13 = stateno = 420 && movecontact = 1
trigger14 = stateno = 450 && movecontact = 1
trigger15 = stateno = 500 && movecontact = 1


[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(59) = 0
triggerall = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl


;‹ó’†ƒ_ƒbƒVƒ…
[State -1, Run Fwd]
type = ChangeState
value = 110
triggerall = var(59) = 0
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl

; ƒoƒbƒNƒXƒeƒbƒv
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(59) = 0
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

; ‹ó’†ƒoƒbƒNƒ_ƒbƒVƒ…
[State -1, Run Back]
type = ChangeState
value = 112
triggerall = var(59) = 0
triggerall = vel x <= 0;-1 
trigger1 = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl

[State -1,]
type = ChangeState
value = 700
triggerall = var(59) = 0
triggerall = (command = "holdfwd" || command = "holdback") && (command = "y")
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = p2bodydist X < 7
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

;Power Charge!
[State -1]
type = ChangeState
value = 1900
triggerall = var(59) = 0
triggerall = statetype = S
triggerall = Power < 3000
triggerall = ctrl = 1
trigger1 = command = "hold_b" && command = "hold_y"
trigger2 = command = "hold_c"
;---------------------------------------------------------------------------
;Taunt
[State -1]
type = ChangeState
value = 195
triggerall = var(59) = 0
trigger1 = command = "start"
trigger1 = Vel X = 0
trigger1 = stateno != 195
trigger1 = statetype = S
trigger1 = ctrl = 1

; ‚‘¬ˆÚ“® (Œã•û)
[State -1]
type = ChangeState
value = 360
triggerall = var(59) = 0
triggerall = command = "recovery" ^^ command = "z"
triggerall = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 101
trigger4 = stateno = 102

; ‚‘¬ˆÚ“® (‘O•û)
[State -1]
type = ChangeState
value = 361
triggerall = var(59) = 0
triggerall = command = "recovery" ^^ command = "z"
trigger1 = statetype = S
trigger1 = ctrl

 ƒ_ƒbƒVƒ…‚‘¬ˆÚ“® (‘O•û)
[State -1]
type = ChangeState
value = 361
triggerall = var(59) = 0
triggerall = stateno = 100 || stateno = 101 || stateno = 102
triggerall = ctrl = 0
trigger1 = command = "hold_x" && command = "hold_a" 
trigger2 = command = "hold_z"
trigger3 = command = "hold_c"




;---------------------------------------------------------------------------

; ƒ_ƒbƒVƒ…‹­ƒpƒ“ƒ` (ƒ_ƒbƒVƒ…’†)
[State -1,]
type = ChangeState
value = 1500
triggerall = stateno = 101
trigger1 = command = "hold_y"

; ƒ_ƒbƒVƒ…Žãƒpƒ“ƒ` (ƒ_ƒbƒVƒ…’†)
[State -1,]
type = ChangeState
value = 500
triggerall = stateno = 101
trigger1 = command = "hold_x"

; ƒ_ƒbƒVƒ…ŽãƒLƒbƒN (ƒXƒ‰ƒCƒfƒBƒ“ƒOƒLƒbƒN)
[State -1,]
type = ChangeState
value = 550
triggerall = stateno = 101
trigger1 = command = "hold_a"

 ƒ_ƒbƒVƒ…‹­ƒLƒbƒN (ƒ_ƒbƒVƒ…’†)
[State -1,]
type = ChangeState
value = 525
triggerall = stateno = 101
trigger1 = command = "hold_b"


;------------------------------------------------------

[State -1,]
type = ChangeState
value = 201
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = p2bodydist x < 15
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 201 && movecontact
trigger4 = stateno = 500 && movecontact
trigger5 = stateno = 1801
trigger5 = time > 4

[State -1,]
type = ChangeState
value = 203
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 203
trigger3 = time > 9
trigger4 = stateno = 201 && movecontact
trigger5 = stateno = 253 && movecontact
trigger6 = stateno = 500 && movecontact

[State -1,]
type = ChangeState
value = 202
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = p2bodydist x < 15
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 201 && movecontact
trigger3 = stateno = 203 && movecontact
trigger4 = stateno = 500 && movecontact

[State -1,]
type = ChangeState
value = 200
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 202 && movecontact
trigger3 = stateno = 203 && movecontact
trigger4 = stateno = 201 && movecontact
trigger5 = stateno = 251 && movecontact
trigger6 = stateno = 253 && movecontact
trigger7 = stateno = 500 && movecontact


;-------------------------------------------ƒLƒbƒN

; ŽãƒLƒbƒN (‹ß‹——£)
[State -1,]
type = ChangeState
value = 253
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = p2bodydist x < 15
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 235
trigger2 = time > 3
trigger3 = stateno = 201 && movecontact
trigger4 = stateno = 203 && movecontact
trigger5 = stateno = 500 && movecontact

[State -1,]
type = ChangeState
value = 251
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 251
trigger2 = time > 14
trigger3 = stateno = 253
trigger3 = time > 3
trigger4 = stateno = 201 && movecontact
trigger5 = stateno = 203 && movecontact
trigger6 = stateno = 500 && movecontact
trigger7 = stateno = 251 && movecontact

[State -1,]
type = ChangeState
value = 252
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = p2bodydist x < 15
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 202 && movecontact
trigger3 = stateno = 203 && movecontact
trigger4 = stateno = 251 && movecontact
trigger5 = stateno = 253 && movecontact
trigger6 = stateno = 500 && movecontact

[State -1]
type = ChangeState
value = 250
;triggerall = var(22) = 0
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 201 && movecontact
trigger4 = stateno = 202 && movecontact
trigger5 = stateno = 203 && movecontact
trigger6 = stateno = 251 && movecontact
trigger7 = stateno = 253 && movecontact
trigger8 = stateno = 500 && movecontact


;---------------------------------------------------------------------------

; ‚µ‚á‚ª‚ÝŽãƒpƒ“ƒ`
[State -1]
type = ChangeState
value = 410
triggerall = var(22) = 0
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 =  stateno = 410
trigger3 =  time > 6
trigger4 = stateno = 500 && movecontact

; ‚µ‚á‚ª‚Ý‹­ƒpƒ“ƒ`
[State -1]
type = ChangeState
value = 400
triggerall = var(22) = 0
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = 420 && movecontact
trigger4 = stateno = 410 && movecontact
trigger5 = stateno = 201 && movecontact
trigger6 = stateno = 203 && movecontact
trigger7 = stateno = 251 && movecontact
trigger8 = stateno = 253 && movecontact
trigger9 = stateno = 500 && movecontact

; ‚µ‚á‚ª‚ÝŽãƒLƒbƒN
[State -1]
type = ChangeState
value = 420
triggerall = var(22) = 0
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = 420 && movecontact
trigger3 = time > 4
trigger4 = stateno = 410 && movecontact
trigger5 = stateno = 201 && movecontact
trigger6 = stateno = 203 && movecontact
trigger7 = stateno = 500 && movecontact

; ‚µ‚á‚ª‚Ý‹­ƒLƒbƒN
[State -1]
type = ChangeState
value = 450
triggerall = var(22) = 0
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = 420 && movecontact
trigger4 = stateno = 410 && movecontact
trigger5 = stateno = 203 && movecontact
trigger6 = stateno = 201 && movecontact
trigger7 = stateno = 251 && movecontact
;trigger8 = stateno = 252 && movecontact
trigger8 = stateno = 200 && movecontact
trigger9 = stateno = 202 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 500 && movecontact

;---------------------------------------------------------------------------

; ƒWƒƒƒ“ƒvŽãƒpƒ“ƒ`
[State -1]
type = ChangeState
value = 610
triggerall = var(22) = 0
triggerall = command = "x"
trigger1 = statetype = A && vel x != 0 
trigger1 = ctrl = 1
;trigger2 = stateno = 610 && movecontact = 1

; ƒWƒƒƒ“ƒvŽãƒpƒ“ƒ` (‚’¼)
[State -1]
type = ChangeState
value = 600
triggerall = var(22) = 0
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600 && movecontact = 1

; ƒWƒƒƒ“ƒv‹­ƒpƒ“ƒ`
[State -1]
type = ChangeState
value = 620
triggerall = var(22) = 0
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600 && movecontact = 1
trigger3 = stateno = 610 && movecontact = 1
trigger4 = stateno = 630 && movecontact = 1
trigger5 = stateno = 635 && movecontact = 1

; ƒWƒƒƒ“ƒvŽãƒLƒbƒN
[State -1]
type = ChangeState
value = 630
triggerall = var(22) = 0
triggerall = command = "a"
trigger1 = statetype = A && vel x != 0
trigger1 = ctrl = 1
trigger2 = stateno = 610 && movecontact = 1
;trigger3 = stateno = 630 && movecontact = 1

; ƒWƒƒƒ“ƒvŽãƒLƒbƒN (‚’¼)
[State -1]
type = ChangeState
value = 635
triggerall = var(22) = 0
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600 && movecontact = 1
trigger3 = stateno = 635 && movecontact = 1

; ƒWƒƒƒ“ƒv‹­ƒLƒbƒN
[State -1]
type = ChangeState
value = 650
triggerall = var(22) = 0
triggerall = command = "b"
trigger1 = statetype = A && vel x != 0
trigger1 = ctrl = 1
trigger2 = stateno = 610 && movecontact = 1
trigger3 = stateno = 630 && movecontact = 1
trigger4 = stateno = 620 && movecontact = 1

; ƒWƒƒƒ“ƒv‹­ƒLƒbƒN (‚’¼)
[State -1]
type = ChangeState
value = 640
triggerall = var(22) = 0
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600 && movecontact = 1
trigger3 = stateno = 635 && movecontact = 1
trigger4 = stateno = 620 && movecontact = 1