;---------------------------------------------------------------------
; B-Vegeta64 CMD Files.
;---------------------------------------------------------------------
;-| Button Remapping |------------------------------------------------
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s
;-| Default Values |-----------------------------------------------------

;-| Hyper Motions |------------------------------------------------------
[Command]
name = "bigbang"
command = D, B, D, F, x
time = 80

[Command]
name = "final flash"
command =D, B, D, F, y
time = 80

[Command]
name = "Garlick Gun"
command = D, B, D, F, z
time = 80

[Command]
name = "Fast Proyects"
command = D, B, D, F, a
time = 80

[Command]
name = "Ki Murox3"
command =D, B, D, F, b
time = 80

[Command]
name = "Bola de Energia"
command = D, B, D, F, c
time = 80

;-| Special Motions |----------------------------------------------------

[Command]
name = "Shoot"
command = D, DF, F, z
time =  80

[Command]
name = "kienzan"
command = D, DB, B, z
time =  80

[Command]
name = "Super Wind"
command = D, DB, B, y
time =  80

[Command]
name = "KI Explode"
command = D, DB, B, a
time = 80

[Command]
name = "Kick air"
command = D, DB, B, b
time = 80

[Command]
name = "3 Shot"
command =D, DB, B, c
time =  80

[Command]
name = "Ki Muro"
command = ~D, DB, B, x
time =  80

[Command]
name = "Wind Attack"
command = ~D, DF, F, c
time =  80

;-| Automatic Combos |--------------------------------------------------
[Command]
name = "Combo x"
command = ~D, DF, F, x
time = 80

[Command]
name = "Combo y"
command = ~D, DF, F, y
time =  80

[Command]
name = "Combo a"
command = ~D, DF, F, a
time =  80

[Command]
name = "Combo b"
command = ~D, DF, F, b
time =  80

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
command = x + y
time = 1

[Command]
name = "fly"
command = z+c
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

;--[ Hold Button ]--------------------------------------------------------------
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

;--[ Artificial Intelligence ]--------------------------------------------------

[Command]
name = "CPU_1"
command = F, F, F, F, F, F
time = 1

[Command]
name = "CPU_2"
command = b, b, b, b, b, b
time = 1

[Command]
name = "CPU_3"
command = D, U, D, U, D, U
time = 1

[Command]
name = "CPU_4"
command = a, b, b, a, a, b
time = 1

[Command]
name = "CPU_5"
command = y, y, y, y, y, y
time = 1

[Command]
name = "CPU_6"
command = x, a, x, a, x, a
time = 1

[Command]
name = "CPU_7"
command = B, B, B, B, B, B
time = 1

[Command]
name = "CPU_8"
command = z, z, z, z, z
time = 1

[Command]
name = "CPU_9"
command = c, c, c, c, c, c
time = 1

[Command]
name = "CPU_10"
command = ~D, DF, F, F, DF, D, DB, B, a
time = 1

[Command]
name = "CPU_11"
command = ~D, DF, F, F, DF, D, DB, B, b
time = 1

[Command]
name = "CPU_12"
command = ~D, DF, F, F, DF, D, DB, B, c
time = 1

;---------------------------------------------------------------------------
; 2. State entry
; --------------
; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]
;=====================Hypers====================================================

;Bola de Energia
[State -1, Bola de Energia]
type = ChangeState
value = 1350
triggerall = command = "Bola de Energia" && Power >= 2000
trigger1 = (statetype = S && ctrl)

;Fast Proyects (?)
[State -1, Final Flash]
type = ChangeState
value = 1290
triggerall = command = "Fast Proyects" && Power >= 2000
trigger1 = (statetype = S && ctrl) || statetype = A

;Final Flash
[State -1, Final Flash]
type = ChangeState
value = 1250
triggerall = command = "final flash" && Power >= 1800
trigger1 = (statetype = S && ctrl) || statetype = A

;Garlick Gun
[State -1, Garlick Gun]
type = ChangeState
value = 1280
triggerall = command = "Garlick Gun" && Power >= 2000
trigger1 = (statetype = S && ctrl) || statetype = A

;BIG BANG ATTACK
[State -1, Big Bang Attack]
type = ChangeState
value = 1260
triggerall = command = "bigbang" && Power >= 2400
trigger1 = (statetype = S && ctrl) || statetype = A

;KI supershot x3
[State -1, KI muro x3]
type = ChangeState
value = 1300
triggerall = command = "Ki Murox3" && Power >= 2000
trigger1 = (statetype = S && ctrl)
;===============================================================================
;Shoot
[State -1, Shoot]
type = ChangeState
value = 1180
triggerall = command = "Shoot" && Power >= 800
trigger1 = statetype = S && ctrl || statetype = A
;Kienzan
[State -1, kienzan]
type = ChangeState
value = 1160
triggerall = command = "kienzan" && Power >= 1500
trigger1 = statetype = S && ctrl || statetype = A
;Super Wind
[State -1, Super Wind]
type = ChangeState
value = 1150
triggerall = command = "Super Wind" && Power >= 1000
trigger1 = statetype = S && ctrl || statetype = A
;KI supershot
[State -1, KI muro]
type = ChangeState
value = 1140
triggerall = command = "Ki Muro" && Power >= 1000
trigger1 = (statetype = S && ctrl) || statetype = A
;-------------------------------------------------------------------------------
;Kick air
[State -1, Kick air]
type = ChangeState
value = 234
triggerall = command = "Kick air"
trigger1 = ((Statetype = S) && (ctrl = 1))
trigger2 = stateno = 107
ignorehitpause = 1
;===================================Combos Auto=================================
[State -1, Combo x]
type = ChangeState
value = 1100
triggerall = command = "Combo x" && Power >= 250
trigger1 = Statetype = S && ctrl || Statetype = A
trigger2 = Stateno = 107
[State -1, Combo y]
type = ChangeState
value = 1110
triggerall = command = "Combo y" && Power >= 250
trigger1 = Statetype = S && ctrl || Statetype = A
trigger2 = Stateno = 107
[State -1, Combo a]
type = ChangeState
value = 1105
triggerall = command = "Combo a" && Power >= 250
trigger1 = Statetype = S && ctrl || Statetype = A
trigger2 = Stateno = 107
[State -1, Combo b]
type = ChangeState
value = 1111
triggerall = command = "Combo b" && Power >= 250
trigger1 = Statetype = S && ctrl || Statetype = A
trigger2 = Stateno = 107
;=======================Moves===================================================
; Charge
[State -1, Power Charge]
type = ChangeState
value = 950
triggerall = (command = "hold_x" && command = "hold_a") && Power < 4000
trigger1 = statetype = S && (ctrl) || Statetype = A
trigger2 = stateno = 107
;------Zanzoken by Crono---------------------
; Zanzoken Forward
[State -1, Zanzoken.F]
type = ChangeState
value = 2900
triggerall = P2stateno != [5000,5999]
triggerall = power >= 180
triggerall = (command = "b" && command = "y") && (prevstateno != 2900 || prevstateno != 2901) && (stateno = 100 || stateno = 109 || stateno = 108)
trigger1 = statetype = S && ctrl || statetype = A
; Zanzoken Backward
[State -1, Zanzoken.B]
type = ChangeState
value = 2905
triggerall = power >= 180
triggerall = (command = "b" && command = "y") && (prevstateno != 2905 || prevstateno != 2906) && (stateno = 105 || stateno = 110)
trigger1 = statetype = S && ctrl || statetype = A
; Zanzoken Air Backward
[State -1, Zanzoken.B]
type = ChangeState
value = 2907
triggerall = power >= 180
triggerall = (command = "b" && command = "y") && (prevstateno != 2905 || prevstateno != 2906) && (stateno = 111)
trigger1 = (statetype = S || statetype = A) && ctrl = 1
;====================================Fly=======================================
[State -1, Fly]
type = ChangeState
value = 116
triggerall = command = "fly"
trigger1 = statetype != A && ctrl
;---------------------------------------------------------------------------
; Air Dash Foward
[State -1, Air Dash Foward]
type = ChangeState
value = 109
triggerall = command = "FF"
trigger1 = statetype = A && ctrl
;-------------------------------------------------------------------------------
; Air Dash Backwards
[State -1, Air Dash Backwards]
type = ChangeState
value = 111
triggerall = command = "BB"
trigger1 = statetype = A && ctrl
;----------------------------------------
;Fast Move
[State -1, Fast Move]
type = ChangeState
value = 900
triggerall = command = "z" &&  power >= 200
trigger1 = statetype = A || statetype = S && ctrl
trigger2 = stateno = 107 || stateno = 108 || stateno = 110
trigger3 = stateno = 900 && ctrl = 0
;=========Shots KI==============================================================
;KI Explode
[State -1, KI Explode]
type = ChangeState
value = 1120
triggerall = command = "KI Explode" && Power >= 500
trigger1 = (statetype = S && ctrl)
;3 shots
[State -1, 3 shots]
type = ChangeState
value = 990
triggerall = command = "3 Shot" && Power >= 500
trigger1 = (statetype = S  && ctrl || statetype = A)
trigger2 = Stateno = 107
;Wind Attack
[State -1, Wind Attack]
type = ChangeState
value = 980
triggerall = command = "Wind Attack" && Power >= 500
trigger1 = (statetype = S && ctrl || statetype = A)
trigger2 = Stateno = 107
;Fireball
[State -1, Fireball]
type = ChangeState
value = 1000
triggerall = command = "c" && Power >= 200 && command != "fly"
trigger1 = (statetype = S || statetype = A) && ctrl
trigger2 = Stateno = 107
;Fireball2
[State -1, Fireball2]
type = ChangeState
value = 1001
triggerall = command = "c" && Power >= 200
trigger1 = stateno = 1000 && Time > 8
;===============================================================================
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;===================Combos Manuales y Golpes Básicos============================
;===============================Stand Hits======================================
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x" && command != "holddown"
trigger1 = statetype = S && ctrl || stateno = 107
trigger2 = ((stateno = 210) && (movecontact) && (time > 5))
trigger3 = (stateno = 232) && (movecontact)
;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y" && command != "holddown"
trigger1 = statetype = S && ctrl || stateno = 107
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 230) && (movecontact)
;---------------------------------------------------------------------------
;Stand Strong Punch B
[State -1, Stand Strong Punch B]
type = ChangeState
value = 202
triggerall = command = "y" && command = "x" && command != "holddown"
trigger1 = (stateno = 210) && (movecontact)
;---------------------------------------------------------------------------
;Stand Light Punch B
[State -1, Stand Light Punch XX]
type = ChangeState
value = 201
triggerall = command = "x" && command != "holddown"
trigger1 = (stateno = 202) && (movecontact)
;---------------------------------------------------------------------------
; Stand strong Punch C
[State -1, Stand strong Punch C]
type = ChangeState
value = 203
triggerall = command = "y" && command = "holdfwd" && command != "holddown"
trigger1 = (stateno = 201) && (movecontact)
trigger2 = (stateno = 232) && (movecontact)
trigger3 = (stateno = 233) && (movecontact)
;---------------------------------------------------------------------------
; Stand strong Punch D FINAL PUNCH COMBO1 (PUNCH)
[State -1, Stand strong Punch D]
type = ChangeState
value = 204
triggerall = command = "y" && command = "holdfwd" && command != "holddown"
trigger1 = stateno = 203 && (movecontact)
;---------------------------------------------------------------------------
; Stand strong Punch E FINAL PUNCH COMBO2 (KI SHOT)
[State -1, Stand strong Punch E]
type = ChangeState
value = 205
triggerall = command = "x" && command = "holdfwd" && command != "holddown"
trigger1 = stateno = 203 && (movecontact)
;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a" && command != "holddown"
trigger1 = statetype = S && ctrl || stateno = 107
trigger2 = (stateno = 200) && movecontact
;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = (command = "b") && (command != "holddown")
trigger1 = (statetype = S && ctrl) || (stateno = 107)
trigger2 = (stateno = 210) && (movecontact)
trigger3 = (stateno = 230) && (movecontact)
;---------------------------------------------------------------------------
;Stand Light Kick B
[State -1, Stand Light Kick B]
type = ChangeState
value = 231
triggerall = (command = "a") && (command = "b") && (command != "holddown")
trigger1 = (stateno = 240) && (prevstateno = 230) && (movecontact)
;---------------------------------------------------------------------------
;Stand Light Kick C
[State -1, Stand Light Kick C]
type = ChangeState
value = 232
triggerall = (command = "b") && (command != "holddown")
trigger1 = (stateno = 231) && (movecontact)
;---------------------------------------------------------------------------
;Stand Light Kick D
[State -1, Stand Light Kick D]
type = ChangeState
value = 233
triggerall = (command = "a") && (command = "holdfwd") && (command != "holddown")
trigger1 = (stateno = 232) && (movecontact)
;---------------------------------------------------------------------------
;Stand Light Kick E Final combo
[State -1, Stand Light Kick E]
type = ChangeState
value = 234
triggerall = (command = "a") && (command = "b") && (command = "holdfwd") && (command != "holddown")
trigger1 = (stateno = 233) && (movecontact) && (time > 5)
;---------------------------------------------------------------------------
;Stand Light Kick E Final combo
[State -1, Stand Light Kick E]
type = ChangeState
value = 235
triggerall = (command = "a") && (command != "holddown")
trigger1 = (stateno = 50) && (prevstateno = 234) && (time < 10) || stateno = 109
;---------------------------------------------------------------------------
;Stand Light Kick F Final combo
[State -1, Stand Light Kick F]
type = ChangeState
value = 236
triggerall = (command = "x") && (command = "holdfwd") && (command != "holddown")
trigger1 = (stateno = 233) && (movecontact)
;============================================================================
;Crouching Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x" || command = "y"
triggerall = command = "holddown"
trigger1 = (statetype=C) && (ctrl)
;---------------------------------------------------------------------------
;Crouching Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a" || command = "b"
triggerall = command = "holddown"
trigger1 = statetype=C && ctrl
;---------------------------------------------------------------------------
;Jump Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x" || command = "y"
trigger1 = statetype = A && ctrl
;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = ((statetype = A) && (ctrl))
;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = ((statetype = A) && (ctrl))

;===========================================================================
;Inteligencia artificial ;Code Basado Mugenfan
[State -1, AI_Varset]
type = VarSet
trigger1 = command = "CPU_1"
trigger2 = command = "CPU_2"
trigger3 = command = "CPU_3"
trigger4 = command = "CPU_4"
trigger5 = command = "CPU_5"
trigger6 = command = "CPU_6"
trigger7 = command = "CPU_7"
trigger8 = command = "CPU_8"
trigger9 = command = "CPU_9"
trigger10 = command = "CPU_10"
trigger11 = command = "CPU_11"
trigger12 = command = "CPU_12"
v = 59
value = 1

[State -1, AI_GarlickGun]
type = ChangeState
triggerall = power >= 2500
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = p2bodydist X >= 40
trigger1 = Random <= 300
trigger1 = statetype = S
trigger1 = p2statetype != C
value = 1280

[State -1, AI_Big Bang]
type = ChangeState
triggerall = power >= 2000
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = p2bodydist X >= 80
trigger1 = Random <= 300
trigger1 = statetype = S
trigger1 = p2statetype != C
value = 1260

[State -1, AI_Final Flash]
type = ChangeState
triggerall = power >= 2000
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = p2bodydist X >= 80
trigger1 = Random <= 300
trigger1 = statetype = S
trigger1 = p2statetype != C
value = 1250

[State -1, AI_ki_blast]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
triggerall = power >= 200
trigger1 = p2bodydist X >= 90
trigger1 = Random <= 400
trigger1 = statetype = S
trigger1 = p2statetype != C
value = 1000

[State -1, AI_kiensan]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
triggerall = power >= 1000
trigger1 = p2bodydist X >= 140
trigger1 = Random <= 400
trigger1 = statetype = S
trigger1 = p2statetype != C
value = 1160

[State -1, AI_Diagonal_Kicking]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
triggerall = power >= 500
trigger1 = p2bodydist X >= 20
trigger1 = Random <= 400
trigger1 = statetype = S
trigger1 = p2statetype != C
value = 234

[State -1, AI_Diagonal_Floor]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
triggerall = power >= 500
trigger1 = p2bodydist X >= 30
trigger1 = Random <= 400
trigger1 = statetype = S
trigger1 = p2statetype != C
value = 1140

[State -1, AI_Explosion]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
triggerall = power >= 500
trigger1 = p2bodydist X > 30
trigger1 = Random <= 400
trigger1 = statetype = S
trigger1 = p2statetype != C
value = 1120

[State -1, AI_WIND]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
triggerall = power >= 500
trigger1 = p2bodydist X > 55
trigger1 = Random <= 400
trigger1 = statetype = S
trigger1 = p2statetype != C
value = 980

[State -1, AI_WIND2]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = p2bodydist X > 55
trigger1 = Random <= 400
trigger1 = statetype = S
trigger1 = p2statetype != C
trigger1 = stateno = 980
value = 981

[State -1, Combo A]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = p2bodydist X > 20
trigger1 = Random <= 600
trigger1 = statetype = S
trigger1 = p2statetype != C
trigger1 = stateno = 980
value = 1110

[State -1, Combo B]
type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = p2bodydist X > 20
trigger1 = Random <= 600
trigger1 = statetype = S
trigger1 = p2statetype != C
trigger1 = stateno = 980
value = 1111

