; Super 17 by Szowel


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
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;

[Command]
name = "Dengeki Jigoku Dama"
command = B, F, D, b
time = 40

[Command]
name = "Flash Bomber"
command = B, F, D, y
time = 40

[Command]
name = "Energy Wave"
command = D, B, F, z
time = 40

[Command]
name = "Energy Wave2"
command = D, F, B, z
time = 40

[Command]
name = "Energy Wave3"
command = D, F, x+y
time = 40

[Command]
name = "MiniGun"
command = B, F, D, a
time = 40

[Command]
name = "MiniGun2"
command = D, F, B, a
time = 40



;-| Special Motions |------------------------------------------------------

[Command]
name = "I'm a Perfect Android"
command = D, F, B, x
time = 40

[Command]
name = "Super Kick"
command = /F, b
time = 5

[Command]
name = "Energy Rockets"
command = D, B, x
time = 40

[Command]
name = "Stand Push"
command = D, B, x
time = 20

[Command]
name = "D, F, x"
command = D, F, x
time = 30


[Command]
name = "Energy Barrier"
command = a+x
time = 20

[Command]
name = "elbow with kick"
command = b+y
time = 20


[Command]
name = "instant zanzouken"
command = b+y
time = 1

[Command]
name = "instant zanzouken with kick"
command = D, B, F, b
time = 40


[Command]
name = "Air Kick"
command = /F, a
time = 5

[Command]
name = "combo1"
command = /F, y
time = 5


[Command]
name = "Ki Blast"
command = z
time = 1

[Command]
name = "Absorb Energy"
command = /c
time = 1

[Command]
name = "tp fwd"
command = /F, z
time = 1

[Command]
name = "tp back"
command = /B, z
time = 1

;-| Basic |--------------------

[Command]
name = "superj"
command =$D, $U
time = 10

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
name = "recovery";Required (do not remove)
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

[Command]
name = "holda";Required (do not remove)
command = /a
time = 1

[Command]
name = "holdb";Required (do not remove)
command = /b
time = 1

[Command]
name = "holdc";Required (do not remove)
command = /c
time = 1

[Command]
name = "holdx";Required (do not remove)
command = /x
time = 1

[Command]
name = "holdy";Required (do not remove)
command = /y
time = 1

[Command]
name = "holdz";Required (do not remove)
command = /z
time = 1

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
;===========================================================================
;This is not a move, but it sets up var(1) to be 1 if conditions are right
;for a combo into a special move (used below).
;Since a lot of special moves rely on the same conditions, this reduces
;redundant logic.
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

;---------------------------------------------------------------------------
;I'm a Perfect Android
[State -1, Ki Blast]
type = ChangeState
value = 6690
trigger1 = command = "I'm a Perfect Android"
triggerall = statetype = S
triggerall = ctrl
triggerall = power >= 3000
triggerall = var(7) = 0

;---------------------------------------------------------------------------
;Dengeki Jigoku Dama
[State -1, Ki Blast]
type = ChangeState
value = 6664
trigger1 = command = "Dengeki Jigoku Dama"
triggerall = statetype = S
triggerall = ctrl
triggerall = power >= 3500

;---------------------------------------------------------------------------
;Energy Wave
[State -1, Ki Blast]
type = ChangeState
value = 6150
trigger1 = command = "Energy Wave"
trigger2 = command = "Energy Wave2"
trigger3 = command = "Energy Wave3"
triggerall = statetype = S
triggerall = ctrl
triggerall = power >= 1000

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Flash Bomber
[State -1, Ki Blast]
type = ChangeState
value = 8022
trigger1 = command = "Flash Bomber"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = power > 2999

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;MiniGun
[State -1, Ki Blast]
type = ChangeState
value = 8005
trigger1 = command = "MiniGun"
trigger2 = command = "MiniGun2"
triggerall = statetype = S
triggerall = ctrl
triggerall = power > 999

;---------------------------------------------------------------------------
;Energy Barrier
[State -1, Ki Blast]
type = ChangeState
value = 6160
trigger1 = command = "Energy Barrier"
triggerall = statetype = S
triggerall = ctrl
triggerall = power > 999

;---------------------------------------------------------------------------
;Energy Rockets
[State -1, Ki Blast]
type = ChangeState
value = 6165
trigger1 = command = "Energy Rockets"
triggerall = statetype = S || statetype = A
triggerall = ctrl
triggerall = power > 799

;---------------------------------------------------------------------------
;Elbow with kick
[State -1, Ki Blast]
type = ChangeState
value = 6180
trigger1 = command = "elbow with kick"
triggerall = statetype = S || statetype = A
triggerall = ctrl
triggerall = p2bodydist x < 7

;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;KI Blast
[State -1, Ki Blast]
type = ChangeState
value = 8000
triggerall = command != "Energy Wave"
triggerall = command != "Energy Wave2"
triggerall = stateno != 100 && stateno != 105 && stateno != 20
trigger1 = command = "Ki Blast"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = power > 100

;KI Blast
[State -1, Ki Blast]
type = ChangeState
value = 6600
triggerall = stateno != 100 && stateno != 105 && stateno != 20
trigger1 = command = "Ki Blast"
trigger1 = statetype = C
trigger1 = ctrl
trigger1 = power > 100

;KI Blast
[State -1, Ki Blast]
type = ChangeState
value = 6603
triggerall = stateno != 100 && stateno != 105 && stateno != 20
trigger1 = command = "Ki Blast"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = power > 100

;instant zanzouken
[State -1, -,-]
type = ChangeState
value = 9555
triggerall = power >= 600
triggerall = command = "instant zanzouken"
trigger1 = statetype != A
trigger1 = var(54) = 0

;instant zanzouken
[State -1, -,-]
type = ChangeState
value = 651
triggerall = power >= 400
triggerall = command = "instant zanzouken with kick"
trigger1 = var(54) = 0
triggerall = ctrl = 1

;instant zanzouken
[State -1, -,-]
type = ChangeState
value = 9559
trigger1 = p2movetype = a
trigger1 = p2bodydist x<=60
trigger1 = var(54) = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Super Jump
;ダッシュ
[State -1, Super Jump]
type = ChangeState
value = 55
trigger1 = command = "superj"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;KI Barrier
;[State -1, Ki Blast]
;type = ChangeState
;value = 8060
;trigger1 = command = "KI Barrier"
;trigger1 = statetype = S
;trigger1 = ctrl
;trigger1 = power > 150

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Absorb Energy
[State -1, Ki Blast]
type = ChangeState
value = 8016
triggerall = var(36) = 0
trigger1 = command = "Absorb Energy"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------


;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[State -1, Air Run Fwd]
type = ChangeState
value = 60
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Air Run Back]
type = ChangeState
value = 65
trigger1 = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Stand Light Punch
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = stateno != 100
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 10

;---------------------------------------------------------------------------
;Stand Strong Punch
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = stateno != 100
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
;Stand Light Kick
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
triggerall = stateno != 100
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 230) && time > 9

;---------------------------------------------------------------------------
;Standing Strong Kick
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = stateno != 100
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;---------------------------------------------------------------------------
;Taunt
;挑発
;[State -1, Taunt]
;type = ChangeState
;value = 195
;triggerall = command = "start"
;trigger1 = statetype != A
;trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Punch
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Strong Punch
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Crouching Light Kick
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Crouching Strong Kick
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Teleport Fwd
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 98
triggerall = power >= 200
triggerall = command = "tp fwd"
trigger1 = statetype = S
trigger1 = ctrl
triggerall = stateno != 105
triggerall = stateno != 100

;---------------------------------------------------------------------------
;Teleport Back
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 99
triggerall = power >= 200
triggerall = command = "tp back"
trigger1 = statetype = S
trigger1 = ctrl
triggerall = stateno != 105
triggerall = stateno != 100

;---------------------------------------------------------------------------
;Teleport Fwd (while running)
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 96
triggerall = power >= 200
triggerall = command = "tp fwd"
triggerall = statetype = S
triggerall = ctrl
trigger1 = stateno = 105
trigger2 = stateno = 100

;---------------------------------------------------------------------------
;Teleport Back (while running)
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 97
triggerall = power >= 200
triggerall = command = "tp back"
triggerall = statetype = S
trigger1 = stateno = 105
trigger2 = stateno = 100

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;Jump Light Punch
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 7
trigger3 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Strong Kick
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking

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
