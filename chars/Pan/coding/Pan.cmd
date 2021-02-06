; The CMD file.

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
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
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


;-| Super Motions |--------------------------------------------------------

[Command]
name = "KameHameHa"
command = D, DF, F, B, a+b
time = 30
[Command];easy gameset
name = "KameHameHa"
command = D, F, B, a+b
time = 30

[Command]
name = "Maiden's Rage"
command = D, DB, B, F, a+b
time = 30
[Command];easy gameset
name = "Maiden's Rage"
command = D, B, F, a+b
time = 30

[Command]
name = "Multiple Kaiko Ha"
command = D, DF, F, x+y
time = 10

;-| Hyper's Motions |--------------------------------------------------------

[Command]
name = "Meteor smash"
command = F, DF, D, DB, B, x+y
time = 30

;-| Secret Supers attacks |-----------------------------------------------------
;[Command]
;name = "Queen Bee Mode"
;command = ?
;time = 30

;[Command]
;name = "Robot M2 Mode"
;command = ?
;time = 30

;[Command]
;name = "Chibi Pan Mode"
;command = ?
;time = 30

;[Command];Dragon Ball Multiverse
;name = "SSJ Pan Mode"
;command = ?
;time = 30

;[Command];Goku SSJ4 Combo
;name = "Ultimate Helper"
;command = ?
;time = 30

;---------Damage---------;
;Queen Bee = -1000       ;
;Robot M2 = -1500        ;
;Chibi Pan = -2000       ;
;SSJ Pan = -2500         ;
;Ultimate Helper = -3000 ;
;------------------------;

;-| special physic attacks |-----------------------------------------------------
[Command]
name = "Giru Spin Shield"
command = F, DF, D, DB, B, c  ;D,D,c ;is not so...   easy? Lol
time = 30

[Command]
name = "Giru Spin Shield"
command = B, DB, D, DF, F, c  ;D,D,c ;is not so...   easy? Lol
time = 30
;-| special power attacks |-----------------------------------------------------

;-| power normal attacks |-----------------------------------------------------
[Command]
name = "Giru Rocket Bomb"
command = ~D, DF, F, B, c
time = 20

[Command]
name = "Double Dan Shot"
command = ~D, DB, B, c

[Command]
name = "Maiden Elbow X"
command = ~D, DB, B, x

[Command]
name = "Maiden Elbow Y"
command = ~D, DB, B, y

[Command]
name = "Maiden Star X"
command = ~D, DF, F, x

[Command]
name = "Maiden Star Y"
command = ~D, DF, F, y

[Command]
name ="Double Spin Kick"
command = ~D, DB, B, F, a

[Command]
name ="Double Spin Kick"
command = ~D, DB, B, F, b

[Command]
name = "Spin Kick A"
command = ~D, DB, B, a

[Command]
name = "Spin Kick B"
command = ~D, DB, B, b

[Command]
name = "Meteor Punch"
command = ~20$B, F, x
time = 20

[Command]
name = "Meteor Punch"
command = ~20$B, F, y
time = 20

[Command]
name = "Angel Bird"
command = ~D, DF, F, a
time = 20

[Command]
name = "Angel Bird"
command = ~D, DF, F, b
time = 20

;-| Physical Attacks |-----------------------------------------------------
[Command]
name = "rapidkicks"
command = b, b
time = 15

[Command]
name = "Sonic Elbow X"
command = ~D, DB, B, F, x

[Command]
name = "Sonic Elbow Y"
command = ~D, DB, B, F, y

;-| Special Combo Attacks |-----------------------------------------------------

[Command]
name = "flycombo"
command = x+y

[Command]
name = "bratuppercut"
command = x+y

;[Command]
;name = "bratspin"
;command = a+b

[Command]
name = "zanzokencombo"
command = a+b

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

;-| 2/3 Button Combination |-----------------------------------------------

[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "fly"
command = z+c
time = 1

[Command]
name = "Barrier"
command = x+a
time = 1

[Command]
name = "Counter"
command = y+z
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

; Don't remove the following line. It's required by the CMD standard.
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

[State -1, IA]
type = VarSet
triggerall = var(40) != 1
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
var(40) = 1

;===========================================================================
;===========================================================================
;special Power Moves
;===========================================================================
;===========================================================================
;Giru Spin Shield
[State -1, Giru Spin Shield]
type = ChangeState
value = 3500
triggerall = stateno != 3500
triggerall = numhelper(22001) = 0
triggerall = numhelper(22002) = 0
triggerall = command = "Giru Spin Shield"
triggerall = power >= 1000
triggerall = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;KameHameHa
[State -1, KameHameHa]
type = ChangeState
value = 3800
triggerall = (command = "KameHameHa") && command != "holddown" && power >= 1000
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
;KameHameHa Chain
[State -1, KameHameHa Chain]
type = ChangeState
value = 3804
triggerall = (command = "KameHameHa") && command != "holddown" && power >= 1000
trigger1 = (stateno = [260, 450]) && movecontact && pos y = 0
trigger2 = (stateno = [200, 640]) && movecontact  && pos y = 0
;---------------------------------------------------------------------------
;KameHameHa Air
[State -1, KameHameHa Air]
type = ChangeState
value = 3850
triggerall = (command = "KameHameHa") && command != "holddown" && power >= 1000
trigger1 = statetype = A && ctrl
;---------------------------------------------------------------------------
;Kamehameha Air Chain
[State -1, Kamehameha Air Chain]
type = ChangeState
value = 3854
triggerall = (command = "KameHameHa") && command != "holddown" && power >= 1000
triggerall = statetype = A
trigger1 = (stateno = [260, 450]) && movecontact && pos y = 0
trigger2 = (stateno = [200, 640]) && movecontact  && pos y = 0
;---------------------------------------------------------------------------
; Power Charge
[State -1, Charge Power]
type = ChangeState
value = 700
triggerall = var(40) != 1
triggerall = command = "hold_b" && command = "hold_y" && power < 3000
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Zanzoken Forward
[State -1, Zanzoken.F]
type = ChangeState
value = 1002
triggerall = Alive = 1 && command = "hold_z"
triggerall = stateno != [1005,1011]
trigger1 = stateno != 1002 && power >= 200
trigger1 = command = "FF"
trigger1 = (statetype = S || statetype = A) ;&& ctrl
;---------------------------------------------------------------------------
; Zanzoken Backward
[State -1, Zanzoken.B]
type = ChangeState
value = 1003
triggerall = Alive = 1 && command = "hold_z"
triggerall = stateno != [1005,1011]
trigger1 = stateno != 1003 && power >= 200
trigger1 = command = "BB"
trigger1 = (statetype = S || statetype = A) ;&& ctrl
;---------------------------------------------------------------------------
; Zanzoken Upward
[State -1, Zanzoken.U]
type = ChangeState
value = 1004
triggerall = Alive = 1 && command = "hold_z"
triggerall = stateno != [1005,1011]
triggerall = stateno != 1004 && power >= 200
trigger1 = command = "UU"
trigger1 = (statetype = S || statetype = A) ;&& ctrl

;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;State -1, AirRunFwd
[State -1, AirRunFwd]
type = ChangeState
value = 102
triggerall = var(4) = 0 && var(3)!= 1;Pulo
trigger1 = command = "FF" && statetype = A && ctrl && stateno != [1006,1011] ;&& (stateno != 100 || stateno != 102)
trigger1 =(stateno != 100 || stateno != 102)
trigger2 = command = "FF" && (stateno = [600,650]) && time > 25

; Air Run_Back
[State -1, AirRunBack]
type = ChangeState
value = 107
triggerall = var(4) = 0 && var(3)!= 1;Pulo
trigger1 = command = "BB" && statetype = A && ctrl && stateno != [1006,1011] ;&& (stateno != 100 || stateno != 102)
trigger1 = (stateno != 107)
trigger2 = command = "BB" && (stateno = [600,650]) && time > 25

; Air Run_Up
[State -1, AirUp]
type = ChangeState
value = 109
triggerall = var(4) = 0 && var(3)!= 1 && power >= 1500;Pulo
trigger1 = command = "UU" && statetype = A && ctrl && stateno != [1006,1011] ;&& (stateno != 100 || stateno != 102)
trigger1 = (stateno != 109)
trigger2 = command = "UU" && (stateno = [600,650]) && time > 25

;---------------------------------------------------------------------------
;Go To Fly
[State -1, Go To Fly]
type = ChangeState
value = 1005
triggerall = command = "fly"
trigger1 = power > 0
trigger1 = statetype = S || statetype = C
trigger1 = pos y = 0
trigger1 = ctrl
trigger2 = stateno = [1000,1004]

;Fly
[State -1, Fly]
type = ChangeState
value = 1006
trigger1 = command = "fly"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = stateno != [1006,1010]

;Fly Fwd
[State -1, Fly Fwd]
type = ChangeState
value = 1007
triggerall = command = "holdfwd"
trigger1 = stateno = [1006,1010]
trigger1 = stateno != 1007

;Fly Back
[State -1, Fly Back]
type = ChangeState
value = 1008
triggerall = command = "holdback"
trigger1 = stateno = [1006,1010]
trigger1 = stateno != 1008

;Fly Up
[State -1, Fly Up]
type = ChangeState
value = 1009
triggerall = command != "holdfwd" && command != "holdback"
triggerall = command = "holdup"
triggerall = stateno = 1006
trigger1 = stateno != 1009

;Fly Down
[State -1, Fly Down]
type = ChangeState
value = 1010
triggerall = command != "holdfwd" && command != "holdback"
triggerall = command = "holddown"
triggerall = stateno = 1006
trigger1 = stateno != 1010

;---------------------------------------------------------------------------
; Super Jump Extracted on Vegeta by Duende Macabro
[State -1, Superjump Up]
type = changestate
triggerall = stateno != 262
triggerall = command = "superjump" && statetype!= A || (stateno = 261 && movecontact && command = "holdup")
trigger1 = stateno != 261 = ctrl = 1
value = 55

[State -1, Superjump Foward]
type=changestate
triggerall = command = "superjumpF" && statetype != A
trigger1 = ctrl = 1
value = 57

[State -1,Superjump Back]
type = changestate
triggerall = command = "superjumpB" && statetype != A
trigger1 = ctrl = 1
value = 59

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;===========================================================================
;===========================================================================
;Basic Power Moves
;===========================================================================
;===========================================================================
;Maiden's Burst
[State -1, Maiden's Burst]
type = ChangeState
value = 750
triggerall = command = "Barrier" && stateno != 750
triggerall = power >= 500 && statetype != A
trigger1 = (stateno = [150, 156]) && (statetype = S || statetype = C)
trigger2 = p2dist x <= 50

;---------------------------------------------------------------------------
;Double Energy Dan Shot
[State -1, Double Energy Dan Shot]
type = ChangeState
value = 1510
triggerall = command = "Double Dan Shot"
triggerall = var(20) >= 0
triggerall = power >= 350
triggerall = stateno != [246,247]
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [1006,1011]
trigger3 = stateno = [210,250]
trigger3 = movehit

;---------------------------------------------------------------------------
;Air Double Energy Dan Shot
[State -1, Air Double Kaiko Dan Shot]
type = ChangeState
value = 1512
triggerall = command = "Double Dan Shot"
triggerall = pos y < -50 && !pos y > -50
triggerall = var(20) >= 0
triggerall = power >= 350
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [1006,1011]
trigger3 = stateno = [210,250]
trigger3 = movehit
;---------------------------------------------------------------------------
;Giru Rocket Bomb
[State -1, Giru Rocket Bomb]
type = ChangeState
value = 1600
triggerall = command = "Giru Rocket Bomb"
triggerall = power >= 300
triggerall = statetype = S
triggerall = numhelper(22001) = 0
triggerall = numhelper(22002) = 0
triggerall = stateno != [246,247]
trigger1 = ctrl
trigger2 = (stateno = [260,285]) && movecontact
;---------------------------------------------------------------------------
;Air/Giru Rocket Bomb
[State -1, Air/Giru Rocket Bomb]
type = ChangeState
value = 1605
triggerall = command = "Giru Rocket Bomb"
triggerall = power >= 300
triggerall = statetype = A
triggerall = numhelper(22001) = 0
triggerall = numhelper(22002) = 0
trigger1 = ctrl
trigger2 = (stateno = [260,285]) && movecontact

;---------------------------------------------------------------------------
;Fireball 2
[State -1, Fireball 2]
type = ChangeState
value = 1501
triggerall = var(20) >= 0
triggerall = command = "c"
triggerall = stateno != [246,247]
trigger1 = stateno = 1500
trigger1 = animelemtime(2) >= 6.3;5

;---------------------------------------------------------------------------
;Fireball
[State -1, Fireball]
type = ChangeState
value = 1500
triggerall = var(20) >= 0
triggerall = command = "c"
triggerall = power >= 200
triggerall = stateno != [246,247]
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 1501
trigger2 = animelemtime(2) >= 6.3;5

;---------------------------------------------------------------------------
;Air Down Fireball
[State -1, Air Down Fireball 2]
type = ChangeState
value = 1505
triggerall = power >= 200
triggerall = var(20) >= 0
triggerall = command = "c"
trigger1 = stateno = 1504
trigger1 = animelemtime(2) >= 4.3 ;AnimElem = 2,>4
trigger2 = stateno = [1006,1010]

;---------------------------------------------------------------------------
;Air Down Fireball
[State -1, Air Down Fireball]
type = ChangeState
value = 1504
triggerall = power >= 200
triggerall = var(20) >= 0
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [1006,1010]; [1010,1006]
trigger3 = stateno = 1505
trigger3 = animelemtime(2) >= 4.3 ;AnimElem = 2,>4

;===========================================================================
;===========================================================================
;Basic physical attacks
;===========================================================================
;===========================================================================
;Meteor Punch
[State -1, Meteor Punch]
type = ChangeState
value = 220
triggerall = command = "Meteor Punch"
triggerall = statetype != A
trigger1 = statetype = S && ctrl

;Angel Bird
[State -1, Angel Bird]
type = ChangeState
value = 645
triggerall = command = "Angel Bird"
triggerall = stateno != [1005,1010]
trigger1 = statetype = A && ctrl

;Brat Uppercut
[State -1, Brat Uppercut]
type = ChangeState
value = 260
triggerall = command = "bratuppercut"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
triggerall = stateno != [246,247]
triggerall = statetype != A
trigger1 = statetype = C || statetype = S && ctrl
trigger2 = (stateno = [200,241]) && movecontact
trigger3 = (stateno = [230,239]) && movecontact
trigger4 = (stateno = [282,285]) && movecontact
trigger5 = (stateno = [1600,1605]) && movecontact

;----------------------------------------------------------------------------
;Brat Trample Kick
[State -1, Brat Trample Kick]
type = ChangeState
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
triggerall = statetype != A
triggerall = statetype = S
trigger1 = p2stateno = 5110
trigger2 = (stateno = [200,241]) && movecontact
trigger3 = (stateno = [230,239]) && movecontact
trigger4 = (stateno = [282,285]) && movecontact
value = 232

;----------------------------------------------------------------------------
;Brat Bash Kick
[State -1, Brat Bash Kick]
type = ChangeState
triggerall = command = "a"
triggerall = command = "holdback"
triggerall = command != "holdfwd"
triggerall = statetype != A
trigger1 = stateno = 232 && movecontact
trigger2 = p2stateno = 5110
trigger3 = (stateno = [150, 156]) && (statetype = S || statetype = C)
trigger3 = p2dist x <= 50
value = 242
;---------------------------------------------------------------------------
;Body Slam
[State -1, Body Slam Short]
type = ChangeState
value = 290
triggerall = p2bodydist x < 45
triggerall = command = "x" || command = "y"
triggerall = stateno = 100 && stateno != 0
triggerall = command != "a" || command != "b"
trigger1 = statetype != A && ctrl && stateno != 290
trigger2 = stateno != [1006,1010]
trigger3 = (stateno = [200,209]) && movecontact
trigger4 = (stateno = [230,239]) && movecontact
;---------------------------------------------------------------------------
;Body Slam
[State -1, Body Slam Long]
type = ChangeState
value = 291
triggerall = p2bodydist x >= 45
triggerall = command = "x" || command = "y"
triggerall = stateno = 100 && stateno != 0
triggerall = command != "a" || command != "b"
trigger1 = statetype != A && ctrl && stateno != 290
trigger2 = stateno != [1006,1010]
trigger3 = (stateno = [200,209]) && movecontact
trigger4 = (stateno = [230,239]) && movecontact
;---------------------------------------------------------------------------
;Brat Sliding Kick
[State -1, Brat Sliding Kick Short]
type = ChangeState
value = 450
triggerall = p2bodydist x < 80
triggerall = command = "a" || command = "b"
triggerall = stateno = 100 && stateno != 0
triggerall = command != "x" || command != "y"
triggerall = stateno != [246,247]
trigger1 = statetype != A && ctrl && stateno != 450
trigger2 = stateno != [1006,1010]
trigger3 = (stateno = [200,209]) && movecontact
trigger4 = (stateno = [230,239]) && movecontact
;---------------------------------------------------------------------------
;Brat Sliding Kick
[State -1, Brat Sliding Kick Long]
type = ChangeState
value = 451
triggerall = p2bodydist x >= 80
triggerall = command = "a" || command = "b"
triggerall = stateno = 100 && stateno != 0
triggerall = command != "x" || command != "y"
triggerall = stateno != [246,247]
trigger1 = statetype != A && ctrl && stateno != 451
trigger2 = stateno != [1006,1010]
trigger3 = (stateno = [200,209]) && movecontact
trigger4 = (stateno = [230,239]) && movecontact
;---------------------------------------------------------------------------
;Rapid Kicks
[State -1, Rapid Kicks]
type = ChangeState
value = 245
triggerall = power >= 200
triggerall = command = "rapidkicks"
triggerall = command != "holdfwd"
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 240
trigger2 = movehit

;---------------------------------------------------------------------------
; Double Spin Kick
[State -1, Double Spin Kick]
type = ChangeState
value = 248
triggerall = stateno != [246,248]
triggerall = (command = "Double Spin Kick")
trigger1 = (statetype = S || statetype = A) && ctrl
trigger2 = (stateno = [200,250]) && movecontact
trigger3 = (stateno = [290,291]) && movecontact
trigger4 = (stateno = [600,650]) && movecontact

; Spin Kick A
[State -1, Spin Kick A]
type = ChangeState
value = 246
triggerall = (command = "Spin Kick A")
trigger1 = (statetype = S || statetype = A) && ctrl
trigger2 = (stateno = [200,250]) && movecontact
trigger3 = (stateno = [290,291]) && movecontact
trigger4 = (stateno = [600,650]) && movecontact
trigger5 = (stateno = [282,285]) && movecontact

; Spin Kick B
[State -1, Spin Kick B]
type = ChangeState
value = 247
triggerall = (command = "Spin Kick B")
trigger1 = (statetype = S || statetype = A) && ctrl
trigger2 = (stateno = [200,250]) && movecontact
trigger3 = (stateno = [290,291]) && movecontact
trigger4 = (stateno = [600,650]) && movecontact
trigger5 = (stateno = [282,285]) && movecontact

;-----------------------------------------------
;Sonic Elbow
[State -1, Sonic Elbow X]
type = ChangeState
value = 280
triggerall = statetype != A
triggerall = statetype = S && ctrl = 1
trigger1 = command = "Sonic Elbow X"

;Sonic Elbow
[State -1, Sonic Elbow Y]
type = ChangeState
value = 281
triggerall = statetype != A
triggerall = statetype = S && ctrl = 1
trigger1 = command = "Sonic Elbow Y"

;-----------------------------------------------
;Maiden Elbow X
[State -1, Maiden Elbow X]
type = ChangeState
value = 282
triggerall = stateno != [282,285]
triggerall = command = "Maiden Elbow X"
triggerall = statetype != A
trigger1 = statetype = C || statetype = S
trigger2 = (stateno = [200,241]) && movecontact
trigger3 = (stateno = [230,239]) && movecontact
trigger4 = (stateno = [260,262]) && movecontact

;Maiden Elbow Y
[State -1, Maiden Elbow Y]
type = ChangeState
value = 284
triggerall = stateno != [282,285]
triggerall = command = "Maiden Elbow Y"
triggerall = statetype != A
trigger1 = statetype = C || statetype = S
trigger2 = (stateno = [200,241]) && movecontact
trigger3 = (stateno = [230,239]) && movecontact
trigger4 = (stateno = [260,262]) && movecontact

;-----------------------------------------------
;Maiden Star X
[State -1, Maiden Star X]
type = ChangeState
value = 690
triggerall = (command = "Maiden Star X")
trigger1 = statetype = A && ctrl
;trigger2 = (stateno = [600,700]) && movecontact
;trigger3 = (stateno = [1400,1402]) && movecontact

;Maiden Star Y
[State -1, Maiden Star Y]
type = ChangeState
value = 693
triggerall = (command = "Maiden Star Y")
trigger1 = statetype = A && ctrl
;trigger2 = (stateno = [600,700]) && movecontact
;trigger3 = (stateno = [1400,1402]) && movecontact

;===========================================================================
;===========================================================================
;Especial Combo attacks
;===========================================================================
;===========================================================================
;Zanzoken Combo
[State -1, ZANZOKEN COMBO]
type = ChangeState
value = 252
triggerall = command = "zanzokencombo" && stateno != 100
triggerall = stateno != 252
trigger1 = stateno = [250,259]
trigger1 = movehit
trigger2 = stateno = [1200,1299]
trigger2 = movehit
trigger3 = stateno = [1120,1123]
trigger3 = movehit
trigger4 = stateno = 771

;Fly Combo
[State -1, FLY COMBO]
type = ChangeState
value = 255
triggerall = statetype = A
triggerall = command = "flycombo"
triggerall = var(16) = 0
trigger1 = ctrl
trigger2 = stateno = 250 && movehit
trigger3 = stateno = 771

;Back Strong Kick2
[State -1, COMBO FLY PUNCH A]
type = ChangeState
value = 1110
triggerall = command = "a"
trigger1 = stateno = 252 && movehit
trigger2 = stateno = [1110,1114]
trigger2 = movehit && var(16) < 5 && Time = [12,30]

;Back Strong Kick
[State -1, COMBO FLY PUNCH B]
type = ChangeState
value = 1111
triggerall = command = "b"
trigger1 = stateno = 252 && movehit
trigger2 = stateno = [1110,1114]
trigger2 = movehit && var(16) < 5 && Time = [12,30]

;Fly combo punch
[State -1, COMBO FLY PUNCH X]
type = ChangeState
value = 1112
triggerall = command = "x"
trigger1 = stateno = 252 && movehit
trigger2 = stateno = [1110,1114]
trigger2 = movehit && var(16) < 5 && Time = [12,30]

;Fly combo punch2
[State -1, COMBO FLY PUNCH Y]
type = ChangeState
value = 1113
triggerall = command = "y"
trigger1 = stateno = 252 && movehit
trigger2 = stateno = [1110,1114]
trigger2 = movehit && var(16) < 5 && Time = [12,30]

;========= FINAL AIR MOVES ============================

;Final Back Strong Kick
[State -1, FINAL AIR KICK A]
type = ChangeState
value = 1115
triggerall = command = "a"
triggerall = stateno = [1110,1114]
trigger1 = movehit && var(16) = 5 && Time = [12,30]

;Final Down Strong Dkick
[State -1, FINAL AIR KICK B]
type = ChangeState
value = 1116
triggerall = command = "b"
triggerall = stateno = [1110,1114]
trigger1 = movehit && var(16) = 5 && Time = [12,30]

;Mega Puño
[State -1, FINAL AIR PUNCH X]
type = ChangeState
value = 1117
trigger1 = command = "x"
triggerall = stateno = [1110,1114]
trigger1 = movehit && var(16) = 5 && Time = [12,30]

;Final Down Strong Punch
[State -1, FINAL AIR PUNCH Y]
type = ChangeState
value = 1118
triggerall = command = "y"
triggerall = stateno = [1110,1114]
trigger1 = movehit && var(16) = 5 && Time = [12,30]

;====== RUN COMBO ====================================

;Fly Fwd Punch continue x
[State -1, Fly Fwd Punch x]
type = ChangeState
value = 1120
triggerall = command = "x"
triggerall = var(16) < 10
triggerall = movecontact
trigger1 = stateno = [1120,1123]
trigger2 = stateno = 255

;Fly Fwd Punch continue y
[State -1, Fly Fwd Punch y]
type = ChangeState
value = 1121
triggerall = command = "y"
triggerall = var(16) < 10
triggerall = movecontact
trigger1 = stateno = [1120,1123]
trigger2 = stateno = 255

;Fly Fwd Punch continue a
[State -1, Fly Fwd Punch a]
type = ChangeState
value = 1122
triggerall = command = "a"
triggerall = var(16) < 10
triggerall = movecontact
trigger1 = stateno = [1120,1123]
trigger2 = stateno = 255

;Fly Fwd Punch continue b
[State -1, Fly Fwd Punch b]
type = ChangeState
value = 1123
triggerall = command = "b"
triggerall = var(16) < 10
triggerall = movecontact
trigger1 = stateno = [1120,1123]
trigger2 = stateno = 255

;Fly Fwd Punch finish
[State -1, Fly Fwd Punch finish]
type = ChangeState
value = 1125
triggerall = var(16) >= 10
triggerall = movecontact
triggerall = stateno = [1120,1123]
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "x"
trigger4 = command = "y"

;===========================================================================
;===========================================================================
;Basic Attacks and Combos
;===========================================================================
;===========================================================================
;Judô Trown
[State -1, Judô Trown Continue]
type = ChangeState
value = 800
triggerall = statetype != A
triggerall = command = "x" && command = "y" && statetype = S && ctrl && stateno != 100
trigger1 = command = "holdfwd" && p2bodydist X < 5 && (p2statetype = S || p2statetype = C) && p2movetype != H
trigger2 = command = "holdback" && p2bodydist X < 7 && (p2statetype = S || p2statetype = C) && p2movetype != H
trigger3 = movecontact

;Frog Jump
[State -1, Frog Jump Continue]
type = ChangeState
value = 830
triggerall = statetype != A
triggerall = command = "a" && command = "b" && statetype = S && ctrl && stateno != 100
trigger1 = command = "holdfwd" && p2bodydist X < 5 && (p2statetype = S || p2statetype = C) && p2movetype != H
trigger2 = command = "holdback" && p2bodydist X < 7 && (p2statetype = S || p2statetype = C) && p2movetype != H
trigger3 = movecontact
;---------------------------------------------------------------------------
;Counter/Bash
[State -1, Counter/Bash]
type = ChangeState
value = 215
triggerall = command = "Counter" && stateno != 215
triggerall = power >= 500 && statetype != A
trigger1 = (stateno = [150, 156]) && (statetype = S || statetype = C)
trigger1 = p2dist x <= 50

;---------------------------------------------------------------------------
;Crouching Light Punch Continue
[State -1, Crouching Light Punch Continue]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = movecontact
triggerall = stateno != [246,247]
trigger1 = stateno = 400
trigger1 = hitcount < 4
trigger2 = stateno = 200
trigger2 = hitcount < 4

;---------------------------------------------------------------------------
;Crouching Light Kick Continue
[State -1, Crouching Light Kick Continue]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = movecontact
triggerall = stateno != [246,247]
trigger1 = stateno = [400,409]
trigger2 = stateno = 430
trigger2 = hitcount < 2
trigger3 = stateno = [200,249]

;---------------------------------------------------------------------------
;Crouching Strong Punch Continue
[State -1, Crouching Strong Punch Continue]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = movecontact
triggerall = stateno != [246,247]
trigger1 = stateno = [400,409]
trigger2 = stateno = [430,439]
trigger3 = stateno = [200,249]

;---------------------------------------------------------------------------
;Crouching Strong Kick Continue
[State -1, Crouching Strong Kick Continue]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = movecontact
triggerall = stateno != [246,247]
trigger1 = stateno = [400,439]
trigger2 = stateno = [200,249]

;---------------------------------------------------------------------------
;Jump Light Punch Continue
[State -1, Jump Light Punch Continue]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = movecontact
trigger1 = stateno = 600
trigger1 = hitcount < 4

;---------------------------------------------------------------------------
;Jump Strong Punch Continue
[State -1, Jump Strong Punch Continue]
type = ChangeState
value = 610
triggerall = command = "y" && command != "holdup"
triggerall = movecontact && hitcount < 4
trigger1 = stateno = [600,609]
trigger2 = stateno = [630,639]

;---------------------------------------------------------------------------
;Jump Hard Punch Continue
[State -1, Jump Hard Punch Continue]
type = ChangeState
value = 620
triggerall = command = "y"
triggerall = movecontact && hitcount < 4
trigger1 = stateno = 610
;---------------------------------------------------------------------------
;Jump Light Kick Continue
[State -1, Jump Light Kick Continue]
type = ChangeState
value = 630
triggerall = command = "a"
triggerall = movecontact
trigger1 = stateno = [600,609]
trigger2 = stateno = 630
trigger2 = hitcount < 2

;---------------------------------------------------------------------------
;Jump Strong Kick Continue
[State -1, Jump Strong Kick Continue]
type = ChangeState
value = 640
triggerall = command = "b"
triggerall = movecontact && hitcount < 4
trigger1 = stateno = [600,639]

;---------------------------------------------------------------------------
;Jump Hard Kick Continue
[State -1, Jump Hard Kick Continue]
type = ChangeState
value = 650
triggerall = command = "b" && command = "holdback"
triggerall = movecontact && hitcount < 4
trigger1 = prevstateno != 620
trigger1 = prevstateno != 640
trigger1 = stateno = 640

;---------------------------------------------------------------------------
;Stand Elbow Punch
[State -1, Stand Elbow Punch]
type = ChangeState
value = 205
triggerall = command = "x" && command != "holddown" && p2bodydist x <= 1
trigger1 = statetype = S && ctrl
trigger1 = hitcount < 1

;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = movecontact
trigger1 = stateno = [201,211]

;Stand Light Punch Continue
[State -1, Stand Light Punch Continue]
type = ChangeState
value = 201
triggerall = command = "x"
triggerall = command != "holddown" && p2bodydist x <= 6
triggerall = movecontact && hitcount < 3
triggerall = prevstateno != 201 || stateno != 201
trigger1 = stateno = [200,211]
trigger2 = stateno = [230,239]

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = movecontact && hitcount < 5
trigger1 = stateno = [200,205]
trigger2 = stateno = [230,239]

;Stand Strong Punch Continue
[State -1, Stand Strong Punch  Continue]
type = ChangeState
value = 211
triggerall = command = "y" && p2bodydist x <= 3
triggerall = command != "holddown"
triggerall = movecontact && hitcount < 3
triggerall = stateno != 211
trigger1 = stateno = [200,211]
trigger2 = stateno = [230,239]

;---------------------------------------------------------------------------
;Standing Light Kick Continue
[State -1, Standing Light Kick Continue]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = movecontact
trigger1 = stateno = [200,209]
trigger2 = stateno = 230
trigger2 = hitcount < 3

;---------------------------------------------------------------------------
;Standing Strong Kick Continue
[State -1, Standing Strong Kick Continue]
type = ChangeState
value = 241
triggerall = command = "b"
triggerall = command = "holdfwd"
triggerall = movecontact
trigger1 = stateno = 240

;---------------------------------------------------------------------------
;Standing Strong Kick Continue
[State -1, Standing Strong Kick Continue]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = movecontact
trigger1 = stateno = [200,239]

;---------------------------------------------------------------------------
;Standing Heavy Punch Continue
[State -1, Standing Heavy Punch Continue]
type = ChangeState
value = 250
triggerall = command = "y" && p2bodydist x <= 5
triggerall = command = "holdfwd"
trigger1 = movecontact && (stateno = 210 || stateno = 211)

;----------------------------------------------------------------------------
;Standing Heavy Kick Continue
[State -1, Standing Heavy Kick Continue]
type = ChangeState
triggerall = command = "b"
triggerall = command = "holdback"
trigger1 = ctrl && statetype = S
trigger2 = movecontact && (stateno = 241 || stateno = 240)
trigger3 = movecontact && (stateno = 245 || stateno = 230)
value = 244

;===========================================================================
;===========================================================================
;Basic Punchs and Kicks
;===========================================================================
;===========================================================================
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 771

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 771

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 771

;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 771

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;Crouching medium Kick
;[State -1, Crouching medium Kick]
;type = ChangeState
;value = 435
;triggerall = command = "a"
;triggerall = command = "holddown"
;trigger1 = movecontact
;trigger1 = stateno = 430

;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = (stateno != [1006,1010]) = ctrl
;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y" && hitcount < 4
trigger1 = statetype = A && command != "holdup"
trigger1 = (stateno != [1006,1010]) = ctrl
;---------------------------------------------------------------------------
;Jump Hard Punch
[State -1, Jump Hard Punch]
type = ChangeState
value = 620
triggerall = command = "y" && hitcount < 4
triggerall = statetype = A && command = "holdup"
trigger1 = (stateno != [1006,1010]) = ctrl
;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = (stateno != [1006,1010]) = ctrl
;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b" && hitcount < 4
trigger1 = statetype = A && command != "holdback"
trigger1 = (stateno != [1006,1010]) = ctrl
;---------------------------------------------------------------------------
;Jump Hard Kick
[State -1, Jump Hard Kick]
type = ChangeState
value = 650
triggerall = command = "b" && hitcount < 4
triggerall = statetype = A && command = "holdback"
trigger1 = (stateno != [1006,1010]) = ctrl
