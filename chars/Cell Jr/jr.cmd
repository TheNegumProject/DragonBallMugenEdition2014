[command]
name = "kamehameha"
command = D,DF,F,c
time = 30

[command]
name = "masonkapo"
command = D,DF,F,x
time = 30

[Command]
name = "kienzan"     ;Required (do not remove)
command = D,DB,B,c
time = 30

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

;---------------------------------------------------------------------------
[Command]
name="chargue 1"
Command=/a
time=1

[Command]
name="chargue 2"
Command=/x
time=1

; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;kamehameha peque
[State -1, kamehameha peque]
type = ChangeState
value = 1400
triggerall = command = "kamehameha"
trigger1 = (statetype = s) && ctrl
trigger1 = power >= 1000

;masonkapo
[State -1, masonkapo]
type = ChangeState
value = 1300
triggerall = command = "masonkapo"
trigger1 = (statetype = s) && ctrl
trigger1 = power >= 500

; kienzan
[State -1, kienzan]
type = ChangeState
value = 1200
triggerall = command = "kienzan"
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = power >= 500
numproj < 1

;Taioken
[State -1,taioken]
type=ChangeState
value= 1100
triggerall=Command = "z"
triggerall= p2movetype != H
trigger1= power >= 50
trigger1=statetype !=A
trigger1=ctrl

;kiball
[State -1, kiball]
type = ChangeState
value = 1000
triggerall = command = "c"
triggerall = power >= 50
trigger1 = (statetype = s) && ctrl

;pu en el aire
[State -1, pu en el aire]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = (statetype = a) && ctrl

;patada agachado
[State -1, patada agachado]
type = ChangeState
value = 430
triggerall = command = "a"
trigger1 = (statetype = c) && ctrl

;pu agachado 2
[State -1, pu agachado 2]
type = ChangeState
value = 410
triggerall = command = "y"
trigger1 = (statetype = c) && ctrl

;pu agachado 1
[State -1, pu agachado 1]
type = ChangeState
value = 400
triggerall = command = "x"
trigger1 = (statetype = c) && ctrl

;patada liu kang
[State -1, patada liu kang]
type = ChangeState
value = 630
triggerall = command = "b"
trigger1 = (statetype = a) && ctrl

;patada 2
[State -1, patada 2]
type = ChangeState
value = 240
triggerall = command = "b"
trigger1 = (statetype = s) && ctrl

[State -1]
type = ChangeState
value = 250
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 240
trigger2 = movecontact

;patada en el aire
[State -1, patada en el aire]
type = ChangeState
value = 610
triggerall = command = "a"
trigger1 = (statetype = a) && ctrl

;patada 1
[State -1, patada 1]
type = ChangeState
value = 230
triggerall = command = "a"
trigger1 = (statetype = s) && ctrl

;pu 2
[State -1, pu 2]
type = ChangeState
value = 210
triggerall = command = "y"
trigger1 = (statetype = s) && ctrl

;combo
[State -1]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact

;pu 1
[State -1, pu 1]
type = ChangeState
value = 200
triggerall = command = "x"
trigger1 = (statetype = s) && ctrl

[State -1,Z-cargar ki]
type=ChangeState
value= 500
triggerall=command  = "chargue 1" && command = "chargue 2"
trigger1=statetype !=A
trigger1=ctrl

;===========================================================================
;---------------------------------------------------------------------------
;Smash Kung Fu Upper (uses one super bar)

;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Taunt
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl



