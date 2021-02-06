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
;   time = time (optional)
;   buffer.time = time (optional)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas. Each of these
;   buttons or directions is referred to as a "symbol".
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
;   greater-than (>) - means there must be no other keys pressed or released
;                      between the previous and the current symbol.
;          egs. command = a, >~a   ;press a and release it without having hit
;                                  ;or released any other keys in between
;   You can combine the symbols:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;
;   Note: Successive direction symbols are always expanded in a manner similar
;         to this example:
;           command = F, F
;         is expanded when MUGEN reads it, to become equivalent to:
;           command = F, >~F, >F
;
;   It is recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This makes the command easier
;   to do.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. The default
;   value for this is set in the [Defaults] section below. A typical
;   value is 15.
;
; - buffer.time (optional)
;   Time that the command will be buffered for. If the command is done
;   successfully, then it will be valid for this time. The simplest
;   case is to set this to 1. That means that the command is valid
;   only in the same tick it is performed. With a higher value, such
;   as 3 or 4, you can get a "looser" feel to the command. The result
;   is that combos can become easier to do because you can perform
;   the command early. Attacks just as you regain control (eg. from
;   getting up) also become easier to do. The side effect of this is
;   that the command is continuously asserted, so it will seem as if
;   you had performed the move rapidly in succession during the valid
;   time. To understand this, try setting buffer.time to 30 and hit
;   a fast attack, such as KFM's light punch.
;   The default value for this is set in the [Defaults] section below. 
;   This parameter does not affect hold-only commands (eg. /F). It
;   will be assumed to be 1 for those commands.
;
; If you have two or more commands with the same name, all of them will
; work. You can use it to allow multiple motions for the same move.
;
; Some common commands examples are given below.


;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

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

;-| Hyper Motions |--------------------------------------------------------

[command]
name = "Dragon Fist"
command = D,DF,F,B,z
time = 30

;-| Super Motions |--------------------------------------------------------

[command]
name = "Whirlwind Attack"
command = D,DF,F,D,DB,B,a
time = 30

[command]
name = "Whirlwind Attack"
command = D,DF,F,D,DB,B,b
time = 30

[command]
name = "Super Kamehame-Ha"
command = D,DB,B,F,z
time = 30

[command]
name = "Rolling Throw"
command = D,DB,B,D,DB,B,x
time = 30

[command]
name = "Rolling Throw"
command = D,DB,B,D,DB,B,y
time = 30

[command]
name = "Super Run Punchs"
command = D,DF,F,D,DF,F,x
time = 30

[command]
name = "Super Run Punchs"
command = D,DF,F,D,DF,F,y
time = 30

[command]
name = "Fire Bomb Kick"
command = D,DF,F,D,DF,F,a
time = 30

[command]
name = "Fire Bomb Kick"
command = D,DF,F,D,DF,F,b
time = 30

;-| Special Motions |------------------------------------------------------

[command]
name = "Kamehame-Ha"
command = B,DB,D,DF,F,z
time = 30

[command]
name = "Firelazer"
command = D,DF,F,z
time = 30

[command]
name = "Super Ball"
command = D,DB,B,z
time = 30

[command]
name = "Teleport Double FireBall"
command = D,DB,B,z
time = 30

[command]
name = "Fast Punchs Combo"
command = D,DF,F,x
time = 30

[command]
name = "Fast Punchs Combo"
command = D,DF,F,y
time = 30

[command]
name = "Crazy Kicks"
command = a,a,a
time = 20

[command]
name = "Dash Elbow"
command = D,DB,B,x
time = 30

[command]
name = "Dash Elbow 2"
command = D,DB,B,y
time = 30

[command]
name = "Moon Kick"
command = D,F,DF,a
time = 30

[command]
name = "Moon Kick 2"
command = D,F,DF,b
time = 30

[command]
name = "Bird Kick"
command = D,DF,F,a
time = 30

[command]
name = "Bird Kick 2"
command = D,DF,F,b
time = 30

[command]
name = "Swirl Kick"
command = D,DB,B,a
time = 30

[command]
name = "Swirl Kick Up"
command = D,DB,B,b
time = 30

[command]
name = "Taioken"
command = B,F,z
time = 30

[command]
name = "Running Punch"
command = F, F, x
time = 20

[command]
name = "Running Punch"
command = F, F, y
time = 20

[command]
name = "Running Kick"
command = F, F, a
time = 20

[command]
name = "Running Kick"
command = F, F, b
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
name = "recovery";Required (do not remove)
command = a+b
time = 1

[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "fly";Required (do not remove)
command = a+b
time = 1

[Command]
name = "charge"
command = /$b+y
time = 1

[Command]
name = "dodge"
command = a+x
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

;-| Single Dir |---------------------------------------------------------

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

;-| Hold Boton |--------------------------------------------------------------

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "holdstart"
command = /s
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


; No borrar la siguiete linea. Es requerida por el CMD standard.
[Statedef -1]

;Cambiar antes de hacer algun movimiento
[State -1, Casansio]
type = ChangeState
triggerall = !ishelper
triggerall = var(5) > 0
trigger1 = ctrl
trigger2 = stateno = [990,995]
value = 5300
ctrl = 1

[State -1, Disminuir cansansio]
type = VarAdd
triggerall = var(5) > 0
trigger1 = command = "a" || command = "b" || command = "c"
trigger2 = command = "x" || command = "y" || command = "z"
trigger3 = command = "up" || command = "down"
trigger4 = command = "fwd" || command = "back"
trigger5 = var(59) > 0 
trigger5 = var(58) <= 50/(9-var(59))
v = 5
value = ifelse(stateno = 5300,-3,-1)

;===========================================================================
; Movimientos Hypers
;---------------------------------------------------------------------------

[State --------HYPERS MOVES--------]
type = Null
trigger1 = 1

;---------------------------------------------------------------------------
[State -1, Dragon Fist]
type = ChangeState
value = 3600
;triggerall = var(59) <= 0
triggerall = command = "Dragon Fist"
triggerall = power >= powermax/1.5;2000
triggerall = pos y = 0
trigger1 = ctrl && statetype != A ;|| stateno = [990,995]
trigger2 = (stateno = [200,245]) && movecontact

;Kamehame-Ha
[State -1, Dragon Fist]
type = VarSet
value = 1
triggerall = stateno = 3607;DF traspasando
triggerall = var(5) = 0
trigger1 = command = "Super Kamehame-Ha"
trigger2 = var(59) >= 1
trigger2 = var(58) <= 100/(9-var(59))
v = 23

;===========================================================================
; Movimientos Supers
;---------------------------------------------------------------------------

[State --------SUPERS MOVES--------]
type = Null
trigger1 = 1

;---------------------------------------------------------------------------
[State -1, Whirlwind Attack]
type = null;ChangeState
value = 3500
triggerall = var(59) <= 0
triggerall = command = "Whirlwind Attack"
triggerall = power >= powermax/3;1000
trigger1 = ctrl && statetype != A
trigger2 = stateno = [200,249]

;---------------------------------------------------------------------------
[State -1, Super Kamehame-Ha]
type = ChangeState
value = 3400
triggerall = var(59) <= 0
triggerall = command = "Super Kamehame-Ha"
triggerall = numhelper(3420) = 0
triggerall = numhelper(3421) = 0
triggerall = power >= powermax/3;1000
trigger1 = ctrl && statetype != A || stateno = [990,995]
trigger2 = stateno = [200,249]

;---------------------------------------------------------------------------
[State -1, Fire Bomb Kick]
type = ChangeState
value = 3200
triggerall = var(59) <= 0
triggerall = command = "Fire Bomb Kick"
triggerall = power >= powermax/6;1000
trigger1 = ctrl && statetype = A || stateno = [990,995]
trigger2 = stateno = 1353
trigger2 = var(3) >= 3
trigger3 = (stateno = [600,649]) && movecontact
ignorehitpause = 1

;---------------------------------------------------------------------------
[State -1, Rolling Throw]
type = ChangeState
value = 3100
triggerall = var(59) <= 0
triggerall = command = "Rolling Throw"
triggerall = pos y = 0
triggerall = power >= powermax/6;1000
trigger1 = ctrl && statetype != A
trigger2 = (stateno = [200,240]) && movecontact

;Agregar carga de vuelta (boton presionado)
[State -1, Rolling Throw]
type = VarAdd
value = 1
triggerall = stateno = 3105
triggerall = var(4) < 8
triggerall = var(23) = 0
trigger1 = command = "x" || command = "y"
trigger2 = var(59) >= 1
trigger2 = var(58) <= 100/(9-var(59))
v = 4

;Kamehame-Ha
[State -1, Rolling Throw]
type = VarSet
value = 1
triggerall = stateno = 3105
triggerall = anim = 3105
triggerall = var(5) = 0
trigger1 = command = "Super Kamehame-Ha"
trigger2 = var(59) >= 1
trigger2 = var(58) <= 100/(9-var(59))
v = 23
;---------------------------------------------------------------------------
[State -1, Super Run Punchs]
type = ChangeState
value = 3000
triggerall = var(59) <= 0
triggerall = command = "Super Run Punchs"
triggerall = power >= powermax/3;1000
trigger1 = statetype != A && ctrl || stateno = [990,995]
trigger2 = (stateno = [200,245]) && movecontact

;Rolling Throw
[State -1, Super Run Punchs]
type = VarSet
v = 23
triggerall = stateno = [3001,3002]
trigger1 = command = "Rolling Throw"
trigger2 = var(59) >= 1
trigger2 = var(58) <= 100/(9-var(59))
value = 1

;===========================================================================
; Movimientos Especiales
;===========================================================================

[State --------SPECIAL MOVES-------]
type = Null
trigger1 = 1

;---------------------------------------------------------------------------
[State -1, Kamehame-Ha]
type = Null;ChangeState
value = 2200
triggerall = var(59) <= 0
triggerall = command = "Kamehame-Ha"
triggerall = numhelper(2010) < 1
triggerall = power >= powermax/6;500
trigger1 = ctrl && statetype != A || stateno = [990,995]

;-----------------------------------------------------------------------------------------
[State -1, Firelazer]
type = ChangeState
value = 2100;+random%2
triggerall = var(59) <= 0
triggerall = command = "Firelazer"
triggerall = numhelper(2110) = 0
triggerall = numhelper(2111) = 0
triggerall = power >= 250
trigger1 = ctrl || stateno = [990,995]
trigger2 = (stateno = [2000,2001]) && animelem = 2, > 1
trigger3 = (stateno = [200,240]) && movecontact

;---------------------------------------------------------------------------
[State -1, Taioken]
type = ChangeState
value = 2300
triggerall = var(59) <= 0
triggerall = command = "Taioken"
triggerall = power >= 500
triggerall = numhelper(2310) < 1
trigger1 = statetype = S && ctrl || stateno = [990,995]
trigger2 = (stateno = [200,240]) && movecontact

;-----------------------------------------------------------------------------------------
[State -1, Super Ball]
type = null;ChangeState
value = 960
triggerall = var(59) <= 0
triggerall = command = "Super Ball"
triggerall = power >= 250
trigger1 = ctrl && statetype != A || stateno = [990,995]

;---------------------------------------------------------------------------
[State -1, Teleport Double FireBall]
type = ChangeState
value = 620
;triggerall = command = "z"
triggerall = command = "Teleport Double FireBall"
triggerall = power >= 500
trigger1  = p2bodydist x = [-60,60]
trigger1  = p2bodydist y = [-60,60]
trigger1  = ctrl || stateno = [990,995]
trigger2  = stateno = 1004 && (animelem = 12, > 0) && movecontact;Fast punchs
trigger3  = stateno = 1352 ;&& movecontact;Bird Kicks (revote)
trigger4  = stateno = 1310 && movecontact;Moon Kick (contacto)
trigger5  = stateno = 1300 && movecontact;Moon Kick (contacto)
trigger6  = stateno = 641 && movecontact;air strong kick 2
trigger7  = stateno = 602 && movecontact;air light kick 3
trigger8  = (stateno = [440,441]) && movecontact;crounch strong kick
trigger9  = stateno = 410 && movecontact;uppercut
trigger10 = stateno = 611 && movecontact
trigger11 = p2bodydist x = [-120,120]
trigger11 = p2bodydist y = [-120,120]
trigger11 = (stateno = [2000,2001]) && animelem = 2, > 1

;---------------------------------------------------------------------------
[State -1, Fast Punchs Combo]
type = ChangeState
value = 1000
triggerall = var(59) <= 0
triggerall = command = "Fast Punchs Combo"
trigger1 = statetype = S && ctrl || stateno = [990,995]
trigger2 = (stateno = [200,245]) && movecontact

;---------------------------------------------------------------------------
[State -1, Crazy Kicks]
type = ChangeState
value = 1100
triggerall = var(59) <= 0
triggerall = command = "Crazy Kicks"
trigger1 = statetype = S && ctrl || stateno = [990,995]
;trigger2 = (stateno = [200,240]) && !movecontact

;---------------------------------------------------------------------------
[State -1, Dash Elbow]
type = ChangeState
value = 1200
triggerall = var(59) <= 0
triggerall = command = "Dash Elbow"
trigger1 = statetype = S && ctrl || stateno = [990,995]
trigger2 = (stateno = [200,242]) && movecontact

;---------------------------------------------------------------------------
[State -1, Dash Elbow B]
type = ChangeState
value = 1210
triggerall = var(59) <= 0
triggerall = command = "Dash Elbow 2"
trigger1 = statetype = S && ctrl || stateno = [990,995]
trigger2 = (stateno = [200,242]) && movecontact
trigger3 = power >= 250
trigger3 = stateno = 1201 && movecontact 

;---------------------------------------------------------------------------
;A
[State -1, Moon Kick]
type = ChangeState
value = 1300
triggerall = var(59) <= 0
triggerall = command = "Moon Kick"
trigger1 = ctrl || stateno = [990,995]
trigger2 = (stateno = [200,641]) && movecontact

;B
[State -1, Moon Kick]
type = ChangeState
value = 1310
triggerall = var(59) <= 0
triggerall = command = "Moon Kick 2"
trigger1 = ctrl || stateno = [990,995]
trigger2 = (stateno = [200,641]) && movecontact

;---------------------------------------------------------------------------
;A
[State -1, Bird Kick]
type = ChangeState
value = 1350
triggerall = var(59) <= 0
triggerall = command = "Bird Kick"
trigger1 = ctrl || stateno = [990,995]
trigger2 = (stateno = [600,640]) && movecontact
trigger3 = stateno = 441 && movecontact
trigger4 = stateno = 1412 && movecontact

;B
[State -1, Bird Kick]
type = ChangeState
value = 1360
triggerall = var(59) <= 0
triggerall = command = "Bird Kick 2"
trigger1 = ctrl || stateno = [990,995]
trigger2 = (stateno = [600,640]) && movecontact
trigger3 = stateno = 441 && movecontact
trigger4 = stateno = 1412 && movecontact

;Combo
[State -1, Bird Kick]
type = ChangeState
triggerall =  stateno = 1353
triggerall = power >= 250
triggerall = var(3) < 3
trigger1 = command = "Bird Kick" ||  command = "Bird Kick 2" 
trigger2 = var(59) > 0
trigger2 = var(58) <= 100/(9-var(59))
value = 1351
ignorehitpause = 1

;---------------------------------------------------------------------------
;1° atque
[State -1, Swirl Kick]
type = ChangeState
value = 1400
triggerall = var(59) <= 0
triggerall = command = "Swirl Kick"
trigger1 = ctrl || stateno = [990,995]
trigger2 = (stateno = [200,241]) && movecontact

;2° atque
[State -1, Swirl Kick]
type = ChangeState
value = 1401
triggerall = var(3) = 1
trigger1 = stateno = 1400 && movecontact && animelem = 5, = 8

;3° atque
[State -1, Swirl Kick]
type = ChangeState
value = 1402
triggerall = var(3) = 1
trigger1 = stateno = 1401 && movecontact && animelem = 5, = 8

;---------------------------------------------------------------------------
;1° atque
[State -1, Swirl Kick Up]
type = ChangeState
value = 1410
triggerall = var(59) <= 0
triggerall = command = "Swirl Kick Up"
trigger1 = ctrl || stateno = [990,995]
trigger2 = (stateno = [200,241]) && movecontact
trigger3 = (stateno = [600,640]) && movecontact

;2° atque
[State -1, Swirl Kick Up]
type = ChangeState
value = 1411
triggerall = var(3) = 1
trigger1 = stateno = 1410 && movecontact && animelem = 5, = 8

;3° atque
[State -1, Swirl Kick Up]
type = ChangeState
value = 1412
triggerall = var(3) = 1
trigger1 = stateno = 1411 && movecontact && animelem = 5, = 8

;===============================================================================
;Movimientos Normales
;---------------------------------------------------------------------------

[State -1, Running Punh]
type = ChangeState
value = 300
triggerall = power >= 200
trigger1 = command = "Running Punch"
trigger1 = statetype != C && ctrl || (stateno = [990,995])
trigger2 = command = "Running Punch"
trigger2 = (stateno = [200,250]) && movecontact
trigger3 = command = "holdfwd" && (command = "x" ||  command = "y")
trigger3 = stateno = 100 && animelem = 2, >= 0 && ctrl

[State -1, Running Kick]
type = ChangeState 
value = 310
triggerall = power >= 200
trigger1 = command = "Running Kick"
trigger1 = statetype != C && ctrl || (stateno = [990,995])
trigger2 = command = "Running Kick"
trigger2 = (stateno = [200,250]) && movecontact
trigger3 = command = "holdfwd" && (command = "a" ||  command = "b")
trigger3 = stateno = 100 && animelem = 2, >= 0 && ctrl

;===========================================================================
; Movimientos Basicos
;---------------------------------------------------------------------------

[State --------BASIC MOVES----------]
type = Null
trigger1 = 1

;---------------------------------------------------------------------------
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = command = "FF"
trigger1 = statetype != C && ctrl
trigger2 = stateno = [990,995]

;---------------------------------------------------------------------------
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = command = "BB"
trigger1 = statetype != C && ctrl
trigger2 = stateno = [990,995]

;---------------------------------------------------------------------------
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = stateno != 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Recuperarse cerca del suelo
[State -1, Recovery] 
type = ChangeState
triggerall = stateno = 5050
triggerall = vel Y > 0
triggerall = pos Y >= -20
triggerall = alive
triggerall = canrecover
triggerall = var(5) = 0
trigger1 = command = "recovery"
value = 5200 

;Recuperarse en el medio del aire
[State -1, Recovery]
type = ChangeState
triggerall = stateno = 5050
triggerall = vel Y > -1
triggerall = alive
triggerall = canrecover
triggerall = var(5) = 0
trigger1 = command = "recovery"
value = 5210 

;---------------------------------------------------------------------------
;Comienzo
[State -1, Fly]
type = ChangeState
value = 989
triggerall = var(59) <= 0
triggerall = command = "fly"
trigger1  = ctrl

;Finalizacion
[State -1, Fly]
type = ChangeState
value = 50
triggerall = stateno = [990,995]
trigger1 = var(59) <= 0
trigger1 = command = "fly"
trigger1 = command = "holddown"
trigger2 = win || lose || roundstate = 3

;Cubrir
[State -1, Fly]
type = ChangeState
value = 120
;triggerall = var(59) <= 0
triggerall = stateno = [990,995]
triggerall = p2movetype = A
triggerall = inguarddist
trigger1 = command = "holdback"

;---------------------------------------------------------------------------
[State -1, Charge Ki]
type = ChangeState
triggerall = var(59) <= 0
triggerall = command = "holdb"
triggerall = command = "holdy"
triggerall = power < powermax
trigger1 = statetype != A && ctrl || stateno = [990,995]
value = 900

;Auto
[State -1, Charge Ki]
type = null;PowerAdd
triggerall = var(56) > 0
trigger1 = movetype != A
triggerall = var(5) = 0 
value = powermax/2000

;-------------------------------------------------------------------------------
;Terrestre
[State -1, Parry]
type = HitOverride
triggerall = statetype = S
triggerall = command = "fwd" && command != "down" && command != "up" && command != "back"
triggerall = var(5) = 0 
trigger1 = ctrl || stateno = 700
attr = SC,AP,AA        
slot = 0
stateno = 700
time = 8
forceair = 0

;-------------------------------------------------------------------------------
;Aereo
[State -1, Parry]
type = HitOverride
triggerall = statetype = A || stateno = [990,995]
triggerall = command = "fwd" && command != "down" && command != "up" && command != "back" 
triggerall = var(5) = 0
trigger1 = ctrl || stateno = 701
attr = SCA,AP,AA        
slot = 0
stateno = 701
time = 8
forceair = 0

;---------------------------------------------------------------------------
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = p2bodydist x = [-5,5]
trigger1 = command = "holdfwd"
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H || p2movetype = H && p2stateno = 2320
trigger2 = command = "holdback"
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H || p2movetype = H && p2stateno = 2320

;---------------------------------------------------------------------------
[State -1, Zanzoken]
type = ChangeState
value = 920
triggerall = var(59) <= 0
triggerall = command = "c"
triggerall = power >= 100
;triggerall = numhelper(925) < 8
triggerall = alive
triggerall = var(5) = 0 
triggerall = var(21) < 100
;trigger1 = statetype != A
trigger1  = ctrl && stateno != 921 || (stateno = 921 && time = 9) || stateno = [990,995]
trigger2  = (stateno = [200,245]) && movecontact && hitcount < 3
trigger3  = (stateno = [940,941]) && (animelem = 2, > 4)
trigger4  = stateno = [120,155]
trigger5  = stateno = 901 && time > 0
trigger6  = movetype = H && gethitvar(hitcount) <= 1 && var(5) = 0

;---------------------------------------------------------------------------
;1
[State -1, Fireball]
type = ChangeState
value = 2000+random%2
triggerall = var(59) <= 0
triggerall = command = "z"
triggerall = (power >= 100 && var(20) < 8) || (stateno = [2000,2001]) && var(20) < 5
triggerall = alive
;triggerall = numhelper(925) < 8
;trigger1 = statetype != A
trigger1 = ctrl || (stateno = 921 && time = 9) || stateno = [990,995]
trigger2 = (stateno = [200,249]) && movecontact

;2
[State -1, Fireball]
type = ChangeState
triggerall = var(59) <= 0
triggerall = stateno = [2000,2001]
triggerall = animelem = 2, > 3
triggerall = (power >= 100 && var(20) < 8) || var(20) < 5
trigger1 = command = "z"
value = ifelse(stateno=2000,2001,2000)

;-------------------------------------------------------------------------------
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(59) <= 0
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = ctrl && statetype != A || stateno = [990,995]
;trigger2 = stateno = 211 && movecontact

;---------------------------------------------------------------------------
[State -1, Stand Light Punch 2°]
type = ChangeState
value = 201
triggerall = var(59) <= 0
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = stateno = 200 && (time > 10 || movecontact)

;---------------------------------------------------------------------------
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = var(59) <= 0
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = p2bodydist x >= 3
trigger1 = ctrl && statetype != A || stateno = [990,995]
trigger2 = (stateno = [200,201]) && movecontact
trigger3 = stateno = 211 && movecontact

;---------------------------------------------------------------------------
[State -1, Stand Strong Punch 2°]
type = ChangeState
value = 211
triggerall = var(59) <= 0
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = p2bodydist x < 3
trigger1 = ctrl && statetype = S || stateno = [990,995]
;trigger2 = stateno = 210 && movecontact

;---------------------------------------------------------------------------
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = var(59) <= 0
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = ctrl && statetype != A || stateno = [990,995]
trigger2 = stateno = 201 && movecontact
trigger3 = stateno = 211 && movecontact

;---------------------------------------------------------------------------
[State -1, Stand Light Kick 2°]
type = ChangeState
value = 231
triggerall = var(59) <= 0
triggerall = command = "a"
triggerall = command = "holdback"
triggerall = command != "holddown"
trigger1 = stateno = 230 && movecontact

;---------------------------------------------------------------------------
[State -1, Stand Light Kick 3°]
type = ChangeState
value = 232
triggerall = var(59) <= 0
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = stateno = 230 && movecontact
trigger1 = command != "holdfwd" || command != "holdback"
trigger2 = stateno = 231 && movecontact

;---------------------------------------------------------------------------
[State -1, Stand Light Kick 4°]
type = ChangeState
value = 233
triggerall = var(59) <= 0
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
trigger1 = stateno = 232 && movecontact

;---------------------------------------------------------------------------
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = var(59) <= 0
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = ctrl && statetype != A || stateno = [990,995]
trigger2 = stateno = 232 && movecontact
trigger3 = stateno = 211 && movecontact

;---------------------------------------------------------------------------
;tele
[State -1, Standing Strong Kick 2°]
type = ChangeState
value = 241
triggerall = var(59) <= 0
triggerall = command = "b"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = command != "holddown"
trigger1 = stateno = 240 && movecontact

;---------------------------------------------------------------------------
[State -1, Standing Strong Kick 2°]
type = ChangeState
value = 242
triggerall = var(59) <= 0
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = stateno = 240 && movecontact

;---------------------------------------------------------------------------
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = var(59) <= 0
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 201 && movecontact
trigger3 = stateno = 211 && movecontact

;---------------------------------------------------------------------------
[State -1, Crouching Light Punch 2°]
type = ChangeState
value = 401
triggerall = var(59) <= 0
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = stateno = 400 && movecontact

;---------------------------------------------------------------------------
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = var(59) <= 0
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 401 && movecontact
trigger3 = (stateno = [210,211]) && movecontact
trigger4 = stateno = 241 && movecontact

;---------------------------------------------------------------------------
[State -1, Crouching Strong Punch 2°]
type = ChangeState
value = 411
triggerall = var(59) <= 0
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = stateno = 410 && movecontact
trigger2 = stateno = 211 && movecontact
trigger3 = stateno = 244 && movecontact
trigger4 = stateno = 440 && movecontact
trigger5 = stateno = 641 && movecontact
trigger6 = stateno = 810 && (target, stateno = 821) && numtarget(820)

;---------------------------------------------------------------------------
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = var(59) <= 0
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 401 && movecontact

;---------------------------------------------------------------------------
[State -1, Crouching Light Kick 2°]
type = ChangeState
value = 431
triggerall = var(59) <= 0
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = stateno = 430 && movecontact

;---------------------------------------------------------------------------
[State -1, Crouching Light Kick 3°]
type = ChangeState
value = 432
triggerall = var(59) <= 0
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = command = "holdback"
trigger1 = stateno = 431 && movecontact

;---------------------------------------------------------------------------
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = var(59) <= 0
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 401 && movecontact
trigger3 = stateno = 411 && movecontact
trigger4 = stateno = 431 && movecontact
trigger5 = (stateno = [241,243]) && movecontact

;---------------------------------------------------------------------------
[State -1, Crouching Strong Kick 2°]
type = ChangeState
value = 441
triggerall = var(59) <= 0
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = stateno = 440 && movecontact
trigger2 = stateno = 244 && movecontact
trigger3 = stateno = 410 && movecontact
trigger4 = stateno = 641 && movecontact

;---------------------------------------------------------------------------
; Jump
[State -1, Launcher]
type = ChangeState
value = 40
triggerall = var(59) !=  1
triggerall = statetype != A
triggerall = command = "holdup"
trigger1 = stateno = 410 && movecontact
trigger2 = stateno = 1004 && (animelem = 12, > 0) && movecontact && p2movetype = H ;Guard Kick B
;trigger3 = stateno = 1303 && (animelem = 2, > 0) && movecontact ;Slide Punch

;---------------------------------------------------------------------------
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
;trigger2 = stateno = 610
;trigger2 = animelem = 3, > 1

;---------------------------------------------------------------------------
;2°
[State -1, Jump Light Punch]
type = ChangeState
value = 601
triggerall = command = "x"
trigger1 = stateno = 600 && movecontact

;---------------------------------------------------------------------------
;3°
[State -1, Jump Light Punch]
type = ChangeState
value = 602
triggerall = command = "x"
triggerall = command = "holdfwd"
trigger1 = stateno = 601 && movecontact

;---------------------------------------------------------------------------
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y" || (stateno = [990,995]) && command = "holddown" && command = "x"
trigger1 = (statetype = A && ctrl) || (stateno = [990,995]) && command = "holddown"
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;---------------------------------------------------------------------------
[State -1, Jump Strong Punch]
type = ChangeState
value = 611
triggerall = command = "y" || (stateno = [990,995]) && command = "x"
trigger1 = stateno = 610 && movecontact

;---------------------------------------------------------------------------
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,601]) && movecontact

;---------------------------------------------------------------------------
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b" || (stateno = [990,995]) && command = "holddown" && command = "a"
trigger1 = (statetype = A && ctrl) || (stateno = [990,995]) && command = "holddown"
trigger2 = stateno = 601 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking
;---------------------------------------------------------------------------
;2°
[State -1, Jump Strong Kick]
type = ChangeState
value = 641
triggerall = command = "b"
trigger1 = stateno = 640 && movecontact
trigger2 = stateno = 410 && movecontact
trigger3 = stateno = 1104 && movecontact;Crazy Kicks (golpe final)
trigger4 = stateno = 1302 && anim = 1302;Bird Kick (contacto)

;---------------------------------------------------------------------------
[State -1, Jump Combo Dash]
type = ChangeState
value = 660
triggerall = command = "holdfwd"
triggerall = stateno != 660
triggerall = power >= 250
triggerall = p2bodydist x >= 50
trigger1 = (stateno = [600,659]) && movecontact

;------------
;Activacion
[State -1, AI]
type = VarSet
trigger1 = 1
v = 59
value = (AILevel)

;Terrestre
[State AI Stand-Parry]
type = HitOverride
attr = SCA,AP,AA        
slot = 0
stateno = 700
time = 8
forceair = 0
triggerall = var(59) > 0
triggerall = statetype = S
triggerall = var(5) = 0
trigger1 = var(58) <= 100/(9-var(59))
trigger1 = ctrl || stateno = 700
trigger1 = p2movetype = A

;Aereo
[State AI Stand-Parry]
type = HitOverride
attr = SCA,AP,AA        
slot = 0
stateno = 701
time = 8
forceair = 0
triggerall = var(59) > 0
triggerall = statetype = A || stateno = [990,995]
triggerall = var(5) = 0
trigger1 = var(58) <= 100/(9-var(59))
trigger1 = ctrl || stateno = 701
trigger1 = p2movetype = A
