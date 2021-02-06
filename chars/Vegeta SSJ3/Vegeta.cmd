; The CMD file.
;
; Two parts: 1. Command definition and  2. State entry
; (state entry is after the commands def section)
;
; 1. Command definition
; ---------------------
; Note: The commands are CASE-SENSITIVE, and so are the command names.
; The eight directions are:
;   B, DB, D, DF, F, UF, U, UB     (all CAPS)
;   corresponding to back, down-back, down, downforward, etc.
; The six buttons are:
;   a, b, c, x, y, z               (all lower case)
;   In default key config, abc are are the bottom, and xyz are on the
;   top row. For 2 button characters, we recommend you use a and b.
;   For 6 button characters, use abc for kicks and xyz for punches.
;
; Each [Command] section defines a command that you can use for
; state entry, as well as in the CNS file.
; The command section should look like:
;
;   [Command]
;   name = some_name
;   command = the_command
;   time = time (optional -- defaults to 15 if omitted)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas.
;   Directions and buttons can be preceded by special characters:
;   slash (/) - means the key must be held down
;          egs. command = /D       ;hold the down direction
;               command = /DB, a   ;hold down-back while you press a
;   tilde (~) - to detect key releases
;          egs. command = ~a       ;release the a button
;               command = ~D, F, a ;release down, press fwd, then a
;          If you want to detect "charge moves", you can specify
;          the time the key must be held down for (in game-ticks)
;          egs. command = ~30a     ;hold a for at least 30 ticks, then release
;   dollar ($) - Direction-only: detect as 4-way
;          egs. command = $D       ;will detect if D, DB or DF is held
;               command = $B       ;will detect if B, DB or UB is held
;   plus (+) - Buttons only: simultaneous press
;          egs. command = a+b      ;press a and b at the same time
;               command = x+y+z    ;press x, y and z at the same time
;   You can combine them:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;   It's recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This matches the way most
;   popular fighting games implement their command detection.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. Defaults to 15
;   if omitted
;
; If you have two or more commands with the same name, all of them will
; work. You can use it to allow multiple motions for the same move.
;
; Some common commands examples are given below.
;
; [Command] ;Quarter circle forward + x
; name = "QCF_x"
; command = ~D, DF, F, x
;
; [Command] ;Half circle back + a
; name = "HCB_a"
; command = ~F, DF, D, DB, B, a
;
; [Command] ;Two quarter circles forward + y
; name = "2QCF_y"
; command = ~D, DF, F, D, DF, F, y
;
; [Command] ;Tap b rapidly
; name = "5b"
; command = b, b, b, b, b
; time = 30
;
; [Command] ;Charge back, then forward + z
; name = "charge_B_F_z"
; command = ~60$B, F, z
; time = 10
; 
; [Command] ;Charge down, then up + c
; name = "charge_D_U_c"
; command = ~60$D, U, c
; time = 10
; 

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
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 30

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.

command.buffer.time = 1

;-|Artificial Intelligence |-----------------------------------------------
[Command]
name = "cpu1"
command = U, D, F
time = 1

[Command]
name = "cpu2"
command = U, B, F
time = 1

[Command]
name = "cpu3"
command = U, D, D
time = 1

[Command]
name = "cpu4"
command = F, B, U
time = 1

[Command]
name = "cpu5"
command = U, F, U, B
time = 1

[Command]
name = "cpu6"
command = U, D, B
time = 1

[Command]
name = "cpu7"
command = F, F, B
time = 1

[Command]
name = "cpu8"
command = U, D, U
time = 1

[Command]
name = "cpu9"
command = F, B, B
time = 1

[Command]
name = "cpu10"
command = F, F, B, B
time = 1

[Command]
name = "cpu11"
command = U, U, F
time = 1

[Command]
name = "cpu12"
command = U, B, B
time = 1

[Command]
name = "cpu13"
command = U, B, F, F
time = 1

[Command]
name = "cpu14"
command = U, F, B, U
time = 1

[Command]
name = "cpu15"
command = U, B, F, U
time = 1

[Command]
name = "cpu16"
command = U, B, B, B
time = 1

[Command]
name = "cpu17"
command = U, D, B, F
time = 1

[Command]
name = "cpu18"
command = U, D, B, D
time = 1

[Command]
name = "cpu19"
command = U, D, F, U
time = 1

[Command]
name = "cpu20"
command = U, D, U, B
time = 1

[Command]
name = "cpu21"
command = U, D, F, F
time = 1

[Command]
name = "cpu22"
command = F, F, F, F
time = 1

[Command]
name = "cpu23"
command = U, U, U, D
time = 1

[Command]
name = "cpu24"
command = B, B, B
time = 1

[Command]
name = "cpu25"
command = D, D, D, D
time = 1

[Command]
name = "cpu26"
command = D, D, D
time = 1

[Command]
name = "cpu27"
command = F, F, F
time = 1

[Command]
name = "cpu28"
command = U, U, U
time = 1

[Command]
name = "cpu29"
command = U, U, B, B
time = 1

[Command]
name = "cpu30"
command = D, D, F, F
time = 1

;-| Super Motions |--------------------------------------------------------
[command]
name = "Final Flash"
command = D,B,b
time = 15

[command]
name = "Galick Ho"
command = D,B,a
time = 15
;-| Special Motions |------------------------------------------------------
[command]
name = "Teleport Kick"
command = D,B,z
time = 15

[command]
name = "Teleport Punch"
command = D,B,y
time = 15

[command]
name = "Ki Attack"
command = D,B,c
time = 15

[command]
name = "Shock Wave"
command = D,F,z
time = 15

[command]
name = "Final attack"
command = D,F,y
time = 15

[command]
name = "Big Bang"
command = D,F,x
time = 15

[command]
name = "Combo 4"
command = D,B,x
time = 15

[command]
name = "Combo 3"
command = D,F,c
time = 15

[command]
name = "Combo 2"
command = D,F,b
time = 15

[command]
name = "Combo 1"
command = D,F,a
time = 15

[command]
name = "Ki"
command = z
time = 15
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
name = "recovery" ;Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "recovery"
command = b+c
time = 1

[Command]
name = "recovery"
command = a+c
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "back_x"
command = /$B,x
time = 1

[Command]
name = "back_y"
command = /$B,y
time = 1

[Command]
name = "back_z"
command = /$B,z
time = 1

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

[Command]
name = "fwd_x"
command = /$F,x
time = 1

[Command]
name = "fwd_y"
command = /$F,y
time = 1

[Command]
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "up_x"
command = /$U,x
time = 1

[Command]
name = "up_y"
command = /$U,y
time = 1

[Command]
name = "up_z"
command = /$U,z
time = 1

[Command]
name = "back_a"
command = /$B,a
time = 1

[Command]
name = "back_b"
command = /$B,b
time = 1

[Command]
name = "back_c"
command = /$B,c
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
name = "fwd_a"
command = /$F,a
time = 1

[Command]
name = "fwd_b"
command = /$F,b
time = 1

[Command]
name = "fwd_c"
command = /$F,c
time = 1

[Command]
name = "up_a"
command = /$U,a
time = 1

[Command]
name = "up_b"
command = /$U,b
time = 1

[Command]
name = "up_c"
command = /$U,c
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

;-| Single Dir |------------------------------------------------------------
[Command]
name = "fwd" ;Required (do not remove)
command = $F
time = 1

[Command]
name = "downfwd"
command = $DF
time = 1

[Command]
name = "down" ;Required (do not remove)
command = $D
time = 1

[Command]
name = "downback"
command = $DB
time = 1

[Command]
name = "back" ;Required (do not remove)
command = $B
time = 1

[Command]
name = "upback"
command = $UB
time = 1

[Command]
name = "up" ;Required (do not remove)
command = $U
time = 1

[Command]
name = "upfwd"
command = $UF
time = 1

;-| Hold Button |--------------------------------------------------------------
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

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd" ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holddownfwd"
command = /$DF
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

[Command]
name = "holddownback"
command = /$DB
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdupback"
command = /$UB
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holdupfwd"
command = /$UF
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

[State -1, AI TRIGGER]
type = Varset
triggerall = RoundState = 2
trigger1 = command = "cpu1"
trigger2 = command = "cpu2"
trigger3 = command = "cpu3"
trigger4 = command = "cpu4"
trigger5 = command = "cpu5"
trigger6 = command = "cpu6"
trigger7 = command = "cpu7"
trigger8 = command = "cpu8"
trigger9 = command = "cpu9"
trigger10 = command = "cpu10"
trigger11 = command = "cpu11"
trigger12 = command = "cpu12"
trigger13 = command = "cpu13"
trigger14 = command = "cpu14"
trigger15 = command = "cpu15"
trigger16 = command = "cpu16"
trigger17 = command = "cpu17"
trigger18 = command = "cpu18"
trigger19 = command = "cpu19"
trigger20 = command = "cpu20"
trigger21 = command = "cpu21"
trigger22 = command = "cpu22"
trigger23 = command = "cpu23"
trigger24 = command = "cpu24"
trigger25 = command = "cpu25"
trigger26 = command = "cpu26"
trigger27 = command = "cpu27"
trigger28 = command = "cpu28"
trigger29 = command = "cpu29"
trigger30 = command = "cpu30"
v = 7
value = 1

;Teleport Kick
[State -1, Teleport Kick]
type = ChangeState
value = 2400
triggerall = command = "Teleport Kick"
triggerall = var(7) !=1
trigger1 = (statetype = s) && ctrl

[State -1, Teleport KickAI]
type = Changestate
value = 2400
triggerall = var(7)
triggerall = !Win
triggerall = StateType != A
triggerall = P2BodyDist X >= 8
triggerall = StateType = S
trigger1 = ctrl
trigger1 = Random <= 100

;Teleport Punch
[State -1, Teleport Punch]
type = ChangeState
value = 2300
triggerall = command = "Teleport Punch"
triggerall = var(7) !=1
trigger1 = (statetype = s) && ctrl

[State -1, Teleport PunchAI]
type = Changestate
value = 2300
triggerall = var(7)
triggerall = !Win
triggerall = StateType != A
triggerall = P2BodyDist X >= 8
triggerall = StateType = S
trigger1 = ctrl
trigger1 = Random <= 100

;Combo 4
[State -1, Combo 4]
type = ChangeState
value = 2200
triggerall = command = "Combo 4"
triggerall = var(7) !=1
trigger1 = (statetype = s) && ctrl
triggerall = power>= 500

[State -1, Combo 4AI]
type = Changestate
value = 2200
triggerall = var(7)
triggerall = P2life > 0
triggerall = p2bodydist x < 31
triggerall = P2statetype != L
triggerall = !Win
triggerall = StateType != A
triggerall = P2BodyDist X >= 8
triggerall = StateType = S
trigger1 = ctrl
trigger1 = Random <= 100
triggerall = power>= 500

;Ki Attack 
[State -1, Ki Attack]
type = ChangeState
value = 2100
triggerall = command = "Ki Attack"
triggerall = var(7) !=1
trigger1 = (statetype = s) && ctrl
triggerall = power>= 1000

[State -1, Ki AttackAI]
type = Changestate
value = 2100
triggerall = var(7)
triggerall = !Win
triggerall = StateType != A
triggerall = P2BodyDist X >= 8
triggerall = StateType = S
trigger1 = ctrl
trigger1 = Random <= 100
triggerall = power>= 1000

;Final Flash
[State -1, Final Flash]
type = ChangeState
value = 2000
triggerall = command = "Final Flash"
triggerall = var(7) !=1
trigger1 = (statetype = s) && ctrl
triggerall = power>= 3000

[State -1, Final FlachAI]
type = Changestate
value = 2000
triggerall = var(7)
triggerall = !Win
triggerall = StateType != A
triggerall = P2BodyDist X >= 8
triggerall = StateType = S
trigger1 = ctrl
trigger1 = Random <= 100
triggerall = power>= 3000

;Galick Ho
[State -1, Galick Ho]
type = ChangeState
value = 1900
triggerall = command = "Galick Ho"
triggerall = var(7) !=1
trigger1 = (statetype = s) && ctrl
triggerall = power>= 3000

[State -1, Galick HoAI]
type = Changestate
value = 1900
triggerall = var(7)
triggerall = !Win
triggerall = StateType != A
triggerall = P2BodyDist X >= 8
triggerall = StateType = S
trigger1 = ctrl
trigger1 = Random <= 100
triggerall = power>= 3000

;Shock Wave
[State -1, Shock Wave]
type = ChangeState
value = 1800
triggerall = command = "Shock Wave"
triggerall = var(7) !=1
trigger1 = (statetype = s) && ctrl
triggerall = power>= 500

[State -1, Shock WaveAI]
type = Changestate
value = 1800
triggerall = var(7)
triggerall = !Win
triggerall = StateType != A
triggerall = P2BodyDist X >= 8
triggerall = StateType = S
trigger1 = ctrl
trigger1 = Random <= 100
triggerall = power>= 500

;Final attack
[State -1, FInal attack]
type = ChangeState
value = 1700
triggerall = command = "Final attack"
triggerall = var(7) !=1
trigger1 = (statetype = s) && ctrl
triggerall = power>= 1000

[State -1, Final attackAI]
type = Changestate
value = 1700
triggerall = var(7)
triggerall = !Win
triggerall = StateType != A
triggerall = P2BodyDist X >= 8
triggerall = StateType = S
trigger1 = ctrl
trigger1 = Random <= 100
triggerall = power>= 1000

;Big Bang
[State -1, Big Bang]
type = ChangeState
value = 1600
triggerall = command = "Big Bang"
triggerall = var(7) !=1
trigger1 = (statetype = s) && ctrl
triggerall = power>= 1000

[State -1, Big BangAI]
type = Changestate
value = 1600
triggerall = var(7)
triggerall = !Win
triggerall = StateType != A
triggerall = P2BodyDist X >= 8
triggerall = StateType = S
trigger1 = ctrl
trigger1 = Random <= 100
triggerall = power>= 1000

;Combo 3
[State -1, Combo 3]
type = ChangeState
value = 1500
triggerall = command = "Combo 3"
triggerall = var(7) !=1
trigger1 = (statetype = s) && ctrl  
triggerall = power>= 1000

[State -1, Comob 3AI]
type = Changestate
value = 1500
triggerall = var(7)
triggerall = P2life > 0
triggerall = p2bodydist x < 31
triggerall = P2statetype != L
triggerall = !Win
triggerall = StateType != A
triggerall = P2BodyDist X >= 8
triggerall = StateType = S
trigger1 = ctrl
trigger1 = Random <= 100
triggerall = power>= 1000

;Combo 2
[State -1, Combo 2]
type = ChangeState
value = 1400
triggerall = command = "Combo 2"
triggerall = var(7) !=1
trigger1 = (statetype = s) && ctrl
triggerall = power>= 500

[State -1, Combo 2AI]
type = Changestate
value = 1400
triggerall = var(7)
triggerall = P2life > 0
triggerall = p2bodydist x < 31
triggerall = P2statetype != L
triggerall = !Win
triggerall = StateType != A
triggerall = P2BodyDist X >= 8
triggerall = StateType = S
trigger1 = ctrl
trigger1 = Random <= 100
triggerall = power>= 500

;Combo 1
[State -1, Combo 1]
type = ChangeState
value = 1300
triggerall = command = "Combo 1"
triggerall = var(7) !=1
trigger1 = (statetype = s) && ctrl
triggerall = power>= 1000

[State -1, Combo 1AI]
type = Changestate
value = 1300
triggerall = var(7)
triggerall = P2life > 0
triggerall = p2bodydist x < 31
triggerall = P2statetype != L
triggerall = !Win
triggerall = StateType != A
triggerall = P2BodyDist X >= 8
triggerall = StateType = S
trigger1 = ctrl
trigger1 = Random <= 100
triggerall = power>= 1000

;Ki
[State -1, Ki]
type = ChangeState
value = 1200
triggerall = command = "Ki"
triggerall = var(7) !=1
trigger1 = (statetype = s) && ctrl
triggerall = power>= 500

[State -1, KiAI]
type = Changestate
value = 1200
triggerall = var(7)
triggerall = !Win
triggerall = StateType != A
triggerall = P2BodyDist X >= 8
triggerall = StateType = S
trigger1 = ctrl
trigger1 = Random <= 100
triggerall = power>= 500

;===========================================================================
;---------------------------------------------------------------------------

;===========================================================================
;---------------------------------------------------------------------------
[State -1, powercharge]
type = Changestate
value = 1000
trigger1 = power<const(data.power) || power<powermax
trigger1 = command = "hold_a" && command = "hold_b"
triggerall = var(7) !=1
trigger1 = statetype = S && ctrl

[State -1, powerchargeAI]
type = Changestate
value = 1000
triggerall = var(7)
triggerall = !Win
triggerall = StateType != A
triggerall = P2BodyDist X >= 8
triggerall = StateType = S
trigger1 = ctrl
trigger1 = Random <= 10

; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "y" || command = "z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;===========================================================================
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = var(7) !=1
trigger1 = statetype = S
trigger1 = ctrl


[State -1, Stand Light PunchAI]
type = ChangeState
triggerall = var(7)
triggerall = random >= 100
triggerall = StateType != A
triggerall = Movetype != H
triggerall = P2Life > 0
triggerall = P2bodydist X <= 20
trigger1 = ctrl
trigger2 = stateno = 210 && movecontact
value = 200
;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = var(7) !=1
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Stand Medium PunchAI]
type = ChangeState
triggerall = var(7)
triggerall = random >= 100
triggerall = StateType != A
triggerall = Movetype != H
triggerall = P2Life > 0
triggerall = P2bodydist X <= 20
trigger1 = ctrl
trigger2 = stateno = 220 && movecontact
value = 210
;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = var(7) !=1
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Stand Strong PunchAI]
type = ChangeState
triggerall = var(7)
triggerall = random >= 100
triggerall = StateType != A
triggerall = Movetype != H
triggerall = P2Life > 0
triggerall = P2bodydist X <= 20
trigger1 = ctrl
trigger2 = stateno = 230 && movecontact
value = 220
;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = var(7) !=1
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Stand Light KickAI]
type = ChangeState
triggerall = var(7)
triggerall = random >= 100
triggerall = StateType != A
triggerall = Movetype != H
triggerall = P2Life > 0
triggerall = P2bodydist X <= 20
trigger1 = ctrl
trigger2 = stateno = 240 && movecontact
value = 230
;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = var(7) !=1
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Standing Medium KickAI]
type = ChangeState
triggerall = var(7)
triggerall = random >= 100
triggerall = StateType != A
triggerall = Movetype != H
triggerall = P2Life > 0
triggerall = P2bodydist X <= 20
trigger1 = ctrl
trigger2 = stateno = 250 && movecontact
value = 240
;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = var(7) !=1
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Standing Stong KickAI]
type = ChangeState
triggerall = var(7)
triggerall = random >= 100
triggerall = StateType != A
triggerall = Movetype != H
triggerall = P2Life > 0
triggerall = P2bodydist X <= 20
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
value = 250
;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
