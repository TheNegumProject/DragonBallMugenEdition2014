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
;[Command]
;name = "Omega Blaster"
;command = ~D, $F, D, $F, c
;command.time = 15

[Command]
name = "Gigantic Meteor"
command = ~D, $F, D, $F, z
command.time = 30

[Command]
name = "Gigantic Hammer"
command =  ~D, $F, D, $F, a
command.time = 30
[Command]
name = "Gigantic Hammer"
command =  ~D, $F, D, $F, b
command.time = 30

[Command]
name = "Blaster Shell"
command = ~D, $F, D, $F, x
command.time = 30
[Command]
name = "Blaster Shell"
command = ~D, $F, D, $F, y
command.time = 30

;-| Special Motions |------------------------------------------------------
[Command]
name = "SB Combo 4" ;Ki Explosion
command = ~D, $U, z
command.time = 30
[Command]
name = "SB Combo 4" ;Ki Explosion
command = ~D, $U+z
command.time = 30

[Command]
name = "SB Combo 1" ; Closeline
command = ~60$B, F, a
command.time = 15
[Command]
name = "SB Combo 1a" ; Closeline Combo
command = ~B, F, a
command.time = 15
[Command]
name = "SB Combo 1" ; Closeline
command = ~60$B, F, b
command.time = 15
[Command]
name = "SB Combo 1a" ; Closeline Combo
command = ~B, F, b
command.time = 15

[Command]
name = "SB Combo 2" ; Dancing Kick
command = ~F,B,F, a
command.time = 20

[Command]
name = "SB Combo 2" ;Dancing Kick
command = ~F,B,F, b
command.time = 20

[Command]
name = "SB Combo 3" ;Gigantic Pressure
command = ~F, B, F, z
command.time = 15

[Command]
name = "SB Meteo"
command = ~F, $D, $B, x
command.time = 30

[Command]
name = "SB Meteo"
command = ~F, $D, $B, y
command.time = 30

[Command]
name = "Grab"
command = x+y
command.time = 1

[Command]
name = "MultiProj"
command = ~D, $B, z
command.time = 15

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
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
name = "holdc"
command = /$c
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
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = command_name
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

[State -1, Hide]
type = AssertSpecial
trigger1 = IsHelper(44304)
flag = invisible
flag2 = NoShadow
IgnoreHitPause = 1

[State -1, Reset]
type = SelfState
trigger1 = IsHelper(44304)
trigger1 = StateNo != [44304,44305]
value = 44304
IgnoreHitPause = 1

;===========================================================================
;===========================================================================
;Gigantic Hammer
[State -1, Gigantic Hammer]
type = ChangeState
value = 1100
triggerall = command = "Gigantic Hammer"
triggerall = command != "holddown"
triggerall = NumProjid(300) != 1
triggerall = NumProjid(310) != 5
triggerall = power >= 1000
triggerall = stateno !=280
trigger1 = statetype = S
trigger1 = ctrl
;===========================================================================
;Blaster Shell
[State -1, Blaster Shell]
type = ChangeState
value = 1200
triggerall = command = "Blaster Shell"
triggerall = command != "holddown"
triggerall = NumProjid(300) != 1
triggerall = NumProjid(310) != 5
triggerall = power >= 1000
triggerall = stateno !=280
trigger1 = statetype = S
trigger1 = ctrl
;===========================================================================
;Gigantic Meteor
[State -1, Gigantic Meteor]
type = ChangeState
value = 1000
triggerall = command = "Gigantic Meteor"
triggerall = command != "holddown"
triggerall = NumProjid(300) != 1
triggerall = NumProjid(310) != 3
triggerall = power >= 2000
triggerall = stateno !=280
trigger1 = statetype = S
trigger1 = ctrl
;===========================================================================
;Air Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 101
triggerall = statetype !=S && statetype !=C
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl

;Air Run Back
[State -1, Run Back]
type = ChangeState
value = 106
triggerall = statetype !=S && statetype !=C
trigger1 = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl

;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = statetype !=A && statetype !=C
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = statetype !=A && statetype !=C
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;===========================================================================
;SB Meteo
[State -1, SB Meteo]
type = ChangeState
value = 600
triggerall = command = "SB Meteo"
triggerall = stateno != [280,2000]
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 525 && statetime >=50
;===========================================================================
;SB Combo 1
[State -1, SB Combo 1]
type = ChangeState
value = 500
triggerall = command = "SB Combo 1"
triggerall = stateno != [280,2000]
trigger1 = statetype != A
trigger1 = statetype = S
trigger1 = ctrl
;===========================================================================
;SB Combo 2
[State -1, SB Combo 2]
type = ChangeState
value = 525
triggerall = command = "SB Combo 2"
triggerall = stateno != [280,2000]
trigger1 = statetype != A
trigger1 = statetype = S
trigger1 = ctrl
;===========================================================================
;SB Combo 3
[State -1, SB Combo 3]
type = ChangeState
value = 550
triggerall = command = "SB Combo 3"
triggerall = stateno != [280,2000]
trigger1 = statetype != A
trigger1 = statetype = S
trigger1 = ctrl
;===========================================================================
;SB Combo 4
[State -1, SB Combo 4]
type = ChangeState
value = 575
triggerall = command = "SB Combo 4"
triggerall = stateno != [280,2000]
triggerall = statetype != A
trigger1 = stateno = 40
trigger1 = statetype = S
;===========================================================================
;Charge
[State -1, Charge]
type = ChangeState
value = 280
triggerall = command = "c"
triggerall = stateno != [500,2000]
triggerall = command != "holddown"
triggerall = power != 3000
trigger1 = statetype = S
trigger1 = ctrl
;===========================================================================
;MultiProj
[State -1, MultiProj]
type = ChangeState
value = 310
triggerall = command = "MultiProj"
triggerall = command != "holddown"
triggerall = NumProjid(300) != 1
triggerall = NumProjid(310) != 5
trigger1 = statetype = S
trigger1 = ctrl

;Projectile
[State -1, Projectile]
type = ChangeState
value = 300
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = NumProjid(300) != 1
triggerall = NumProjid(310) != 5
trigger1 = statetype = S
trigger1 = ctrl
;===========================================================================
;Grab
[State -1, Grab]
type = ChangeState
value = 900
triggerall = command = "Grab"
triggerall = stateno != [280,2000]
triggerall = statetype != A
trigger1 = statetype = S
;===========================================================================
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 205
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 210
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 215
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 220
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 225
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 235
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 240
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 245
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 250
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 255
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
