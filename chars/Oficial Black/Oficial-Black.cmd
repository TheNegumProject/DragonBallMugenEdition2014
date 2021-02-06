[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

[Defaults]
command.time = 15
command.buffer.time = 1


;Supers

[Command]
name = "Arma"
command = D, DB, B, D, DF, F, a

[Command]
name = "Arma x2"
command = D, DB, B, D, DF, F, b

[Command]
name = "Arma x3"
command = D, DB, B, D, DF, F, c

[Command]
name = "Arma x4"
command = D, DB, B, D, DF, F, x

[Command]
name = "Arma x5"
command = D, DB, B, D, DF, F, y

[Command]
name = "Arma x6"
command = D, DB, B, D, DF, F, z

[Command]
name = "Arma x7"
command = D, DB, B, D, DF, F, a+b

[Command]
name = "Armas Combinadas"
command = D, DB, B, D, DF, F, y+z

[Command]
name = "TripleKFPalm"
command = D, DF, F, D, DB, B, c
time = 20

[Command]
name = "TripleKFPalm"
command = D, DF, F, D, DB, B, x
time = 20

[Command]
name = "SmashKFUpper"
command = D, DF, F, D, DB, B, y
time = 20

[Command]
name = "SmashKFUpper"
command = D, DF, F, D, DB, B, z
time = 20

;Speciales

[Command]
name = "upper_xy"
command = D, F, a

[Command]
name = "QCF_xy"
command = D, F, b

;Dobles

[Command]
name = "upper_x"
command = a,a

[Command]
name = "upper_y"
command = b,b

[Command]
name = "QCF_x"
command = c,c

[Command]
name = "QCF_y"
command = x,x

[Command]
name = "QCB_x"
command = y,y

[Command]
name = "QCB_y"
command = z,z

[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

;Combinaciones

[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "charge"
command = /a

[Command]
name = "charge 1"
command = /x

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;Sinples

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

;Hold Dir

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


[Statedef -1]


;---------------------------------------------------------------------------
;Smash Kung Fu Upper (uses one super bar)

[State -1, Smash Kung Fu Upper]
type = ChangeState
value = 3050
triggerall = command = "SmashKFUpper"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3050,3100)
trigger2 = movecontact

;---------------------------------------------------------------------------
;Triple Kung Fu Palm (uses one super bar)

[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3000
triggerall = command = "TripleKFPalm"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact

;===========================================================================
[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(1) = 0

[State -1, Combo condition Check]
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440
trigger2 = movecontact
var(1) = 1

;---------------------------------------------------------------------------
;Fast Kung Fu Palm (1/3 super bar)

[State -1, Fast Kung Fu Palm]
type = ChangeState
value = 1020
triggerall = command = "QCF_xy"
triggerall = power >= 330
trigger1 = var(1)

[State -1]
type = SuperPause
trigger1 = P1name != "Oficial Black by Brayan Girón García"
time = 9999999999999999999999999
pos = 999999, 999999

;---------------------------------------------------------------------------
;Light Kung Fu Palm

[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1000
triggerall = command = "QCF_x"
trigger1 = var(1)

;---------------------------------------------------------------------------
;Strong Kung Fu Palm

[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1010
triggerall = command = "QCF_y"
trigger1 = var(1)

;---------------------------------------------------------------------------
;Fast Kung Fu Upper (1/3 super bar)

[State -1, Fast Kung Fu Upper]
type = ChangeState
value = 1120
triggerall = command = "upper_xy"
triggerall = power >= 330
trigger1 = var(1)

;---------------------------------------------------------------------------
;Light Kung Fu Upper

[State -1, Light Kung Fu Upper]
type = ChangeState
value = 1100
triggerall = command = "upper_x"
trigger1 = var(1)

;---------------------------------------------------------------------------
;Strong Kung Fu Upper

[State -1, Strong Kung Fu Upper]
type = ChangeState
value = 1110
triggerall = command = "upper_y"
trigger1 = var(1)

;---------------------------------------------------------------------------
;Light Kung Fu Blow

[State -1, Light Kung Fu Blow]
type = ChangeState
value = 1200
triggerall = command = "QCB_x"
trigger1 = var(1)

;---------------------------------------------------------------------------
;Strong Kung Fu Blow

[State -1, Strong Kung Fu Blow]
type = ChangeState
value = 1210
triggerall = command = "QCB_y"
trigger1 = var(1)

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
;Stand Light Punch

[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6

;---------------------------------------------------------------------------
;Stand Light Punch

[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6

;---------------------------------------------------------------------------
;Stand Light Punch

[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6

;---------------------------------------------------------------------------
;Stand Light Punch

[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6

;---------------------------------------------------------------------------
;Stand Light Punch

[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6

;---------------------------------------------------------------------------
;Stand Light Punch

[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6

;---------------------------------------------------------------------------
;Taunt

[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl


;---------------------------------------------------------------------------
;Arma

[State -1]
type = ChangeState
value = 350
triggerall = command = "Arma"
triggerall = power >= 500
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Arma x2

[State -1]
type = ChangeState
value = 351
triggerall = command = "Arma x2"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Arma x3

[State -1]
type = ChangeState
value = 352
triggerall = command = "Arma x3"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Arma x4

[State -1]
type = ChangeState
value = 353
triggerall = command = "Arma x4"
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Arma x5

[State -1]
type = ChangeState
value = 354
triggerall = command = "Arma x5"
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Arma x6

[State -1]
type = ChangeState
value = 355
triggerall = command = "Arma x6"
triggerall = power >= 3000
trigger1 = statetype= S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Arma x7

[State -1]
type = ChangeState
value = 356
triggerall = command = "Arma x7"
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Armas Combinadas

[State -1]
type = ChangeState
value = 357
triggerall = command = "Armas Combinadas"
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Cargar Ki

[State -1, cargar ki]
type = ChangeState
value = 500
triggerall = ctrl = 1
trigger1 = power < 3000
trigger1 = command = "charge"
trigger1 = command = "charge 1"
trigger1 = statetype = S

;---------------------------------------------------------------------------
