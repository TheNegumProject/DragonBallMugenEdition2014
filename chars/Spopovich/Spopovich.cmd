;Spopovich by Szowel. The CMD file.

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
[Command]
name = "Majin Buu Resurrection"     ;Required (do not remove)
command = D, B, F, b
time = 35

[Command]
name = "Majin Buu Resurrection 2"     ;Required (do not remove)
command = B, F, D, y
time = 35

[Command]
name = "KI Blasts Explosion"     ;Required (do not remove)
command = D, B, F, a
time = 35

[Command]
name = "Spopovich Fury"     ;Required (do not remove)
command = B, F, D, x
time = 35


;-| Special Motions |--------------------------------------------------------
 [Command]
name = "Torture Enemy"     ;Required (do not remove)
command = D, F, x
time = 15

[Command]
name = "Crush Attack"     ;Required (do not remove)
command = /F, y
time = 1

[Command]
name = "Energy Punch"     ;Required (do not remove)
command = /F, x
time = 10

;-| Basic Motions |--------------------------------------------------------

[Command]
name = "Fly"     ;Required (do not remove)
command = b+y
time = 10

[Command]
name = "KI Blast"     ;Required (do not remove)
command = z
time = 1

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
name = "UU"     ;Required (do not remove)
command = U, U
time = 10

[Command]
name = "DD"     ;Required (do not remove)
command = D, D
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
name = "F"
command = F
time = 1

[Command]
name = "B"
command = B
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
name = "holdz";Required (do not remove)
command = /z
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
name = "holda";Required (do not remove)
command = /a
time = 1

[Command]
name = "holdb";Required (do not remove)
command = /b
time = 1

[Command]
name = "holdy";Required (do not remove)
command = /y
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

;===========================================================================
;---------------------------------------------------------------------------
;Majin Buu Resurrection
[State -1, KI Blast]
type = ChangeState
value = 7044
trigger1 = command = "Majin Buu Resurrection"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = power > 1500
trigger1 = numhelper(7048) = 0
trigger1 = win = 0
trigger1 = lose = 0

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Majin Buu Resurrection 2
[State -1, KI Blast]
type = ChangeState
value = 7056
trigger1 = command = "Majin Buu Resurrection 2"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = power > 1500
trigger1 = win = 0
trigger1 = lose = 0

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;KI Blast
[State -1, KI Blast]
type = ChangeState
value = 750
trigger1 = command = "KI Blast"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = power > 100

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Crush Attack
[State -1, KI Blast]
type = ChangeState
value = 224
trigger1 = command = "Crush Attack"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = power > 200

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Fly
[state -1]
type = changestate
value = 900
triggerall = command = "Fly"
triggerall = var(36) = 0
trigger1 = statetype = S && pos y >= 0
trigger1 = ctrl

;Fly (in the air)
[state -1]
type = changestate
value = 910
triggerall = var(36) = 0
triggerall = command = "Fly"
trigger1 = statetype = A && pos y < 0
trigger1 = ctrl

[state -1]
type = changestate
value = 50
trigger1 = command = "Fly" && pos y < 0 && stateno = 910

;---------------------------------------------------------------------------
;KI Blasts Explosion
[State -1, KI Blast]
type = ChangeState
value = 7024
trigger1 = command = "KI Blasts Explosion"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = power >= 2000
trigger1 = var(38) = 0

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;Spopovich Fury
[State -1, KI Blast]
type = ChangeState
value = 7020
trigger1 = command = "Spopovich Fury"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = power >= 2500
trigger1 = var(38) = 0

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;Torture Enemy
[State -1, KI Blast]
type = ChangeState
value = 7000
trigger1 = command = "Torture Enemy"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = power > 200

;---------------------------------------------------------------------------

;KI Blast Crouch
[State -1, KI Blast]
type = ChangeState
value = 753
trigger1 = command = "KI Blast"
trigger1 = command = "holddown"
trigger1 = statetype = c
trigger1 = ctrl
trigger1 = power > 100

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
;---------------------------------------------------------------------------
;Charge Up
[State -1, Charge]
type = ChangeState
value = 730
trigger1 = command = "holdc"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = power != 3000
trigger1 = var(38) = 0
trigger1 = var(36) = 0

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
trigger1 = var(38) = 0
trigger2 = command = "F"
trigger2 = statetype = S
trigger2 = ctrl
trigger2 = var(38) = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Faster Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 7021
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = var(38) = 1
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

;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6
trigger4 = stateno = 910

;---------------------------------------------------------------------------
;Stand Strong Punch
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = command != "Fly"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6
trigger4 = stateno = 910

;---------------------------------------------------------------------------
;Stand Energy Punch
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "Energy Punch"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Control KI Blasts
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 7033
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = var(41) = 1
trigger2 = var(41) = 2
trigger3 = numhelper(7030) = 1
trigger4 = numhelper(7028) = 1
triggerall = statetype = S
triggerall = ctrl
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Explose KI Blasts
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 7032
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = var(41) = 2
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = numhelper(7030) = 1
trigger3 = numhelper(7028) = 1
;---------------------------------------------------------------------------
;Stand Light Kick
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = var(41) = 0
triggerall = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 230) && time > 9
trigger4 = stateno = 910

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Hold KI Blasts
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 7031
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = var(41) = 1
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Standing Strong Kick
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = command != "Fly"
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6
trigger4 = stateno = 910

;---------------------------------------------------------------------------
;Taunt
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
triggerall = var(38) = 0
trigger1 = statetype != A
trigger1 = ctrl

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
