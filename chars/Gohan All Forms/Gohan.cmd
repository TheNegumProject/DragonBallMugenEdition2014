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

;-| Super Motions |--------------------------------------------------------
[Command]
name = "SSJ2"
command = D, DF, F, D, DF, F, c
time = 30

[Command]
name = "SSJC"
command = D, DB, B, F, c
time = 30

[Command]
name = "SSJ"
command = D, DF, F, c
time = 30

[Command]
name = "KHH"
command = D, DB, B, F, z
time = 30

[Command]
name = "masenko"
command = B, D, F, z
time = 30

[Command]
name = "Ataque"
command = D, F , D, F, z
time = 30

;-| Special Motions |------------------------------------------------------
[Command]
name = "Guno"
command = D, F, x
time = 30

[Command]
name = "Gdos"
command = D, F, a
time = 30

[Command]
name = "Cuno"
command = D, F, y
time = 30

[Command]
name = "Cdos"
command = D, F, b
time = 30

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
name = "contra"
command = a+x
time = 1

[Command]
name = "fly" ;
command = b+y ;
time = 1 ; tempo que podera usar o comando

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

[Command]
name = "F" ;Required (do not remove)
command = F
time = 1

[Command]
name = "B" ;Required (do not remove)
command = B
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

;===========================================================================
;---------------------------------------------------------------------------
; Transf SSJ2
[State -1, Transf SSJ2]
type = ChangeState
value = 19500
trigger1 = var(5) = 1
trigger1 = command = "SSJ2"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Transf SSJ
[State -1, Transf SSJ]
type = ChangeState
value = 9001 + ifelse(var(5)=1,10000,0) + ifelse(var(5)=2,-9001,0)
trigger1 = command = "SSJ"
trigger1 = power >= (1000 + ifelse (var(5)=1,-1000,0))
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Transf SSJ + combo
[State -1, Transf SSJ +]
type = ChangeState
value = 9500 + ifelse(var(5)=1,-9500,0) + ifelse(var(5)=2,-9500,0)
trigger1 = command = "SSJC"
trigger1 = power = 3000
trigger1 = statetype = S
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
; KHH
[State -1, KHH]
type = ChangeState
value = 6000 + ifelse(var(5)=2,20000,0)
triggerall = command = "KHH"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 900

;---------------------------------------------------------------------------
; Masenko
[State -1, Masenko]
type = ChangeState
value = 4000
triggerall = command = "masenko"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 900

;---------------------------------------------------------------------------
; Ataque (solo para ssj2)
[State -1, Ataque]
type = ChangeState
value = 0 + ifelse(var(5)=2,27000,0)
triggerall = command = "Ataque"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 900

;===========================================================================
;---------------------------------------------------------------------------
; Golpe 1
[State -1, Golpe 1]
type = ChangeState
value = 1000 + ifelse(var(5)=1,10000,0) + ifelse(var(5)=2,20000,0)
triggerall = command = "Guno"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 900

;---------------------------------------------------------------------------
; Golpe 2
[State -1, Golpe 2]
type = ChangeState
value = 1200
triggerall = command = "Gdos"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 900

;---------------------------------------------------------------------------
; Combo 1
[State -1, Combo 1]
type = ChangeState
value = 1100
triggerall = command = "Cuno"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 900

;---------------------------------------------------------------------------
; Combo 2
[State -1, Combo 2]
type = ChangeState
value = 1300
triggerall = command = "Cdos"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 900

;---------------------------------------------------------------------------
; Contra
[State -1, Contra]
type = ChangeState
value = 2000
trigger1 = command = "contra"
trigger1 = statetype = S
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100 + ifelse (var(5)=2,20000,0)
triggerall = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = var(5) = 2
trigger2 = stateno = 900
trigger3 = var(5) = 2
trigger3 = stateno = 50

;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105 + ifelse (var(5)=2,20000,0)
triggerall = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = var(5) = 2
trigger2 = stateno = 900
trigger3 = var(5) = 2
trigger3 = stateno = 50

;===========================================================================
;---------------------------------------------------------------------------
;Fly ; Volando
[State -1, Volar]
type = ChangeState
value = 900
triggerall = command = "fly"
trigger1 = statetype = A ; puede ser hecho en el aire
trigger1 = ctrl = 1 ; o seu char voa sem controle para cima

;-----

;Fly ;Empezar a volar
[State -1, Volar]
type = ChangeState
value = 910
triggerall = command = "fly"
trigger1 = statetype != A ; no precisa estar en el aire
trigger1 = ctrl = 1 ; seu char para no alto

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
; Running
[State -1, Running]
type = ChangeState
value = 300 + ifelse (var(5)=2,20000,0)
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = p2bodydist x > 15
trigger1 = stateno = 100 - ifelse (var(5)=2,80,0)
trigger1 = vel x > 0
trigger1 = ctrl

[State -1, Running]
type = ChangeState
value = 300 + ifelse (var(5)=2,20010,0)
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = p2bodydist x > 15
trigger1 = stateno = 100  - ifelse (var(5)=2,80,0)
trigger1 = vel x > 0
trigger1 = ctrl

[State -1, Running]
type = ChangeState
value = 300
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = p2bodydist x > 15
trigger1 = stateno = 100
trigger1 = vel x > 0
trigger1 = ctrl

[State -1, Running]
type = ChangeState
value = 300 + ifelse (var(5)=2,20000,0)
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = p2bodydist x > 15
trigger1 = stateno = 100 - ifelse (var(5)=2,80,0)
trigger1 = vel x > 0
trigger1 = ctrl

[State -1, Running]
type = ChangeState
value = 300 + ifelse (var(5)=2,20010,0)
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = p2bodydist x > 15
trigger1 = stateno = 100 - ifelse (var(5)=2,80,0)
trigger1 = vel x > 0
trigger1 = ctrl

[State -1, Running]
type = ChangeState
value = 300
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = p2bodydist x > 15
trigger1 = stateno = 100
trigger1 = vel x > 0
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand "x"
[State -1, "x" 1]
type = ChangeState
value = 200 + ifelse (var(5)=2,20000,0)
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 900

[State -1, "x" 2]
type = ChangeState
value = 201
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = movecontact = 1
trigger1 = stateno = 200
trigger2 = stateno = 210
trigger3 = stateno = 230

[State -1, "x" 3]
type = ChangeState
value = 202
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = movecontact = 1
trigger1 = stateno = 201
trigger2 = stateno = 211
trigger3 = stateno = 231

; Stand "y"
[State -1, "y" 1]
type = ChangeState
value = 210 + ifelse (var(5)=2,20000,0)
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 900

[State -1, "y" 2]
type = ChangeState
value = 211
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = movecontact = 1
trigger1 = stateno = 200
trigger2 = stateno = 210
trigger3 = stateno = 230

[State -1, "y" 3]
type = ChangeState
value = 212
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = movecontact = 1
trigger1 = stateno = 201
trigger2 = stateno = 211
trigger3 = stateno = 231

; Stand "a" 1
[State -1, "a" 1]
type = ChangeState
value = 230 + ifelse (var(5)=2,20000,0)
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 900

[State -1, "a" 2]
type = ChangeState
value = 231
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = movecontact = 1
trigger1 = stateno = 200
trigger2 = stateno = 210
trigger3 = stateno = 230

[State -1, "a" 3]
type = ChangeState
value = 232
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = movecontact = 1
trigger1 = stateno = 201
trigger2 = stateno = 211
trigger3 = stateno = 231

; Standing "b"
[State -1, "b"]
type = ChangeState
value = 240 + ifelse (var(5)=2,20000,0)
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 900

;---------------------------------------------------------------------------
; Fireball 1
[State -1, Fireball 1]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 900

; Fireball 2
[State -1, Fireball 2]
type = ChangeState
value = 222
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = time > 15
trigger1 = stateno = 220
trigger2 = stateno = 900

[State -1, Fireball 3]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = time > 15
trigger1 = var(5) = 1
trigger1 = stateno = 222
trigger2 = var(5) = 2
trigger2 = stateno = 222
trigger3 = stateno = 900

;---------------------------------------------------------------------------
; Combinaciones SSJ2
[State -1, "x" 2 SSJ2]
type = ChangeState
value = 20201
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = movecontact = 1
trigger1 = stateno = 20200
trigger2 = stateno = 20210
trigger3 = stateno = 20230
trigger4 = stateno = 20240

[State -1, "x" 3 SSJ2]
type = ChangeState
value = 20202
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = movecontact = 1
trigger1 = stateno = 20201
trigger2 = stateno = 20211
trigger3 = stateno = 20231
trigger4 = stateno = 20241

[State -1, "x" 4 SSJ2]
type = ChangeState
value = 20203
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = movecontact = 1
trigger1 = stateno = 20202
trigger2 = stateno = 20212
trigger3 = stateno = 20232
trigger4 = stateno = 20242

[State -1, "x" 5 SSJ2]
type = ChangeState
value = 20204
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = movecontact = 1
trigger1 = stateno = 20203
trigger2 = stateno = 20213
trigger3 = stateno = 20233
trigger4 = stateno = 20243

[State -1, "x" 6 SSJ2]
type = ChangeState
value = 20205
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = movecontact = 1
trigger1 = stateno = 20204

[State -1, "y" 2 SSJ2]
type = ChangeState
value = 20211
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = movecontact = 1
trigger1 = stateno = 20200
trigger2 = stateno = 20210
trigger3 = stateno = 20230
trigger4 = stateno = 20240

[State -1, "y" 3 SSJ2]
type = ChangeState
value = 20212
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = movecontact = 1
trigger1 = stateno = 20201
trigger2 = stateno = 20211
trigger3 = stateno = 20231
trigger4 = stateno = 20241

[State -1, "y" 4 SSJ2]
type = ChangeState
value = 20213
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = movecontact = 1
trigger1 = stateno = 20202
trigger2 = stateno = 20212
trigger3 = stateno = 20232
trigger4 = stateno = 20242

[State -1, "y" 5 SSJ2]
type = ChangeState
value = 20214
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = movecontact = 1
trigger1 = stateno = 20203
trigger2 = stateno = 20213
trigger3 = stateno = 20233
trigger4 = stateno = 20243

[State -1, "a" 2 SSJ2]
type = ChangeState
value = 20231
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = movecontact = 1
trigger1 = stateno = 20200
trigger2 = stateno = 20210
trigger3 = stateno = 20230
trigger4 = stateno = 20240

[State -1, "a" 3 SSJ2]
type = ChangeState
value = 20232
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = movecontact = 1
trigger1 = stateno = 20201
trigger2 = stateno = 20211
trigger3 = stateno = 20231
trigger4 = stateno = 20241

[State -1, "a" 4 SSJ2]
type = ChangeState
value = 20233
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = movecontact = 1
trigger1 = stateno = 20202
trigger2 = stateno = 20212
trigger3 = stateno = 20232
trigger4 = stateno = 20242

[State -1, "a" 5 SSJ2]
type = ChangeState
value = 20234
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = movecontact = 1
trigger1 = stateno = 20203
trigger2 = stateno = 20213
trigger3 = stateno = 20233
trigger4 = stateno = 20243

[State -1, "a" 6 SSJ2]
type = ChangeState
value = 20235
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = movecontact = 1
trigger1 = stateno = 20234

[State -1, "b" 2 SSJ2]
type = ChangeState
value = 20241
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = movecontact = 1
trigger1 = stateno = 20200
trigger2 = stateno = 20210
trigger3 = stateno = 20230
trigger4 = stateno = 20240

[State -1, "b" 3 SSJ2]
type = ChangeState
value = 20242
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = movecontact = 1
trigger1 = stateno = 20201
trigger2 = stateno = 20211
trigger3 = stateno = 20231
trigger4 = stateno = 20241

[State -1, "b" 4 SSJ2]
type = ChangeState
value = 20243
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = movecontact = 1
trigger1 = stateno = 20202
trigger2 = stateno = 20212
trigger3 = stateno = 20232
trigger4 = stateno = 20242

[State -1, "b" 5 SSJ2]
type = ChangeState
value = 20244
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = movecontact = 1
trigger1 = stateno = 20203
trigger2 = stateno = 20213
trigger3 = stateno = 20233
trigger4 = stateno = 20243

[State -1, "b" 6 SSJ2]
type = ChangeState
value = 20245
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = movecontact = 1
trigger1 = stateno = 20244

;---------------------------------------------------------------------------
; Power up
[State -1, Power up - SSJ]
type = ChangeState
value = 10250
triggerall = command = "c"
triggerall = var(5) = 1
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 900

[State -1, Power up - norm]
type = ChangeState
value = 250 + ifelse (var(5)=2,20000,0)
triggerall = command = "c"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 900

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
