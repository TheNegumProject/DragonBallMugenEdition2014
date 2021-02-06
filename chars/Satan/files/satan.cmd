
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
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1


;-| Dir + Button |-----------------------------------------------------------
[Command]
name = "Fc"
command = F, c
time = 1

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
name = "superjump"     ;Required (do not remove)
command = $D, U
time = 10

[Command]
name = "superjumpforward"     ;Required (do not remove)
command = $D, UF
time = 10

[Command]
name = "superjumpbackward"     ;Required (do not remove)
command = $D, UB
time = 10

[Command]
name = "tripleS"
command = s,s,s
time = 20

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x
time = 1
[Command]
name = "recovery";Required (do not remove)
command = y
time = 1
[Command]
name = "recovery";Required (do not remove)
command = z
time = 1
[Command]
name = "recovery";Required (do not remove)
command = a
time = 1
[Command]
name = "recovery";Required (do not remove)
command = b
time = 1
[Command]
name = "recovery";Required (do not remove)
command = c
time = 1

[Command]
name = "xa"
command = x+a
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

[Command]
name = "down_y"
command = /$D,y
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
name = "lp_lk"
command = x+a
time = 10

[Command]
name = "F"
command = F
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
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Command]
name = "holdup";Required (do not remove)
command = /$U
time = 1

;===================< DIR >===================

[Command]
name = "fwd"
command = F
time = 1
[Command]
name = "back"
command = B
time = 1
[Command]
name = "up"
command = U
time = 1
[Command]
name = "down"
command = D
time = 1

;-| Hold Button |--------------------------------------------------------
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
name = "hold_s"
command = /s
time = 1

[Command]
name = "hold-c"
command = /$c
time = 1
 
[Command]
name = "hold-z"
command = /$z
time = 1





[Statedef -1]

;===========================================================================
; SUPERS
;===========================================================================

; Cameras !!!
[State -1, Cameras]
type = ChangeState
triggerall= var(59)<=0
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100 || stateno = 101
value = 2000

; Coup de grace
[State -1, Coup de grace]
type = ChangeState
triggerall= var(59)<=0
triggerall = roundstate = 2
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100 || stateno = 101
value = 2200

; Shun Satan Satsu
[State -1, SSS]
type = ChangeState
triggerall= var(59)<=0
triggerall = roundstate = 2
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100 || stateno = 101
value = 2300

;===========================================================================
; NORMALS
;===========================================================================

; Stand Right Punch
[State -1, Stand Right Punch]
type = ChangeState
triggerall= var(59)<=0
triggerall = roundstate = 2
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100 || stateno = 101
value = 200

; Stand Left Punch
[State -1, Stand Left Punch]
type = ChangeState
triggerall= var(59)<=0
triggerall = roundstate = 2
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100 || stateno = 101
value = 210

; Dynamite Kick
[State -1, Dynamite Kick]
type = ChangeState
triggerall= var(59)<=0
triggerall = roundstate = 2
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100 || stateno = 101
value = 220

; Aerial Dynamite Kick
[State -1, Aerial Dynamite Kick]
type = ChangeState
triggerall= var(59)<=0
triggerall = roundstate = 2
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
value = 221

;===========================================================================
; SYSTEM
;===========================================================================

; Taunt
[State -1, Taunt]
type = ChangeState
triggerall= var(59)<=0
triggerall = roundstate = 2
triggerall = command = "s" && stateno!=195
trigger1 = statetype != A
trigger1 = ctrl
value = 195

; Run Fwd
[State -1, Run Fwd]
type = ChangeState
triggerall= var(59)<=0
triggerall = roundstate = 2
trigger1 = command = "FF"
trigger1 = statetype = S && ctrl
trigger1 = roundstate=2 && (stateno!=[100,106])
value = 100

; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall= var(59)<=0
triggerall = roundstate = 2
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
