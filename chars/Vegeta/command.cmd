; ______________________________________________
;|Vegeta                                        |
;|Character Made by: Duende Macabro  ::..       |
;|Version: Beta 0.30 - 24/10/2005 ::..          |
;|Started at 25/09/2005 ::..                    |
;|Contact:                                      |
;|weaponx_nirvana@yahoo.com.br                  |
;|http://geocities.yahoo.com.br/rickiecreations |
;|______________________________________________|


;=====================|
;--[ Remap buttons ]--|
;=====================|

[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;=====================|
;--[ Defaut Values ]--|
;=====================|

[Defaults]
command.time = 20
command.buffer.time = 1

;============|
;--[ A.I. ]--|
;============|

[Command]
name = "AI_01"
command = x, x, x, x, x
time = 1
[Command]
name = "AI_02"
command = y, y, y, y, y
time = 1
[Command]
name = "AI_03"
command = z, z, z, z, z
time = 1
[Command]
name = "AI_04"
command = a, a, a, a, a
time = 1
[Command]
name = "AI_05"
command = b, b, b, b, b
time = 1
[Command]
name = "AI_06"
command = c, c, c, c, c
time = 1
[Command]
name = "AI_07"
command = U, U, U, U, U
time = 1
[Command]
name = "AI_08"
command = D, D, D, D, D
time = 1
[Command]
name = "AI_09"
command = x, a, x, a, x
time = 1
[Command]
name = "AI_10"
command = y, b, y, b, y
time = 1
[Command]
name = "AI_11"
command = z, c, z, c, z
time = 1
[Command]
name = "AI_12"
command = a, x, a, x, a
time = 1
[Command]
name = "AI_13"
command = b, y, b, y, b
time = 1
[Command]
name = "AI_14"
command = c, z, c, z, c
time = 1
[Command]
name = "AI_15"
command = U, D, U, D, U
time = 1
[Command]
name = "AI_16"
command = D, U, D, U, D
time = 1

;=======================|
;--[ Hiper Moves qcbf ]--|
;=======================|

[Command]
name = "qcbf_a"
command = ~D, DB, B, F, a

[Command]
name = "qcbf_b"
command = ~D, DB, B, F, b

[Command]
name = "qcbf_c"
command = ~D, DB, B, F, c

[Command]
name = "qcbf_x"
command = ~D, DB, B, F, x

[Command]
name = "qcbf_y"
command = ~D, DB, B, F, y

[Command]
name = "qcbf_z"
command = ~D, DB, B, F, z

;=======================|
;--[ Super Moves qcfb ]--|
;=======================|

[Command]
name = "qcfb_a"
command = ~D, DF, F, B, a

[Command]
name = "qcfb_b"
command = ~D, DF, F, B, b

[Command]
name = "qcfb_c"
command = ~D, DF, F, B, c

[Command]
name = "qcfb_x"
command = ~D, DF, F, B, x

[Command]
name = "qcfb_y"
command = ~D, DF, F, B, y

[Command]
name = "qcfb_z"
command = ~D, DF, F, B, z

;=====================|
;--[ Special Moves ]--|
;=====================|

;--[ qcb ]--|
[Command]
name = "qcb_a"
command = ~D, DB, B, a
[Command]
name = "qcb_b"
command = ~D, DB, B, b
[Command]
name = "qcb_c"     
command = ~D, DB, B, c
[Command]
name = "qcb_x"
command = ~D, DB, B, x
[Command]
name = "qcb_y"
command = ~D, DB, B, y
[Command]
name = "qcb_z"
command = ~D, DB, B, z

;--[ qcf ]--|
[Command]
name = "qcf_a"
command = ~D, DF, F, a
[Command]
name = "qcf_b"
command = ~D, DF, F, b
[Command]
name = "qcf_c"     
command = ~D, DF, F, c
[Command]
name = "qcf_x"     
command = ~D, DF, F, x
[Command]
name = "qcf_y"     
command = ~D, DF, F, y
[Command]
name = "qcf_z"     
command = ~D, DF, F, z


;==================|
;--[ Double tap ]--|
;==================|

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
command = B, B
time = 10
[Command]
name = "DD"     
command = B, B
time = 10

;==================|
;--[ 2/3 button ]--|
;==================|

[Command]
name = "recovery"
command = x+y
time = 1
[Command]
name = "zanzoken"
command = z+c
time = 1
[Command]
name = "fly"
command = y+b
time = 1
[Command]
name = "UP"
command = U, U


;====================|
;--[ Dir + button ]--|
;====================|

[Command]
name = "down_a"
command = /$D,a
time = 1
[Command]
name = "down_b"
command = /$D,b
time = 1

;=====================|
;--[ Single Button ]--|
;=====================|

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

;================|
;--[ Hold Dir ]--|
;================|

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

;===================|
;--[ Hold Button ]--|
;===================|

[Command]
name = "hold_x"
command = /y
time = 1
[Command]
name = "hold_y"
command = /x
time = 1
[Command]
name = "hold_z"
command = /z
time = 1
[Command]
name = "hold_a"
command = /b
time = 1
[Command]
name = "hold_b"
command = /a
time = 1
[Command]
name = "hold_c"
command = /c
time = 1
[Command]
name = "hold_start"
command = /s
time = 1
[Command]
name = "fwd"
command = F
time = 1

;==================|
;--[ Super Jump ]--|
;==================|

[command]
name = "superjump"
command = ~$D,U
time = 15
[command]
name = "superjumpF"
command = ~$D,UF
time = 15
[command]
name = "superjumpB"
command = ~$D,UB
time = 15


;===========================================================================|
;=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-< Statedef -1 >==-=-=-=-=-=-=-=-=-=-=-=--=-=-|
;===========================================================================|
[Statedef -1]

;============|
;--[ A.I. ]--|
;============|

[State -1]
type = Null
trigger1 = command = "AI_01" || command = "AI_02" || command = "AI_03" || command = "AI_04"
trigger2 = command = "AI_05" || command = "AI_06" || command = "AI_07" || command = "AI_08"
trigger3 = command = "AI_09" || command = "AI_10" || command = "AI_11" || command = "AI_12"
trigger4 = command = "AI_13" || command = "AI_14" || command = "AI_15" || command = "AI_16"
v = 59
value = 1

;===================|
;--[ Hipers/Supers qcfb ]--|
;===================|

;Super Big Bang Attack
;-------------------------
[State -1, Super Big Bang Attack]
type = ChangeState
value = 2200
triggerall = (command = "qcfb_x") && (command != "holddown") && (Power >= 3000)
trigger1 = (statetype = S && ctrl)

;===================|
;--[ Hipers/Supers qcbf ]--|
;===================|

;Final Flash
;-------------------------
[State -1, Final Flash]
type = ChangeState
value = 2100
triggerall = (command = "qcbf_z") && (command != "holddown") && Power >= 2000
trigger1 = (statetype = S && ctrl) || statetype = A

;Big bang Attack
;-------------------------
[State -1, Big Bang Attack]
type = ChangeState
value = 2000
triggerall = (command = "qcbf_x") && (command != "holddown") && (Power > 1000)
trigger1 = (statetype = S && ctrl) || statetype = A

;Garlick Gun
;-------------------------
[State -1, Garlick Gun]
type = ChangeState
value = 2010
triggerall = (command = "qcbf_y") && (command != "holddown") && (Power > 1000)
trigger1 = (statetype = S && ctrl) || statetype = A

;===================|
;--[ Specials qcb ]--|
;===================|

;-------------------------
;-------------------------

[State -1, Disco]
type = ChangeState
value = 1005
triggerall = (command = "qcb_a") && (command != "holddown") && (power > 500)
trigger1 = (statetype = S && ctrl) || statetype = A

[State -1, Ataque explosion piso]
type = ChangeState
value = 1003
triggerall = (command = "qcb_b") && (command != "holddown") && (power > 500)
trigger1 = (statetype = S && ctrl) || statetype = A

[State -1, Atornillador]
type = ChangeState
value = 1001
triggerall = (command = "qcb_c") && (command != "holddown") && (power > 500)
trigger1 = (statetype = S && ctrl) || statetype = A

[State -1, Bola electrica]
type = ChangeState
value = 1006
triggerall = (command = "qcb_x") && (command != "holddown") && (power >= 500)
trigger1 = (statetype = S && ctrl) || statetype = A

[State -1, Counter Attack]
type = ChangeState
value = 6000
triggerall = (command = "qcb_y") && (command != "holddown") && (power >= 2000)
trigger1 = (statetype = S && ctrl) || statetype = A

[State -1, Charge Ray]
type = ChangeState
value = 1004
triggerall = (command = "qcb_z") && (command != "holddown") && (power > 500)
trigger1 = (statetype = S && ctrl) || statetype = A

;================|
;--[ Specials qcf]--|
;================|

;Small Beam
;-------------------------
[State -1, Small Beam]
type = ChangeState
value = 1010
triggerall = (command = "qcf_c") && (command != "holddown") && (power > 100)
trigger1 = (statetype = S && ctrl) || statetype = A

;Secuencia 1
;-------------------------
[State -1, Secuencia 1]
type = ChangeState
value = 1050
triggerall = (command = "qcf_x") && (command != "holddown")
trigger1 = (statetype = S && ctrl) || statetype = A

;Secuencia 2
;-------------------------
[State -1, Secuencia 2]
type = ChangeState
value = 10001
triggerall = (command = "qcf_y") && (command != "holddown")
trigger1 = (statetype = S && ctrl) || statetype = A

;Secuencia 3
;-------------------------
[State -1, Secuencia 3]
type = ChangeState
value = 1020
triggerall = (command = "qcf_z") && (command != "holddown")
trigger1 = (statetype = S && ctrl) || statetype = A

;Secuencia 4
;-------------------------
[State -1, Secuencia 4]
type = ChangeState
value = 1052
triggerall = (command = "qcf_a") && (command != "holddown")
trigger1 = (statetype = S && ctrl) || statetype = A

;Secuencia 5
;-------------------------
[State -1, Secuencia 5]
type = ChangeState
value = 1054
triggerall = (command = "qcf_b") && (command != "holddown")
trigger1 = (statetype = S && ctrl) || statetype = A

;Chute duplo
;-------------------------
[State -1, Chute duplo]
type = Null
value = 1040
triggerall = (command = "qcb_a") && (command != "holddown")
trigger1 = (statetype = S && ctrl)

;=====================|
;--[ combos on move]--|
;=====================|

[State -1, X on move]
type = ChangeState
value = 10002
triggerall = command = "x" && p2bodydist X < 80
trigger1 = (ctrl) && (StateNo = 100 || stateno = 108)

[State -1, Y on move]
type = ChangeState
value = 10003
triggerall = command = "y" && p2bodydist X < 80
trigger1 = (ctrl) && (StateNo = 100 || stateno = 108)

[State -1, Z on move]
type = ChangeState
value = 10004
triggerall = command = "z" && p2bodydist X < 80
trigger1 = (ctrl) && (StateNo = 100 || stateno = 108)

[State -1, A on move]
type = ChangeState
value = 10005
triggerall = command = "a" && p2bodydist X < 80
trigger1 = (ctrl) && (StateNo = 100 || stateno = 108)

[State -1, B on move]
type = ChangeState
value = 10006
triggerall = command = "b" && p2bodydist X < 80
trigger1 = (ctrl) && (StateNo = 100 || stateno = 108)

;====================|
;--[ Miscelaneous ]--|
;====================|


;Run Fwd
;-------------------------
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = (command = "FF") && (statetype = S) && (ctrl)


;Run Back
;-------------------------
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = (command = "BB") && (statetype = S) && (ctrl)

;Taunt
;-------------------------
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = (statetype != A) && (ctrl)

;Power Charge
;-------------------------
[State -1, Power Charge]
type = ChangeState
value = 730
triggerall = (command = "hold_y" && command = "hold_b")
trigger1 = (statetype = S || statetype = A) && (ctrl) || (stateno = 107 && statetype = A)

;Zanzoken
;-------------------------
[State -1, Zanzoken]
type = ChangeState
value = 300
triggerall = (command = "zanzoken") && (command != "holdfwd") && (command != "holdback") && (stateno != 100) && (stateno != 109)
trigger1 = ctrl = 1 || (stateno = 107)

;Zanzoken adelante
;-------------------------
[State -1, Zanzoken adelante]
type = ChangeState
value = 7013
triggerall = (command = "holdfwd") && (command = "zanzoken") && (command != "holdback") && (stateno != 109)
trigger1 = ctrl = 1

;Zanzoken atras
;-------------------------
[State -1, Zanzoken atras]
type = ChangeState
value = 7014
triggerall = (command = "holdback") && (command = "zanzoken") && (command != "holdfwd") && (stateno != 100)
trigger1 = ctrl = 1

; Voar
;-------------------------
[State -1, Voar]
type = ChangeState
value = 1510
triggerall = command = "fly"
trigger1 = statetype != A && ctrl

; Super Jump
;-------------------------
[State -1, superjump cima]
type = changestate
triggerall = command = "superjump" && statetype!= A
trigger1 = ctrl = 1
value = 7000
[State -1, superjump frente]
type=changestate
triggerall = command = "superjumpF" && statetype != A
trigger1 = ctrl = 1
value = 7002
[State -1,superjump tras]
type = changestate
triggerall = command = "superjumpB" && statetype != A
trigger1 = ctrl = 1
value = 7004

;Air Run Fwd
[State -1, Air Run Fwd]
type = ChangeState
value = 108
trigger1 = (command = "FF") && (statetype = A) && (ctrl)

;Air Run Back
[State -1, Air Run Back]
type = ChangeState
value = 110
trigger1 = (command = "BB") && (statetype = A) && (ctrl)

; Boost Mode
[State -1, Boots up]
type = changestate
triggerall = command = "UP" && statetype = A
trigger1 = ctrl = 1 || stateno = 600 || stateno = 610 || stateno = 630 || stateno = 640
value = 112

; Parry
;-------------------------
[State -1, ParryStand]
type = hitoverride
triggerall = command = "fwd"
trigger1 = ctrl && statetype!=A
trigger2 = stateno = [150,151]
trigger3 = stateno = 500
attr = SA,NA,SA,HA,NP,SP,HP
stateno = 500
time = ifelse((stateno=[500,502]),4,6)
ignorehitpause = 1

;Throw
;-------------------------
[State -1, Throw]
type = Null ;ChangeState
value = 800
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;Secuencias
;-------------------------Secuencias
[State -1, Secuencia X]
type = ChangeState
value = 210
triggerall = command = "x"
trigger1 = (statetype = S && ctrl) && MoveHit
trigger2 = StateNo = 200

[State -1, Secuencia Y]
type = ChangeState
value = 220
triggerall = command = "y"
trigger1 = (statetype = S && ctrl) && MoveHit
trigger2 = StateNo = 210

[State -1, Secuencia Z]
type = ChangeState
value = 250
triggerall = command = "z"&& StateNo != 7011
trigger1 = (statetype = S && ctrl) && MoveHit
trigger2 = StateNo = 220 && movecontact = 1

[State -1, PowerPunch]
type = ChangeState
value = 7012
triggerall = command = "z"
trigger1 =  (statetype = S && ctrl) && StateNo = 7011 && movecontact = 1

[State -1, Secuencia A]
type = ChangeState
value = 240
triggerall = command = "a"
trigger1 = (statetype = S && ctrl) && MoveHit
trigger2 = StateNo = 230

[State -1, Secuencia B]
type = ChangeState
value = 440
triggerall = command = "b"
trigger1 = (statetype = S && ctrl) && MoveHit
trigger2 = StateNo = 240

[State -1, Secuencia C]
type = ChangeState
value = 1000
triggerall = (command = "c") && (power > 100)
trigger1 = (statetype = S && ctrl) && MoveHit
trigger2 = StateNo = 250
trigger3 = StateNo = 220

;====================|
;--[ Normal moves ]--|
;====================|

;Stand Light Punch
;-------------------------
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = (command = "x") && (command != "holddown") && StateNo != 100
trigger1 = (statetype = S && ctrl) || stateno = 107

;Stand Medium Punch
;-------------------------
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = (command = "y") && (command != "holddown")
trigger1 = (statetype = S && ctrl) || stateno = 107
trigger2 = (StateNo = 200 || StateNo = 230) && MoveHit

;Stand Strong Punch
;-------------------------
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = (command = "z") && (command != "holddown")
trigger1 = (statetype = S && ctrl) || stateno = 107
trigger2 = (StateNo = 210 || StateNo = 240) && MoveHit

;Stand Light Kick
;-------------------------
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = (command = "a") && (command != "holddown")
trigger1 = (statetype = S && ctrl) || stateno = 107
trigger2 = StateNo = 200 && MoveHit

;Standing Medium Kick
;-------------------------
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = (command = "b") && (command != "holddown")
trigger1 = (statetype = S && ctrl) || stateno = 107
trigger2 = (StateNo = 200 || StateNo = 210 || StateNo = 230) && MoveHit

;Small Shot
;-------------------------
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = (command = "c") && (command != "holddown") && (power > 100)
trigger1 = statetype = S && statetype != A && ctrl = 1 && stateno != 1500 && stateno != 50 || stateno = 107
trigger2 = (StateNo = 210 || StateNo = 240 || StateNo = 220) && MoveHit
trigger3 = StateNo = 1000

;Crouching Light Punch
;-------------------------
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = (command = "x" && command = "holddown")
trigger1 = (statetype = C && ctrl)
trigger2 = (StateNo = 400 || StateNo = 430) && MoveHit
trigger3 = StateNo = 200 && movecontact = 1

;Crouching Medium Punch
;-------------------------
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
trigger1 = (statetype = C && ctrl)
trigger2 = (StateNo = 400 || StateNo = 430) && MoveHit
trigger3 = StateNo = 200
trigger3 = movecontact = 1

;Crouching Strong Punch
;-------------------------
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = (command = "z" && command = "holddown")
trigger1 = (statetype = C && ctrl)
trigger2 = (StateNo = 410 || StateNo = 440) && MoveHit

;Crouching Light Kick
;-------------------------
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = (command = "a" && command = "holddown")
trigger1 = (statetype = C && ctrl)
trigger2 = StateNo = 400 && MoveHit

;Crouching Strong Kick
;-------------------------
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = (command = "b" && command = "holddown")
trigger1 = (statetype = C && ctrl)
trigger2 = (StateNo = 400 || StateNo = 410 || StateNo = 430) && MoveHit

;Crouching Small Shot
;-------------------------
[State -1, Crouching Small Shot]
type = ChangeState
value = 450
triggerall = (command = "c" && command = "holddown")
trigger1 = (statetype = C && ctrl)
trigger2 = (StateNo = 410 || StateNo = 440 || StateNo = 420) && MoveHit


;Jump Light Punch
;-------------------------
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x" && stateno != 108 && stateno != 110 && stateno != 112
trigger1 = (statetype = A && ctrl)


;Jump Strong Punch
;-------------------------
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y" && stateno != 108 && stateno != 110 && stateno != 112
trigger1 = (statetype = A) && (ctrl)

;Jump Small Shot
;-------------------------
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z" && stateno != 112
trigger1 = (statetype = A && ctrl)

;Jump Light Kick
;-------------------------
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a" && stateno != 110 && stateno != 112
trigger1 = statetype = A && ctrl
trigger2 = StateNo = 640 && MoveHit

;Jump Strong Kick
;-------------------------
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b" && stateno != 110 && stateno != 112
trigger1 = (statetype = A && ctrl)
trigger2 = StateNo = 630 && MoveHit

;Down Small Shot
;-------------------------
[State -1, Down Small Shot]
type = ChangeState
value = 650
triggerall = command = "c" && power >= 250
trigger1 = (statetype = A && ctrl) && stateno != 650 || stateno = 620

;Down Small Shot
;-------------------------
[State -1, Down Small Shot2]
type = ChangeState
value = 655
triggerall = command = "c" && stateno = 650 && power >= 250
trigger1 = (statetype = A && ctrl)
