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

;-| IA |------------------------------------------------------

[Command]
name = "IA_1"
command = a,a,a,a,a,a,a,a,a
time = 1

[Command]
name = "IA_2"
command = b,b,b,b,b,b,b,b,b
time = 1

[Command]
name = "IA_3"
command = a,b,b,b,b,b,b,b,b
time = 1

[Command]
name = "IA_4"
command = a,b,c,b,b,b,b,b,b
time = 1

[Command]
name = "IA_5"
command = a,b,c,x,b,b,b,b,b
time = 1

[Command]
name = "IA_6"
command = a,b,c,x,y,b,b,b,b
time = 1

[Command]
name = "IA_7"
command = a,b,c,x,y,z,b,b,b
time = 1

[Command]
name = "IA_8"
command = a,b,c,x,y,z,a,b,b
time = 1

[Command]
name = "IA_9"
command = a,b,c,x,y,z,a,b,c
time = 1

[Command]
name = "IA_10"
command = x,b,c,x,y,z,a,b,c
time = 1

;-| power normal attacks |-----------------------------------------------------

[Command]
name = "SupJumpF"
command = D, F, a

[Command]
name = "SupColB"
command = D, F, b

[Command]
name = "beam"
command = D, F, c

;-| Double Tap |-----------------------------------------------------------
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

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery"
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
command = /x
time = 1
[Command]
name = "hold_y"
command = /y
time = 1
[Command]
name = "hold_z"
command = /z
time = 1
[Command]
name = "hold_a"
command = /a
time = 1
[Command]
name = "hold_b"
command = /b
time = 1
[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_start"
command = /s
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

;===========================================================================
[Statedef -1]
;===========================================================================
;This is not a move, but it sets up var(1) to be 1 if conditions are right
[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(1) = 0

[State -1, Combo condition Check]
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact
var(1) = 1

;------------------------------
[State -1, AI]
type = VarSet
trigger1 = command = "IA_1"
trigger2 = command = "IA_2"
trigger3 = command = "IA_3"
trigger4 = command = "IA_4"
trigger5 = command = "IA_5"
trigger6 = command = "IA_6"
trigger7 = command = "IA_7"
trigger8 = command = "IA_8"
trigger9 = command = "IA_9"
trigger10 = command = "IA_10"
var(9) = 1

;===========================================================================
;IA BARDOCK OHZARU ============================================================
;===========================================================================

;beam Bardock Ohzaru
[State -1, Beam Bardock Ohzaru]
type = ChangeState
value = 3912
triggerall = power >= 1500
triggerall = stateno = [3901,3903]
triggerall = random = [1,25]
triggerall = P2bodydist X >= 20
triggerall = var(9) = 1
trigger1 = roundstate = 2

;SupJumpF Bardock Ohzaru
[State -1, SupJumpF Bardock Ohzaru]
type = ChangeState
value = 3920
triggerall = stateno = [3901,3903]
triggerall = random = [150,200]
triggerall = P2bodydist X >= 100
triggerall = var(9) = 1
trigger1 = roundstate = 2

;Punch a Bardock Ohzaru
[State -1, Punch a Bardock Ohzaru]
type = ChangeState
value = 3908
triggerall = stateno = [3901,3903]
triggerall = random = [175,300]
triggerall = P2bodydist X <= 100 && P2bodydist X >= 0
triggerall = var(9) = 1
trigger1 = roundstate = 2

;Punch b Bardock Ohzaru
[State -1, Punch b Bardock Ohzaru]
type = ChangeState
value = 3909
triggerall = stateno = [3901,3903]
triggerall = random = [70,120]
triggerall = P2bodydist X <= 100 && P2bodydist X >= 0
triggerall = var(9) = 1
trigger1 = roundstate = 2

;fireball Bardock Ohzaru
[State -1, Fireball Bardock Ohzaru]
type = ChangeState
value = 3911
triggerall = power >= 250
triggerall = stateno = [3901,3903]
triggerall = random = [300,370]
triggerall = P2bodydist X <= 100 && P2bodydist X >= 0
triggerall = var(9) = 1
trigger1 = roundstate = 2

;Punch x Bardock Ohzaru
[State -1, Punch x Bardock Ohzaru]
type = ChangeState
value = 3906
triggerall = stateno = [3901,3903]
triggerall = random = [900,999]
triggerall = P2bodydist X <= 100 && P2bodydist X >= 0
triggerall = var(9) = 1
trigger1 = roundstate = 2

;Punch y Bardock Ohzaru
[State -1, Punch y Bardock Ohzaru]
type = ChangeState
value = 3907
triggerall = stateno = [3901,3903]
triggerall = random = [85,160]
triggerall = P2bodydist X <= 100 && P2bodydist X >= 0
triggerall = var(9) = 1
trigger1 = roundstate = 2

;Punch z Bardock Ohzaru
[State -1, Punch z Bardock Ohzaru]
type = ChangeState
value = 3914
triggerall = stateno = [3901,3903]
triggerall = random = [275,350]
triggerall = P2bodydist X <= 100 && P2bodydist X >= 0
triggerall = var(9) = 1
trigger1 = roundstate = 2

;Super Jump Bardock Ohzaru
[State -1, Super Jump Bardock Ohzaru]
type = ChangeState
value = 3913
triggerall = stateno = 3901
triggerall = random = [85,100]
triggerall = P2bodydist X >= 50
triggerall = var(9) = 1
trigger1 = roundstate = 2

;Turn Bardock Ohzaru
[State -1, Turn Bardock Ohzaru]
type = ChangeState
value = 3903
triggerall = stateno = 3901
triggerall = random = [645,775]
triggerall = P2bodydist X <= 0
triggerall = var(9) = 1
trigger1 = roundstate = 2

;Taunt Bardock Ohzaru
[State -1, Taunt Bardock Ohzaru]
type = ChangeState
value = 3919
triggerall = stateno = 3901
triggerall = random = [275,325]
triggerall = P2bodydist X <= 100 && P2bodydist X >= 0
triggerall = var(9) = 1
trigger1 = roundstate = 2

;===========================================================================
;BARDOCK OHZARU =============================================================
;===========================================================================

;beam Bardock Ohzaru
[State -1, Beam Bardock Ohzaru]
type = ChangeState
value = 3912
triggerall = power >= 1500
triggerall = stateno = [3901,3903]
triggerall = roundstate = 2
trigger1 = command = "beam"

;SupJumpF Bardock Ohzaru
[State -1, SupJumpF Bardock Ohzaru]
type = ChangeState
value = 3920
triggerall = stateno = [3901,3903]
triggerall = roundstate = 2
trigger1 = command = "SupJumpF"

;Punch a Bardock Ohzaru
[State -1, Punch a Bardock Ohzaru]
type = ChangeState
value = 3908
triggerall = stateno = [3901,3903]
triggerall = roundstate = 2
trigger1 = command = "a"

;Punch b Bardock Ohzaru
[State -1, Punch b Bardock Ohzaru]
type = ChangeState
value = 3909
triggerall = stateno = [3901,3903]
triggerall = roundstate = 2
trigger1 = command = "b"

;fireball Bardock Ohzaru
[State -1, Fireball Bardock Ohzaru]
type = ChangeState
value = 3911
triggerall = power >= 250
triggerall = stateno = [3901,3903]
triggerall = roundstate = 2
trigger1 = command = "c"

;Punch x Bardock Ohzaru
[State -1, Punch x Bardock Ohzaru]
type = ChangeState
value = 3906
triggerall = stateno = [3901,3903]
triggerall = roundstate = 2
trigger1 = command = "x"

;Punch y Bardock Ohzaru
[State -1, Punch y Bardock Ohzaru]
type = ChangeState
value = 3907
triggerall = stateno = [3901,3903]
triggerall = roundstate = 2
trigger1 = command = "y"

;Punch z Bardock Ohzaru
[State -1, Punch z Bardock Ohzaru]
type = ChangeState
value = 3914
triggerall = stateno = [3901,3903]
triggerall = roundstate = 2
trigger1 = command = "z"

;Super Jump Bardock Ohzaru
[State -1, Super Jump Bardock Ohzaru]
type = ChangeState
value = 3913
triggerall = stateno = 3901 && roundstate = 2
trigger1 = command = "superjump"

;Super Jump Bardock Ohzaru
[State -1, Jump Bardock Ohzaru]
type = ChangeState
value = 3913
triggerall = stateno = 3901 && roundstate = 2
trigger1 = command = "superjumpF"

;Super Jump Bardock Ohzaru
[State -1, Jump Bardock Ohzaru]
type = ChangeState
value = 3913
triggerall = stateno = 3901 && roundstate = 2
trigger1 = command = "superjumpB"

;Jump Bardock Ohzaru
[State -1, Jump Bardock Ohzaru]
type = ChangeState
value = 3904
triggerall = stateno = 3901 && roundstate = 2
trigger1 = command = "holdup"

;Walk Back Bardock Ohzaru
[State -1, Walk Bardock Ohzaru]
type = ChangeState
value = 3902
triggerall = stateno = 3901 && roundstate = 2
trigger1 = command = "holdfwd" && command != "holdup"

;Turn Bardock Ohzaru
[State -1, Turn Bardock Ohzaru]
type = ChangeState
value = 3903
triggerall = stateno = 3901 && roundstate = 2
trigger1 = command = "holdback"

;Taunt Bardock Ohzaru
[State -1, Taunt Bardock Ohzaru]
type = ChangeState
value = 3919
triggerall = stateno = 3901 && roundstate = 2
trigger1 = command = "start"

;===========================================================================
;IA RADITZ OHZARU =============================================================
;===========================================================================

;beam Raditz Ohzaru
[State -1, Beam Raditz Ohzaru]
type = ChangeState
value = 4012
triggerall = power >= 1000
triggerall = stateno = [4001,4003]
triggerall = random = [1,25]
triggerall = P2bodydist X >= 20
triggerall = var(9) = 1
trigger1 = roundstate = 2

;SupColB Raditz Ohzaru
[State -1, SupColB Raditz Ohzaru]
type = ChangeState
value = 4020
triggerall = power >= 500
triggerall = stateno = [4001,4003]
triggerall = random = [150,200]
triggerall = P2bodydist X <= 100 && P2bodydist X >= 0
triggerall = var(9) = 1
trigger1 = roundstate = 2

;Punch a Raditz Ohzaru
[State -1, Punch a Raditz Ohzaru]
type = ChangeState
value = 4008
triggerall = stateno = [4001,4003]
triggerall = random = [175,300]
triggerall = P2bodydist X <= 100 && P2bodydist X >= 0
triggerall = var(9) = 1
trigger1 = roundstate = 2

;Punch b Raditz Ohzaru
[State -1, Punch b Raditz Ohzaru]
type = ChangeState
value = 4009
triggerall = stateno = [4001,4003]
triggerall = random = [70,120]
triggerall = P2bodydist X <= 100 && P2bodydist X >= 0
triggerall = var(9) = 1
trigger1 = roundstate = 2

;fireball Raditz Ohzaru
[State -1, Fireball Raditz Ohzaru]
type = ChangeState
value = 4011
triggerall = power >= 350
triggerall = stateno = [4001,4003]
triggerall = random = [300,370]
triggerall = P2bodydist X <= 100 && P2bodydist X >= 0
triggerall = var(9) = 1
trigger1 = roundstate = 2

;Punch x Raditz Ohzaru
[State -1, Punch x Raditz Ohzaru]
type = ChangeState
value = 4006
triggerall = stateno = [4001,4003]
triggerall = random = [900,999]
triggerall = P2bodydist X <= 100 && P2bodydist X >= 0
triggerall = var(9) = 1
trigger1 = roundstate = 2

;Punch y Raditz Ohzaru
[State -1, Punch y Raditz Ohzaru]
type = ChangeState
value = 4007
triggerall = stateno = [4001,4003]
triggerall = random = [85,160]
triggerall = P2bodydist X <= 100 && P2bodydist X >= 0
triggerall = var(9) = 1
trigger1 = roundstate = 2

;Punch z Raditz Ohzaru
[State -1, Punch z Raditz Ohzaru]
type = ChangeState
value = 4014
triggerall = stateno = [4001,4003]
triggerall = random = [275,350]
triggerall = P2bodydist X <= 100 && P2bodydist X >= 0
triggerall = var(9) = 1
trigger1 = roundstate = 2

;Super Jump Raditz Ohzaru
[State -1, Super Jump Raditz Ohzaru]
type = ChangeState
value = 4013
triggerall = stateno = 4001
triggerall = random = [85,100]
triggerall = P2bodydist X >= 50
triggerall = var(9) = 1
trigger1 = roundstate = 2

;Turn Raditz Ohzaru
[State -1, Turn Raditz Ohzaru]
type = ChangeState
value = 4003
triggerall = stateno = 4001
triggerall = random = [645,775]
triggerall = P2bodydist X <= 0
triggerall = var(9) = 1
trigger1 = roundstate = 2

;Taunt Raditz Ohzaru
[State -1, Taunt Raditz Ohzaru]
type = ChangeState
value = 4019
triggerall = stateno = 4001
triggerall = random = [275,325]
triggerall = P2bodydist X <= 100 && P2bodydist X >= 0
triggerall = var(9) = 1
trigger1 = roundstate = 2


;===========================================================================
;RADITZ OHZARU =============================================================
;===========================================================================

;beam Raditz Ohzaru
[State -1, Beam Raditz Ohzaru]
type = ChangeState
value = 4012
triggerall = power >= 1000
triggerall = stateno = [4001,4003]
triggerall = roundstate = 2
trigger1 = command = "beam"

;SupColB Raditz Ohzaru
[State -1, SupColB Raditz Ohzaru]
type = ChangeState
value = 4020
triggerall = power >= 500
triggerall = stateno = [4001,4003]
triggerall = roundstate = 2
trigger1 = command = "SupColB"

;Punch a Raditz Ohzaru
[State -1, Punch a Raditz Ohzaru]
type = ChangeState
value = 4008
triggerall = stateno = [4001,4003]
triggerall = roundstate = 2
trigger1 = command = "a"

;Punch b Raditz Ohzaru
[State -1, Punch b Raditz Ohzaru]
type = ChangeState
value = 4009
triggerall = stateno = [4001,4003]
triggerall = roundstate = 2
trigger1 = command = "b"

;fireball Raditz Ohzaru
[State -1, Fireball Raditz Ohzaru]
type = ChangeState
value = 4011
triggerall = power >= 350
triggerall = stateno = [4001,4003]
triggerall = roundstate = 2
trigger1 = command = "c"

;Punch x Raditz Ohzaru
[State -1, Punch x Raditz Ohzaru]
type = ChangeState
value = 4006
triggerall = stateno = [4001,4003]
triggerall = roundstate = 2
trigger1 = command = "x"

;Punch y Raditz Ohzaru
[State -1, Punch y Raditz Ohzaru]
type = ChangeState
value = 4007
triggerall = stateno = [4001,4003]
triggerall = roundstate = 2
trigger1 = command = "y"

;Punch z Raditz Ohzaru
[State -1, Punch z Raditz Ohzaru]
type = ChangeState
value = 4014
triggerall = stateno = [4001,4003]
triggerall = roundstate = 2
trigger1 = command = "z"

;Super Jump Raditz Ohzaru
[State -1, Super Jump Raditz Ohzaru]
type = ChangeState
value = 4013
triggerall = stateno = 4001 && roundstate = 2
trigger1 = command = "superjump"

;Super Jump Raditz Ohzaru
[State -1, Jump Raditz Ohzaru]
type = ChangeState
value = 4013
triggerall = stateno = 4001 && roundstate = 2
trigger1 = command = "superjumpF"

;Super Jump Raditz Ohzaru
[State -1, Jump Raditz Ohzaru]
type = ChangeState
value = 4013
triggerall = stateno = 4001 && roundstate = 2
trigger1 = command = "superjumpB"

;Jump Raditz Ohzaru
[State -1, Jump Raditz Ohzaru]
type = ChangeState
value = 4004
triggerall = stateno = 4001 && roundstate = 2
trigger1 = command = "holdup"

;Walk Back Raditz Ohzaru
[State -1, Walk Raditz Ohzaru]
type = ChangeState
value = 4002
triggerall = stateno = 4001 && roundstate = 2
trigger1 = command = "holdfwd" && command != "holdup"

;Turn Raditz Ohzaru
[State -1, Turn Raditz Ohzaru]
type = ChangeState
value = 4003
triggerall = stateno = 4001 && roundstate = 2
trigger1 = command = "holdback"

;Taunt Raditz Ohzaru
[State -1, Taunt Raditz Ohzaru]
type = ChangeState
value = 4019
triggerall = stateno = 4001 && roundstate = 2
trigger1 = command = "start"

;PowerAdd
[State -1, PowerAdd]
type = PowerAdd
triggerall = roundstate = 2
trigger1 = time%2
value = 12

