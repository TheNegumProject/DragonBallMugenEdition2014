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
[command]
name = "Finale Flash"
command = D,B,F,a+b
time = 20

[command]
name = "Big Bang Attack Air"
command = D,F,x,y
time = 20

[command]
name = "Big Bang Attack"
command = D,B,F,y
time = 20

[command]
name = "Vel kick fwd a"
command = D,F,y
time = 20

[command]
name = "Vel kick b"
command = D,F,x
time = 20

[command]
name = "ki beam"
command = D,B,F,x
time = 20

[command]
name = "Zanzouken Kick stand"
command = D,F,x+y
time = 20

[command]
name = "Barikuhama"
command = D,B,c
time = 20

[command]
name = "Vel Attack"
command = D,F,a
time = 20

[command]
name = "Galic Ho"
command = D,F,c
time = 20

[command]
name = "Strong Punch"
command = D,F,b
time = 20

[command]
name = "Zanzouken Punch"
command = D,F,a+b
time = 20

[command]
name = "Ki Punch"
command = D,F,c
time = 20

[command]
name = "Bakuhatsu"
command = D,B,F,a
time = 20

[command]
name = "Kikoha combo"
command = D,B,F,c
time = 20

[command]
name = "zanzouken kick"
command = D,F,y
time = 15

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

[command]
name = "Fly Back"
command = B,B
time = 20

[command]
name = "Fly Fwd"
command = F,F
time = 20

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1

;-| Super Motions |--------------------------------------------------------

;-| Special Motions |------------------------------------------------------

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

;-| AI |---------------------------------------------------------
 [Command]
name = "ai1"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai2"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai3"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai4"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai5"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai6"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai7"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai8"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai9"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai10"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai11"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai12"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai13"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai14"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai15"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai16"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai17"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai18"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai19"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai20"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai21"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai22"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai23"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai24"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai25"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai26"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai27"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai28"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai29"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1

 [Command]
name = "ai30"
command = D, F, B, B, B, D, F, F, B, F, F, B, x+y
time = 1


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;===========================================================================
;---------------------------------------------------------------------------

;===========================================================================
;---------------------------------------------------------------------------
;Finale Flash
[State -1,Finale Flash]
type = ChangeState
value = 1050
triggerall = command = "Finale Flash"
triggerall = power >= 4000
trigger1 = (statetype = S) && ctrl

;---------------------------------------------------------------------------
;Big Bang Attack Air
[State -1, Big Bang Attack Air]
type = ChangeState
value = 1040
triggerall = command = "Big Bang Attack Air"
triggerall = power >= 3000
trigger1 = (statetype = S) && ctrl

;---------------------------------------------------------------------------
;Big Bang Attack
[State -1,Big Bang Attack]
type = ChangeState
value = 1030
triggerall = command = "Big Bang Attack"
triggerall = power >= 2800
trigger1 = (statetype = S) && ctrl

;---------------------------------------------------------------------------
;ki beam
[State -1,ki beam]
type = ChangeState
value = 900
triggerall = command = "ki beam"
triggerall = power >= 800
trigger1 = (statetype = S) && ctrl

;---------------------------------------------------------------------------
; Zanzouken Kick stand
[State -1, Zanzouken Kick stand]
type = ChangeState
value = 634
triggerall = command = "Zanzouken Kick stand"
triggerall = power >= 250
trigger1 = (statetype = S) && ctrl
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Galic Ho 1
[State -1,Galic Ho1]
type = ChangeState
value = 1021
triggerall = var(40) != 1
triggerall = command = "Galic Ho"
triggerall = power >= 2000
trigger1 = (statetype = S) && ctrl

;---------------------------------------------------------------------------
;Galic Ho 2 var 40 = 1
[State -1, Galic Ho2]
type = ChangeState
value = 1025
triggerall = var(40) != 0
triggerall = command = "Galic Ho"
triggerall = power >= 2000
trigger1 = (statetype = S) && ctrl

;---------------------------------------------------------------------------
; Bakuhatsu
[State -1,Bakuhatsu]
type = ChangeState
value = 1000
triggerall = command = "Bakuhatsu"
triggerall = power >= 2000
trigger1 = (statetype = S) && ctrl

;---------------------------------------------------------------------------
; Kikoha combo
[State -1,Kikoha combo]
type = ChangeState
value = 699
triggerall = command = "Kikoha combo"
triggerall = power >= 1300
trigger1 = (statetype = S) && ctrl

;---------------------------------------------------------------------------
; Air kick zanzouken
[State -1,air kick zanzouken]
type = ChangeState
value = 631
triggerall = command = "zanzouken kick"
triggerall = power >= 250
triggerall = time < 25
triggerall = time > 15
trigger1 = (statetype = A) && ctrl
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Barikuhama
[State -1,Barikuhama]
type = ChangeState
value = 1026
triggerall = command = "Barikuhama"
triggerall = power >= 1000
trigger1 = (statetype = S) && ctrl

;---------------------------------------------------------------------------
; Zanzouken Punch stand
[State -1, Zanzouken Punch stand]
type = ChangeState
value = 632
triggerall = command = "Zanzouken Punch"
triggerall = power >= 250
trigger1 = (statetype = S) && ctrl
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Zanzouken Punch air
[State -1,Zanzouken Punch air]
type = ChangeState
value = 632
triggerall = command = "Zanzouken Punch"
triggerall = power >= 250
triggerall = time < 25
triggerall = time > 15
trigger1 = (statetype = A) && ctrl
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Ki Punch
[State -1,Ki Punch]
type = ChangeState
value = 1008
triggerall = command = "Ki Punch"
triggerall = power >= 300
trigger1 = (statetype = S) && ctrl

;---------------------------------------------------------------------------
; Run fwd kick
[State -1, Run fwd kick]
type = ChangeState
value = 245
triggerall = command = "y"
trigger1 = (statetype = S) && ctrl
triggerall = stateno = 100

;---------------------------------------------------------------------------
; Strong Punch
[State -1, Strong Punch]
type = ChangeState
value = 246
triggerall = command = "Strong Punch"
trigger1 = (statetype = S) && ctrl

;---------------------------------------------------------------------------
; Vel Attack
[State -1, Vel Attack]
type = ChangeState
value = 212
triggerall = command = "Vel Attack"
trigger1 = (statetype = S) && ctrl

;---------------------------------------------------------------------------
; Vel kick fwd a
[State -1, Vel kick fwd a]
type = ChangeState
value = 245
triggerall = command = "Vel kick fwd a"
trigger1 = (statetype = S) && ctrl

;---------------------------------------------------------------------------
; Vel kick b
[State -1, Vel kick b]
type = ChangeState
value = 2391
triggerall = command = "Vel kick b"
trigger1 = (statetype = S) && ctrl

;---------------------------------------------------------------------------
; Fly Fwd
[State -1, Fly Fwd]
type = ChangeState
value = 60
triggerall = command = "Fly Fwd"
trigger1 = (statetype = A) && ctrl

;---------------------------------------------------------------------------
; Fly Back
[State -1, Fly Back]
type = ChangeState
value = 65
triggerall = command = "Fly Back"
trigger1 = (statetype = A) && ctrl

;---------------------------------------------------------------------------
; Charge KI
[State -1, Charge KI]
type = ChangeState
value = 730
triggerall = command = "hold_a" && command = "hold_x"
trigger1 = (statetype = s) && ctrl
triggerall = power < 4000

;---------------------------------------------------------------------------
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

;===========================================================================
;---------------------------------------------------------------------------
; Turn SSJ
[State -1, Turn SSJ]
type = ChangeState
value = 2995
triggerall = var(5) != 1
triggerall = stateno != 2995
triggerall = power >= 4000
triggerall = command = "s"
trigger1 = (statetype = s) && ctrl
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Quick Turn SSJ
[State -1, Quick Turn SSJ]
type = ChangeState
value = 10168
triggerall = var(5) != 1
triggerall = stateno != 10168
triggerall = power >= 4000
triggerall = command = "a" && command = "b"
trigger1 = (statetype = s) && ctrl
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Turn To Normal
[State -1, Turn Normal]
type = ChangeState
value = 3001
triggerall = var(5) != 0
triggerall = command = "s"
trigger1 = (statetype = s) && ctrl
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Punch
[State -1, Jump Punch]
type = ChangeState
value = 601
triggerall = command = "a" && command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Zanzouken fwd air
[State -1, Zanzouken fwd air]
type = ChangeState
value = 998
triggerall = command = "holdfwd" && command = "z"
trigger1 = (statetype = a) && ctrl
triggerall = power >= 100

;--------------------------------------------------------------------------
; Zanzouken back air
[State -1, Zanzouken back air]
type = ChangeState
value = 999
triggerall = command = "holdback" && command = "z"
trigger1 = (statetype = a) && ctrl
triggerall = power >= 100

;---------------------------------------------------------------------------
; Zanzouken air
[State -1, Zanzouken air]
type = ChangeState
value = 899
triggerall = command = "z"
trigger1 = (statetype = A) && ctrl
triggerall = power >= 100

;--------------------------------------------------------------------------
; Zanzouken back stand
[State -1, Zanzouken back stand]
type = ChangeState
value = 884
triggerall = command = "holdback" && command = "z"
trigger1 = (statetype = s) && ctrl
triggerall = power >= 100

;--------------------------------------------------------------------------
; Zanzouken fwd stand
[State -1, Zanzouken fwd stand]
type = ChangeState
value = 883
triggerall = command = "holdfwd" && command = "z"
trigger1 = (statetype = s) && ctrl
triggerall = power >= 100

;---------------------------------------------------------------------------
; Zanzouken stand
[State -1, Zanzouken stand]
type = ChangeState
value = 885
triggerall = command = "z"
trigger1 = (statetype = s) && ctrl
triggerall = power >= 150

;---------------------------------------------------------------------------
; Kikoha
[State -1,Kikoha]
type = ChangeState
value = 861
triggerall = command = "c"
triggerall = power >= 200
trigger1 = (statetype = S) && ctrl

;---------------------------------------------------------------------------
; Air Kikoha
[State -1,Air Kikoha]
type = ChangeState
value = 1017
triggerall = command = "c"
triggerall = power >= 300
trigger1 = (statetype = A) && ctrl
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

;=====================================AI====================================
;---------------------------------------------------------------------------
[State -1]
type = varset
triggerall = var(36) != 1
trigger1 = command = "ai1"
trigger2 = command = "ai2"
trigger3 = command = "ai3"
trigger4 = command = "ai4"
trigger5 = command = "ai5"
trigger6 = command = "ai6"
trigger7 = command = "ai7"
trigger8 = command = "ai8"
trigger9 = command = "ai9"
trigger10 = command = "ai10"
trigger11 = command = "ai11"
trigger12 = command = "ai12"
trigger13 = command = "ai13"
trigger14 = command = "ai14"
trigger15 = command = "ai15"
trigger16 = command = "ai16"
trigger17= command = "ai17"
trigger18= command = "ai18"
trigger19= command = "ai19"
trigger20= command = "ai20"
trigger21 = command = "ai21"
trigger22= command = "ai22"
trigger23= command = "ai23"
trigger24= command = "ai24"
trigger25= command = "ai25"
trigger26 = command = "ai26"
trigger27= command = "ai27"
trigger28= command = "ai28"
trigger29= command = "ai29"
trigger30= command = "ai30"
v = 36
value = 1
;---------------------------------------------------------------------------
