; _____________________________________
;| Gohan Tipo Z by Zerberus_Dante      |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;===================<COMANDOS>================
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
;-| AI |---------------------------------------------------------------------

[Command]
name = "ai1"
command = x,x,x,x,x,x,x,x,x,x,a+b+c+z+x+y
time = 1

[Command]
name = "ai2"
command = y,y,y,y,y,y,y,y,y,y,a+b+c+z+x+y
time = 1

[Command]
name = "ai3"
command = z,z,z,z,z,z,z,z,z,z,z,z,a+b+c+z+x+y
time = 1

[Command]
name = "ai4"
command = F,F,F,F,F,F,F,F,F,F,F,F,a+b+c+z+x+y
time = 1

[Command]
name = "ai5"
command = F,B,F,B,F,B,F,B,F,B,F,B,a+b+c+z+x+y
time = 1

[Command]
name = "ai6"
command = B,D,F,U,a+b+c+z+x+y+B+D+F+U
time = 1

[Command]
name = "ai7"
command = B,D,F,U,B,D,F,U,a+b+c+z+x+y
time = 1

[Command]
name = "ai8"
command = F,B,F,F,F,B,B,U,U,D,D,a+b+c+z+x+y
time = 1

[Command]
name = "ai9"
command = a,b,c,z,x,y,a+b+c+z+x+y+U+D+F+B
time = 1

[Command]
name = "ai10"
command = F,x,B,x,D,x,U,x,F,x,B,x,D,x,U,x,a+b+c+z+x+y
time = 1

[Command]
name = "ai11"
command = x,y,z,a,b,c,x,y,z,a+b+c+z+x+y+F+B+F+B
time = 1

[Command]
name = "ai12"
command = F,F,F,a+b+c+z+x+y+U+D+F+B
time = 1

[Command]
name = "ai13"
command = U,U,U,U,U,U,U,U,U,U,U,a+b+c+z+x+y+U+D+F+B
time = 1

[Command]
name = "ai14"
command = F,B,F,B,F,a+b+c+z+x+y+U+B+D+F
time = 1

[Command]
name = "ai15"
command = D,B,D,B,D,B,D,a+b+c+z+x+y+F+F+U+U+D+D+B+B
time = 1

[Command]
name = "ai16"
command = D,B,D,B,D,B,D,a+b+c+z+x+y+F+F+U+U+D+D+B+B+B+B
time = 1

[Command]
name = "ai17"
command = x,y,z,a,b,c,x,y,z,a+b+c+z+x+y+F+B+F+B+y+F+B+F+B
time = 1

[Command]
name = "ai18"
command = x,y,z,a,b,c,x,y,z,a+b+c+z+x+y+F+B+F+B+F+B+F+B
time = 1

[Command]
name = "ai19"
command = x,y,z,a,b,c,x,y,z,a+b+c+z+x+y+F+B+F+B,c,x,y,z
time = 1

[Command]
name = "ai20"
command = F,F,F,a+b+c+z+x+y+U+D+F+B+c+z+x+y+U+D+F+B
time = 1


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
; Default value for the "time" parameter of a Command. Minimum 1.
; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.

[Defaults]
command.time=15
command.buffer.time=1

;-| Super Motions |--------------------------------------------------------
[command]
name = "HyperKiDown"
command = ~D,DB,B,D,DB,B,x
time = 30

[command]
name = "HyperKiDown"
command = ~D,DB,B,D,DB,B,z
time = 30

[command]
name = "UltimateHyperKikouha!!!!"
command = D,D,D,x
time = 40

[Command]
name = "implosion"
command = D,D,D,a+b
time = 40

[Command]
name = "implosion"
command = D,D,D,b+c
time = 40

[Command]
name = "Double MoonLight"
command = ~D,DB,B,D,DB,B,a
time = 30

[Command]
name = "Double MoonLight"
command = ~D,DB,B,D,DB,B,b
time = 30

[command]
name = "DarkWave"
command = D,DF,F,D,DF,F,z
time = 40

[command]
name = "DarkWave"
command = D,DF,F,D,DF,F,y
time = 40

[command]
name = "DarkWave"
command = D,DF,F,D,DF,F,x
time = 40

[command]
name = "Galactic Kiblast!!"
command = ~F,DF,D,DB,B,y+z
time = 30

[command]
name = "Galactic Kiblast!!"
command = ~F,DF,D,DB,B,x+y
time = 30

[Command]
name="hcf2p"
command=~B,DB,D,DF,F,x+y
time=30

[command]
name = "Slash Kick Fury"
command = D,DF,F,D,DF,F,a
time = 30

[command]
name = "Slash Kick Fury"
command = D,DF,F,D,DF,F,b
time = 30

[command]
name = "Slash Kick Fury"
command = D,DF,F,D,DF,F,c
time = 30

[command]
name = "Ki Fury"
command = D,DB,B,D,DB,B,a
time = 30

[command]
name = "Ki Fury"
command = D,DB,B,D,DB,B,b
time = 30

[command]
name = "Ki Fury"
command = D,DB,B,D,DB,B,c
time = 30

[Command]
name = "SF"
command = x,x,F,a,z
time = 48

[Command]
name = "SF"
command = x,x,F,a+z
time = 40

[Command]
name = "SF"
command = x,x,F+a+z
time = 32
;-| Special Motions |------------------------------------------------------


[command]
name = "Teletransporte Ade"
command = /$F,x+y
time = 30

[command]
name = "Teletransporte Atr"
command = /$B,x+y
time = 30

[command]
name = "BF_x"
command = B,F,x
time = 30

[command]
name = "DB_x"
command = D,B,x
time = 30

[command]
name = "DF_x"
command = D,F,x
time = 30

[command]
name = "DF_y"
command = D,F,y
time = 30

[command]
name = "DB_y"
command = D,B,y
time = 30

[command]
name = "FDDF_a"
command = ~F,D,DF,a
time = 20

[command]
name = "FDDF_b"
command = ~F,D,DF,b
time = 20

[command]
name = "b+y"
command = b+y
time = 15

[command]
name = "DF_z"
command = D,F,z
time = 30

[command]
name = "DF_a"
command = D,F,a
time = 30

[command]
name = "DB_a"
command = D,B,a
time = 30

[command]
name = "DF_b"
command = D,F,b
time = 30

[command]
name = "DB_b"
command = D,B,b
time = 30

[command]
name = "DF_c"
command = D,F,c
time = 30

[command]
name = "DB_c"
command = D,B,c
time = 30

[command]
name = "Teletransporte Junto p2"
command = x+y
time = 30

[Command]
name = "fly"
command = a+b
time = 30

[command]
name = "golpeestrellaaire1"
command = /D,z
time = 30

[command]
name = "golpeestrellaaire2"
command = /D,c
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
name = "AI Prueba"
command = a+b ; con el botón A+B activamos la AI
time = 1

[Command]
name = "AI desactivado"
command = b+c ; Con el boton B+C desactivamos la AI
time = 1

[Command]
name = "recovery" ;Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery2"
command = y+z
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

[Command]
name = "recovery2"
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

[Command]
name = "2k"
command = a+c
time = 1
[Command]
name = "2k"
command = b+c
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
name = "ki"
command = /x
time = 1

[Command]
name = "ki2"
command = /a
time = 1

[Command]
name = "Flyki"
command = a+b
time = 1

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
name = "hold_downford"
command = /$DF
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
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

;==========================(Tap Rapidly)================================================
[Command]
name = "3x"
command = x, x, x,
time = 30

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

[State -1, AI]
type = VarSet
triggerall = var(6) != 1
trigger1 = command = "ai1"
trigger2 = command = "ai2"
trigger3 = command = "ai3"
trigger4 = command = "ai4"
trigger5 = command = "ai5"
trigger6 = command = "ai6"
trigger7 = command = "ai7"
trigger8 = command = "ai8"
trigger9 = command = "ai9"
trigger10= command = "ai10"
trigger11= command = "ai11"
trigger12= command = "ai12"
trigger13= command = "ai13"
trigger14= command = "ai14"
trigger15= command = "ai15"
trigger16= command = "ai16"
trigger17= command = "ai17"
trigger18= command = "ai18"
trigger19= command = "ai19"
trigger20= command = "ai20"
v = 6
value = 1

;=============================================================================
;AI Artificial Inteligence

[State -1,  AI Run Fwd]
type = ChangeState
value = 100
triggerall = var(6)>=1 && stateno !=[100,105]
triggerall = roundstate=2 && statetype!=A && ctrl
triggerall = stateno != 0
trigger1 = ctrl && P2bodydist X > 0 && Random <= 480
trigger2 = ctrl && numhelper(4001) = 1 && Random <= 450

[State -1, AI Hyper Velocidad]
type = ChangeState
triggerall = var(6)=1
triggerall = prevstateno != [7000,7067]
triggerall = power >= 1000 && roundstate=2
trigger1 = ctrl && p2statetype = A && random <= 320
trigger2 = (stateno = [200,250]) && movehit && random <=300
trigger3 = (stateno = [400,450]) && movehit && random <=300
trigger4 = (stateno = [600,650]) && movehit && random <=300
value = 883

[State -1,AI Jump]
type = ChangeState
value = 40
triggerall= var(6)>=1 && numenemy
trigger1= roundstate=2 && statetype!=A && ctrl
trigger1= enemynear,movetype=A && p2bodydist x<160 && enemynear,hitdefattr=SC,AT
trigger2 = stateno = 450 && movehit && random <=801

[State -1,AI Guard]
type = ChangeState
value = 120
trigger1= var(6)>=1 && numenemy
trigger1= roundstate=2 && inguarddist
trigger1= ctrl && (stateno!=[120,155]) && !var(20)
trigger1= !(enemynear,hitdefattr=SCA,AT) && (enemynear,time<120)
trigger1= statetype!=A || p2statetype=A
trigger1= random<ifelse((p2stateno=[200,699]), 100, ifelse((p2stateno=[1000,2999]), 333, 1000))

[State -1,AI Backdash]
type = ChangeState
value = 105
trigger1= var(6)>=1 && numenemy
trigger1= roundstate=2 && statetype=S
trigger1= random < ifelse((enemynear,hitdefattr=SC,AT), 150, 50)
trigger1= ctrl && (stateno!=[100,106]) && (stateno!=[700,706])
trigger1= (enemynear,movetype=A) && backedgedist>=80 && (p2bodydist x=[80,120]) && (enemynear,vel x)

[State -1, AI Chargue ki]
type = ChangeState
value = 830
triggerall= var(6)>=1 && enemy,statetype = L
triggerall= roundstate=2 && statetype!=A && ctrl
triggerall= power<const(data.power) && power<powermax
trigger1= random<150 && !inguarddist && p2movetype!=A && p2dist x >= 330

[State -1, AI Taunt]
type = ChangeState
value = 195
triggerall= var(39)=0
triggerall= var(6)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A && life>=(enemynear,life)
trigger1= p2dist x>160 && (enemynear,vel y>0) && ctrl && random<100
trigger1= !(enemynear,ctrl) && (enemynear,movetype=H)

[State -1, AI Agarre]
type = ChangeState
value = 800
triggerall= var(6)>=1 && numenemy
triggerall= roundstate=2 && statetype=S && stateno!=100
triggerall= p2statetype!=A && p2statetype!=L && p2movetype!=H
triggerall= (p2bodydist x=[0,20]) && p2dist y=0
trigger1= ctrl && random<100
trigger2= ctrl && (p2stateno=[120,140]) && random<750

[State -1, AI SGS]
type = ChangeState
value = 20800
triggerall = var(39)=1
triggerall= var(6)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= power>=3000
triggerall= !(enemynear,ctrl) && (p2stateno!=40) && (p2stateno!=[5030,5119])
triggerall= (p2bodydist x=[-160,160]) && (p2dist y=[-120,0]) && p2statetype!=L
triggerall= (enemynear,vel y=0) || (enemynear,vel y>0 && enemynear,vel x<0)
trigger1= ctrl && (p2bodydist x=[0,60]) && (enemynear,statetype!=A) && random<250

[State -1, AI HDW]
type = ChangeState
value = 20600
triggerall = var(6)>=1
triggerall = numhelper(40013) != 1
triggerall = statetype != A
triggerall = p2stateno != 40402
triggerall = p2statetype != L
triggerall = power >= 1000
trigger1 = ctrl && p2dist x >= 310 && random <= 100
trigger2 = stateno = 210 && movehit && random<861
trigger3 = stateno = 240 && movehit && random<881
trigger5 = stateno = 450 && movehit && random<710
trigger6 = prevstateno = 20300 && ctrl  && power >= 1000 && random<999

[State -1, AI HVK]
type = ChangeState
value = 20100
triggerall = var(6)>=1
triggerall = prevstateno != 20100
triggerall= roundstate=2 && statetype=A && !inguarddist
triggerall= (p2bodydist x=[0,200]) && (p2dist y=[-50,50]) && p2statetype!=L
triggerall = power >= 1000
trigger1 = ctrl && random <= 200
trigger2 = stateno = 610 && movehit && random<861
trigger3 = stateno = 640 && movehit && random<881
trigger4 = stateno = 650 && movehit && random<997

[State -1, AI DC]
type = ChangeState
value = 20700
triggerall = var(6)>=1
triggerall = prevstateno != 20700
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = power >= 3000
trigger1 = ctrl && p2dist x < 180 && random <= 220
trigger2 = stateno = 210 && movehit && random<861
trigger3 = stateno = 240 && movehit && random<881
trigger4 = stateno = 250 && movehit && random<998
trigger5 = stateno = 450 && movehit && random<990

[State -1, AI HVK]
type = ChangeState
value = 20300
triggerall = var(6)>=1
triggerall = prevstateno != 20300
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = power >= 1000
trigger1 = ctrl && p2dist x < 110 && random <= 100
trigger2 = stateno = 210 && movehit && random<861
trigger3 = stateno = 240 && movehit && random<881
trigger4 = stateno = 250 && movehit && random<961
trigger5 = stateno = 450 && movehit && random<990
trigger6 = p2stateno = 1028 && power >= 1000 && random<996

[State -1, AI HKB]
type = ChangeState
value = 20500
triggerall = var(6)>=1
triggerall = prevstateno != 20500
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = power >= 2000
trigger1 = ctrl && p2dist x < 410 && random <= 100
trigger2 = stateno = 210 && movehit && random<861
trigger3 = stateno = 240 && movehit && random<881
trigger4 = stateno = 250 && movehit && random<961

[State -1, AI IMP]
type = ChangeState
value = 20200
triggerall = var(6)>=1
triggerall = prevstateno != 20200
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = power >= 3000
trigger1 = ctrl && p2dist x < 710 && random <= 120

[State -1, AI KF]
type = ChangeState
value = 21100
triggerall = var(39)=1
triggerall = var(6)>=1
triggerall = prevstateno != 21100
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = power >= 2000
trigger1 = ctrl && p2dist x < 710 && random <= 120

[State -1, AI Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(6)>=1
triggerall= roundstate=2 && statetype!=A && !inguarddist
triggerall= (p2bodydist x=[0,20]) && (p2dist y=[-50,50]) && p2statetype!=C && p2statetype!=L && !(enemynear,hitfall)
triggerall= (p2stateno!=[120,155]) && p2movetype!=A
trigger1 = ctrl && random <= 620

[State -1, AI Stand Medium Punch]
type = ChangeState
value = 210
triggerall = var(6)>=1
triggerall= roundstate=2 && statetype!=A && !inguarddist
triggerall= (p2bodydist x=[0,10]) && (p2dist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
triggerall= (p2stateno!=[120,155]) && p2movetype!=A
trigger1 = ctrl && random <= 520
trigger2 = stateno = 200 && movehit && random<975
trigger3 = stateno = 230 && movehit && random<965
trigger4 = stateno = 240 && movehit && random<235
trigger5 = stateno = 400 && movehit && random<946
trigger6 = stateno = 430 && movehit && random<951

[State -1, AI Stand fireball]
type = ChangeState
value = 220
triggerall = var(39)=0
triggerall = var(6)>=1
triggerall= roundstate=2 && statetype!=A && !inguarddist
triggerall= (p2bodydist x=[0,310]) && (p2dist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
triggerall= (p2stateno!=[120,155]) && p2movetype!=A
triggerall = power >= 500
trigger1 = ctrl && random <= 120
trigger2 = stateno = 200 && movehit && random<975
trigger3 = stateno = 230 && movehit && random<965
trigger4 = stateno = 240 && movehit && random<235
trigger5 = stateno = 400 && movehit && random<946
trigger6 = stateno = 430 && movehit && random<951

[State -1, AI Stand fireball sakky]
type = ChangeState
value = 222
triggerall = var(39)=1
triggerall = var(6)>=1
triggerall= roundstate=2 && statetype!=A && !inguarddist
triggerall= (p2bodydist x=[0,80]) && (p2dist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
triggerall= (p2stateno!=[120,155]) && p2movetype!=A
triggerall = power >= 500
trigger1 = ctrl && random <= 120
trigger2 = stateno = 200 && movehit && random<975
trigger3 = stateno = 230 && movehit && random<965
trigger4 = stateno = 240 && movehit && random<235
trigger5 = stateno = 400 && movehit && random<946
trigger6 = stateno = 430 && movehit && random<951

[State -1, AI Stand Light Kick]
type=changestate
value= 230
triggerall= var(6)>=1
triggerall = P2statetype != A
triggerall = P2statetype != C
triggerall= roundstate=2 && statetype!=A && !inguarddist
triggerall= (p2bodydist x=[0,20]) && (p2dist y=[-50,50]) && p2statetype!=C && p2statetype!=L && !(enemynear,hitfall)
triggerall= (p2stateno!=[120,155]) && p2movetype!=A
trigger1 = ctrl && random <= 620

[State -1, AI Stand Medium kick]
type = ChangeState
value = 240
triggerall = var(6)>=1
triggerall = P2statetype != A
triggerall= roundstate=2 && statetype!=A && !inguarddist
triggerall= (p2bodydist x=[0,10]) && (p2dist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
triggerall= (p2stateno!=[120,155]) && p2movetype!=A
trigger1 = ctrl && random <= 420
trigger2 = stateno = 200 && movehit && random<981
trigger3 = stateno = 210 && movehit && random<991
trigger4 = stateno = 230 && movehit && random<951
trigger5 = stateno = 400 && movehit && random<931
trigger6 = stateno = 410 && movehit && random<861

[State -1, AI Stand Heavy kick]
type = ChangeState
value = 250
triggerall = var(6)>=1
triggerall = P2statetype != A
triggerall= roundstate=2 && statetype!=A && !inguarddist
triggerall= (p2bodydist x=[0,30]) && (p2dist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
triggerall= (p2stateno!=[120,155]) && p2movetype!=A
trigger1 = ctrl && random <= 320
trigger2 = stateno = 200 && movehit && random<861
trigger3 = stateno = 210 && movehit && random<881
trigger4 = stateno = 230 && movehit && random<861
trigger5 = stateno = 240 && movehit && random<871

[State -1, AI Crouch Light Punch]
type = ChangeState
value = 400
triggerall = var(6)>=1
triggerall= roundstate=2 && statetype!=A && !inguarddist
triggerall= (p2bodydist x=[0,10]) && (p2dist y=[-50,50]) && p2statetype!=C && p2statetype!=L && !(enemynear,hitfall)
triggerall= (p2stateno!=[120,155]) && p2movetype!=A
trigger1 = ctrl && random <= 30

[State -1, AI Crouch Medium Punch]
type = ChangeState
value = 410
triggerall = var(6)>=1
triggerall = P2statetype != A
triggerall= roundstate=2 && statetype!=A && !inguarddist
triggerall= (p2bodydist x=[0,13]) && (p2dist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
triggerall= (p2stateno!=[120,155]) && p2movetype!=A
trigger1 = ctrl && random <= 420
trigger2 = stateno = 400 && movehit && random<995
trigger3 = stateno = 430 && movehit && random<965
trigger4 = stateno = 440 && movehit && random<235
trigger5 = stateno = 200 && movehit && random<946
trigger6 = stateno = 230 && movehit && random<951

[State -1, AI Crouch Heavy Punch]
type = ChangeState
value = 420
triggerall = var(39)=1
triggerall = var(6)>=1
triggerall= roundstate=2 && statetype!=A && !inguarddist
triggerall= (p2bodydist x=[0,10]) && (p2dist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
triggerall= (p2stateno!=[120,155]) && p2movetype!=A
trigger1 = ctrl && random <= 220
trigger2 = stateno = 400 && movehit && random<975
trigger4 = stateno = 440 && movehit && random<235
trigger5 = stateno = 200 && movehit && random<946
trigger6 = stateno = 230 && movehit && random<951

[State -1, AI Crouch Light Kick]
type=changestate
value= 430
triggerall= var(6)>=1
triggerall = P2statetype != A
triggerall = P2statetype != C
triggerall = prevstateno != 430
triggerall= roundstate=2 && statetype!=A && !inguarddist
triggerall= (p2bodydist x=[0,40]) && (p2dist y=[-50,50]) && p2statetype!=C && p2statetype!=L && !(enemynear,hitfall)
triggerall= (p2stateno!=[120,155]) && p2movetype!=A
trigger1 = ctrl && random <= 420

[State -1, AI Crouch Medium kick]
type = ChangeState
value = 440
triggerall = var(6)>=1
triggerall = P2statetype != A
triggerall= roundstate=2 && statetype!=A && !inguarddist
triggerall= (p2bodydist x=[0,10]) && (p2dist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
triggerall= (p2stateno!=[120,155]) && p2movetype!=A
trigger1 = ctrl && random <= 420
trigger2 = stateno = 400 && movehit && random<996
trigger3 = stateno = 410 && movehit && random<991
trigger4 = stateno = 430 && movehit && random<999
trigger5 = stateno = 200 && movehit && random<931
trigger6 = stateno = 210 && movehit && random<861

[State -1, AI Crouch Heavy kick]
type = ChangeState
value = 450
triggerall = var(6)>=1
triggerall = P2statetype != A
triggerall= roundstate=2 && statetype!=A && !inguarddist
triggerall= (p2bodydist x=[0,20]) && (p2dist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
triggerall= (p2stateno!=[120,155]) && p2movetype!=A
trigger1 = ctrl && random <= 620
trigger2 = stateno = 400 && movehit && random<961
trigger3 = stateno = 410 && movehit && random<861
trigger4 = stateno = 430 && movehit && random<981
trigger5 = stateno = 440 && movehit && random<871
trigger6 = stateno = 250 && movehit && random<991

[State -1, AI Air light punch]
type=changestate
value=600
triggerall= var(6)>=1
triggerall= roundstate=2 && statetype=A
triggerall= (p2bodydist x=[0,100]) && (p2dist y=[-50,50]) && p2statetype!=L
trigger1= ctrl && random<325
trigger2 = ctrl && prevstateno = 4382 && random<825

[State -1, AI Air medium punch]
type=changestate
value=610
triggerall= var(6)>=1
triggerall= roundstate=2 && statetype=A
triggerall= (p2bodydist x=[0,100]) && (p2dist y=[-50,50]) && p2statetype!=L
trigger1= ctrl && random<625
trigger2 = stateno = 600 && movehit && random<925
trigger3 = stateno = 630 && movehit && random<925
trigger4 = ctrl && prevstateno = 4382 && random<825

[State -1, AI Air Fireball]
type=changestate
value=620
triggerall= var(6)>=1
triggerall= roundstate=2 && statetype=A && !inguarddist
triggerall= (p2bodydist x=[0,55]) && (p2dist y=[-50,50]) && p2statetype!=L
trigger1= ctrl && random<525
trigger2 = stateno = 600 && movehit && random<225
trigger3 = stateno = 610 && movehit && random<225
trigger4 = stateno = 630 && movehit && random<225
trigger5 = stateno = 640 && movehit && random<225

[State -1, AI Air light kick]
type=changestate
value=630
triggerall= var(6)>=1
triggerall= roundstate=2 && statetype=A
triggerall= (p2bodydist x=[0,100]) && (p2dist y=[-50,50]) && p2statetype!=L
trigger1= ctrl && random<625
trigger2 = ctrl && prevstateno = 4382 && random<825

[State -1, AI Air medium kick]
type=changestate
value=640
triggerall= var(6)>=1
triggerall= roundstate=2 && statetype=A
triggerall= (p2bodydist x=[0,100]) && (p2dist y=[-50,50]) && p2statetype!=L
trigger1= ctrl && random<525
trigger2 = stateno = 600 && movehit && random<825
trigger3 = stateno = 610 && movehit && random<995
trigger4 = stateno = 630 && movehit && random<925
trigger5 = ctrl && prevstateno = 4382 && random<825

[State -1, AI Air heavy kick]
type=changestate
value=650
triggerall= var(6)>=1
triggerall= roundstate=2 && statetype=A && !inguarddist
triggerall= (p2bodydist x=[0,100]) && (p2dist y=[-50,50]) && p2statetype!=L
trigger1= ctrl && random<425
trigger2 = stateno = 600 && movehit && random<925
trigger3 = stateno = 610 && movehit && random<925
trigger4 = stateno = 630 && movehit && random<925
trigger5 = stateno = 640 && movehit && random<995
trigger6 = ctrl && prevstateno = 4382 && random<825

[State -1, AI Kikouha]
type = ChangeState
value = 10901
triggerall = var(6)>=1
triggerall = prevstateno = 10900
triggerall = power >= 300
triggerall = statetype != A
triggerall = p2statetype != L
trigger1 = stateno = 10900 && movehit && random<961

[State -1, AI Air Slash Rave]
type = ChangeState
value = ifelse(random > 500 ,11200,11201)
triggerall = var(6)>=1
triggerall= roundstate=2 && statetype=A && !inguarddist
triggerall= (p2bodydist x=[0,100]) && (p2dist y=[-50,50]) && p2statetype!=L
trigger1= ctrl && random<425
trigger2 = stateno = 620 && movehit && random<935
trigger3 = stateno = 640 && movehit && random<925
trigger4 = stateno = 650 && movehit && random<995
trigger5 = ctrl && prevstateno = 4382 && random<825

[State -1, AI Air Ki Explosion]
type = ChangeState
value = 10401
triggerall = var(6)>=1
triggerall = power >= 300
triggerall= roundstate=2 && statetype=A && !inguarddist
triggerall= (p2bodydist x=[0,50]) && (p2dist y=[-50,50]) && p2statetype!=L
trigger1= ctrl && random<425
trigger2 = stateno = 620 && movehit && random<935
trigger3 = stateno = 640 && movehit && random<925
trigger4 = stateno = 650 && movehit && random<995
trigger5 = ctrl && prevstateno = 4382 && random<825

[State -1, AI Dark Wave]
type = ChangeState
value = ifelse(random > 500 ,10600,10610)
triggerall = var(6)>=1
triggerall = numhelper(4001) != 1
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = power >= 200
trigger1 = ctrl && p2dist x < 760 && random <= 100
trigger2 = stateno = 210 && movehit && random<961
trigger3 = stateno = 240 && movehit && random<881
trigger4 = stateno = 250 && movehit && random<761

[State -1, AI Vortex kicks]
type = ChangeState
value = ifelse(random > 500 ,10500,10510)
triggerall = var(6)>=1
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = (stateno != [10500,10510])
trigger1 = ctrl && p2dist x < 80 && random <= 100
trigger2 = stateno = 210 && movehit && random<861
trigger3 = stateno = 240 && movehit && random<881
trigger4 = stateno = 250 && movehit && random<941
trigger5 = stateno = 450 && movehit && random <210

[State -1, AI Rising Moonsault]
type = ChangeState
value = ifelse(random > 500 ,11000,11100)
triggerall = var(6)>=1
triggerall = (stateno != [11000,11100])
triggerall = (prevstateno != [11000,11100])
triggerall = statetype != A
triggerall = p2statetype != L
trigger1 = ctrl && p2dist x < 60 && random <= 60
trigger2 = stateno = 210 && movehit && random<861
trigger3 = stateno = 240 && movehit && random<881
trigger4 = stateno = 250 && movehit && random<961
trigger5 = stateno = 450 && movehit && random <990

[State -1, AI Dash kick]
type = ChangeState
value = 10900
triggerall = var(6)>=1
triggerall = stateno != 10900
triggerall = prevstateno != 10900
triggerall = statetype != A
triggerall = p2movetype != A
triggerall = p2statetype != L
trigger1 = ctrl && p2dist x < 130 && random <= 10
trigger2 = stateno = 210 && movehit && random<861
trigger3 = stateno = 240 && movehit && random<881
trigger4 = stateno = 250 && movehit && random<997

;==============================================================================
;Commands Player

[State -1, IP]
type = ChangeState
value = 20200
triggerall = var(6)<= 0
triggerall = command = "implosion"
triggerall = power >= 3000
trigger1 = (statetype = s) && ctrl

[State -1, SF]
type = ChangeState
value = 20800
triggerall = var(6)<= 0
triggerall = var(39) = 1
triggerall = command = "SF"
triggerall = power >= 3000
trigger1 = (statetype = s) && ctrl

[State -1, KD]
type = ChangeState
value = 20400
triggerall = var(6)<= 0
triggerall = command = "HyperKiDown"
triggerall = power >= 2000
trigger1 = (statetype = s) && ctrl

[State -1, KF]
type = ChangeState
value = 21100
triggerall = var(39)= 1
triggerall = var(6)<= 0
triggerall = command = "Ki Fury"
triggerall = power >= 2000
trigger1 = (statetype = s) && ctrl

[State -1, DM]
type = ChangeState
value = 20700
triggerall = var(6)<= 0
triggerall = command = "Double MoonLight"
triggerall = power >= 3000
trigger1 = (statetype = s) && ctrl

[State -1, KB]
type = ChangeState
value = 20500
triggerall = var(6)<= 0
triggerall = command = "Galactic Kiblast!!"
triggerall = power >= 2000
trigger1 = (statetype = s) && ctrl

[State -1, DW]
type = ChangeState
value = 20600
triggerall = var(6)<= 0
triggerall = command = "DarkWave"
triggerall = power >= 1000
trigger1 = (statetype = s) && ctrl

[State -1, DWS]
type = ChangeState
value = 20300
triggerall = var(6)<= 0
triggerall = command = "Slash Kick Fury"
triggerall = power >= 1000
trigger1 = (statetype = s) && ctrl

[State -1, DWS]
type = ChangeState
value = 20100
triggerall = var(6)<= 0
triggerall = command = "Slash Kick Fury"
triggerall = power >= 1000
trigger1 = (statetype = a) && ctrl

[State -1,SA]
type = ChangeState
value = 7022
triggerall = var(6)<= 0
triggerall = command = "b+y"
triggerall = power >= 2000
triggerall = StateType != A
triggerall = StateType = S
triggerall = var (25) = 0
trigger1 = ctrl

[State -1, UHKA]
type = ChangeState
value = 30513
triggerall = var(6)<= 0
triggerall = var(39) = 1
triggerall = command = "UltimateHyperKikouha!!!!"
triggerall = power >= 3000 && var(21) = 0 && life <= 200 ;&& roundno = 3
trigger1 = (statetype = s) && ctrl

[State -1, DP1]
type = ChangeState
value = 1006
triggerall = var(6)<= 0
triggerall = command = "x"
trigger1 = (stateno = 1004 || stateno = 1005) && Time > 5 && hitcount >= 9

[State -1, DP2]
type = ChangeState
value = 1005
triggerall = var(6)<= 0
triggerall = command = "x" && hitcount < 9
trigger1 = stateno = 1004 && Time > 5 && movehit

[State -1, DP3]
type = ChangeState
value = 1004
triggerall = var(6)<= 0
triggerall = command = "x" && hitcount < 9 && moveguarded = 0
trigger1 = stateno = 1005 && Time > 5

[State -1, DaP1]
type = ChangeState
value = 1016
triggerall = var(6)<= 0
triggerall = command = "a"
trigger1 = (stateno = 1014 || stateno = 1015) && Time > 5 && hitcount >= 9

[State -1, DP2]
type = ChangeState
value = 1015
triggerall = var(6)<= 0
triggerall = command = "a" && hitcount < 9
trigger1 = stateno = 1014 && Time > 5 && movehit

[State -1, DP3]
type = ChangeState
value = 1014
triggerall = var(6)<= 0
triggerall = command = "a" && hitcount < 9 && moveguarded = 0
trigger1 = stateno = 1015 && Time > 5

[State -1, AD]
type = ChangeState
value = 1001
triggerall = var(6)<= 0
triggerall = command = "FF"
trigger1 = (statetype = A) && ctrl

[State -1, AD]
type = ChangeState
value = 1051
triggerall = var(6)<= 0
triggerall = command = "BB"
trigger1 = (statetype = A) && ctrl

[State -1, Help Menu]
type = ChangeState
value = 8499
triggerall = var(6) = 0
;triggerall = var(39) = 0
triggerall = command = "start" && command = "holddown"
trigger1 = statetype = c && ctrl

[State -1,Kykouha]
type = ChangeState
value =  10300
triggerall = var(6)<= 0
triggerall = command = "DB_c"
triggerall = power >= 1000
trigger1 = (statetype = s) && ctrl

[State -1,Kykouha A]
type = ChangeState
value =  10301
triggerall = var(6)<= 0
triggerall = command = "DB_c"
triggerall = power >= 1000
trigger1 = (statetype = a) && ctrl

[State -1, HTail]
type = ChangeState
value = 10700
triggerall = var(6)<= 0
triggerall = command = "DF_c"
triggerall = power >= 100
triggerall = p2stateno!=5300
triggerall = p2stateno!=1115110
triggerall = p2stateno!=1115120
trigger1 = (statetype = s) && ctrl

[State -1, Fast HKick]
type = ChangeState
value = 10510
triggerall = var(6)<= 0
triggerall = command = "DB_b"
trigger1 = (statetype = s) && ctrl

[State -1, Fast HKick]
type = ChangeState
value = 10500
triggerall = var(6)<= 0
triggerall = command = "DB_a"
trigger1 = (statetype = s) && ctrl

[State -1, Rising Moonsault]
type = ChangeState
value = 11000
triggerall = var(6) <= 0
triggerall = command = "FDDF_a"
trigger1 = (statetype = s) && ctrl

[State -1, Rising Moonsault]
type = ChangeState
value = 11100
triggerall = var(6) <= 0
triggerall = command = "FDDF_b"
trigger1 = (statetype = s) && ctrl

[State -1, Dark Wave]
type = ChangeState
value = 10600
triggerall = var(6) <= 0
triggerall = numhelper(4001) != 1
triggerall = command = "DF_x"
triggerall = power >= 200
trigger1 = (statetype = s) && ctrl

[State -1, Dark Wave]
type = ChangeState
value = 10610
triggerall = var(6) <= 0
triggerall = numhelper(4001) != 1
triggerall = command = "DF_y"
triggerall = power >= 300
trigger1 = (statetype = s) && ctrl

[State -1, Ki Explosion]
type = ChangeState
value = 10400
triggerall = var(6) <= 0
triggerall = command = "DB_y"
triggerall = power >= 300
trigger1 = (statetype = s) && ctrl

[State -1, Ki Explosion]
type = ChangeState
value = 10401
triggerall = var(6) <= 0
triggerall = command = "DB_y"
triggerall = power >= 300
trigger1 = (statetype = a) && ctrl

[State -1, Air Slash Rave ]
type = ChangeState
value = 11200
triggerall = var(6) <= 0
triggerall = command = "DB_a"
trigger1 = (statetype = a) && ctrl

[State -1, Air Slash Rave ]
type = ChangeState
value = 11201
triggerall = var(6) <= 0
triggerall = command = "DB_b"
trigger1 = (statetype = a) && ctrl

[State -1, Dash Kick ]
type = ChangeState
value = 10900
triggerall = var(6) <= 0
triggerall = command = "DF_b"
trigger1 = (statetype = s) && ctrl

[State -1, Hyper Velocity]
type = ChangeState
value = 7099
triggerall = var(6) <= 0
triggerall = command = "Teletransporte Atr"
trigger1 = (statetype = s) && ctrl

[State -1, Hyper Velocity]
type = ChangeState
value = 7098
triggerall = var(6) <= 0
triggerall = command = "Teletransporte Ade"
trigger1 = (statetype = s) && ctrl

[State -1, Hyper Velocity]
type = ChangeState
value = 883
triggerall = var(6) <= 0
triggerall = command = "Teletransporte Junto p2"
triggerall = power >= 800
trigger1 =  ctrl

[State -1, Cargar KI]
type = ChangeState
value = 830
triggerall = var(6) <= 0
triggerall = command = "ki" && command = "ki2"
triggerall = power < 3000
triggerall = command != "holddown"
triggerall = ctrl = 1
trigger1 = statetype = S

;===========================================================================
;Normal
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(6) <= 0
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------

[State -1, Fly Fwd]
type = ChangeState
value = 18000
triggerall = var(6) <=0
triggerall = Alive = 1
triggerall = command = "Flyki" && command = "holdfwd"
trigger1 = p2bodydist X > 10
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Fly Back]
type = ChangeState
value = 18001
triggerall = var(6) <= 0
triggerall = Alive = 1
triggerall = command = "Flyki" && command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(6) <= 0
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Throw]
type = ChangeState
value = 800
trigger1 = var(6)<=0
trigger1 =  command="2k" && (command="holdfwd" || command="holdback")
trigger1 = roundstate=2 && ctrl && statetype=S && stateno!=100

;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = var(6) <= 0
triggerall = var(39 ) = 0
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, SLP]
type = ChangeState
value = 200
triggerall = var(6) <= 0
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, SMP]
type = ChangeState
value = 210
triggerall = var(6) <= 0
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand fireball
[State -1, SF]
type = ChangeState
value = 220
triggerall = var(6) <= 0
triggerall = var(39) = 0
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = power >= 100
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Sakky ki
[State -1, SL]
type = ChangeState
value = 222
triggerall = var(6) <= 0
triggerall = var(39) = 1
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = power >= 300
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, SLK]
type = ChangeState
value = 230
triggerall = var(6) <= 0
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Stand Medium Kick
[State -1, SMK]
type = ChangeState
value = 240
triggerall = var(6) <= 0
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;Stand Strong Kick
[State -1, SSK]
type = ChangeState
value = 250
triggerall = var(6) <= 0
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, CLP]
type = ChangeState
value = 400
triggerall = var(6) <= 0
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Medium Punch
[State -1, CMP]
type = ChangeState
value = 410
triggerall = var(6) <= 0
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, CSP]
type = ChangeState
value = 420
triggerall = var(6) <= 0
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, CLK]
type = ChangeState
value = 430
triggerall = var(6) <= 0
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, CMK]
type = ChangeState
value = 440
triggerall = var(6) <= 0
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, CSK]
type = ChangeState
value = 450
triggerall = var(6) <= 0
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, JLP]
type = ChangeState
value = 600
triggerall = var(6) <= 0
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, JMP]
type = ChangeState
value = 610
triggerall = var(6) <= 0
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, JSP]
type = ChangeState
value = 620
triggerall = var(6) <= 0
triggerall = command = "z"
triggerall = power >= 100
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, JLK]
type = ChangeState
value = 630
triggerall = var(6) <= 0
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, JMK]
type = ChangeState
value = 640
triggerall = var(6) <= 0
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, JSK]
type = ChangeState
value = 650
triggerall = var(6) <= 0
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------

