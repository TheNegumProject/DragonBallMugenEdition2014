;Trunks GT by Szowel The CMD file.

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
name = "Burning Attack"
command = B, F, D, x
time = 35

[Command]
name = "Buster Cannon"
command = B, F, D, b
time = 35

[Command]
name = "Triple Ki Attack"
command = B, F, D, a
time = 35

[Command]
name = "SSJ1 Trans"
command = a+b
time = 35

[Command]
name = "SSJ2 Trans"
command = a+b
time = 35

;-| Special Motions |------------------------------------------------------
[Command]
name = "Heavy Punch"
command = D,F,a
time = 15

[Command]
name = "Heavy Kick"
command = D,B,b
time = 15

[Command]
name = "Heavy Kick 2"
command = D,F,b
time = 15

[Command]
name = "Ki Wind"
command = D,B,z
time = 15

[Command]
name = "specialx"
command = D,F,x
time = 15

[Command]
name = "Teleportx"
command = D,B,x
time = 15

[Command]
name = "Teleporta"
command = D,B,a
time = 15

[Command]
name = "Teleporty"
command = D,B,y
time = 15

[Command]
name = "air heavy kick"
command = D, F, a
time = 30

[Command]
name = "air heavy kick2"
command = D, F, b
time = 30


[Command]
name = "specialy"
command = D,F,y
time = 15

[Command]
name = "specialb"
command = D,F,a
time = 15

[Command]
name = "Kikoha Ball"
command = z
time = 1

[Command]
name = "a+x attack"
command = a+x
time = 15

[Command]
name = "b+y attack"
command = b+y
time = 15



;-| Basic Motions |------------------------------------------------------

;charge
[Command]
name = "charge"
command = /c
time = 5

[Command]
name = "ssjtonormal"
command = s
time = 5

[Command]
name = "teleportfwd"
command = /F, b+y
time = 5

[Command]
name = "teleportback"
command = /B, b+y
time = 5

[Command]
name = "ssj2fwd"
command = /F
time = 5

[Command]
name = "ssj2back"
command = /B
time = 5

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

[Command]
name = "D"     ;Required (do not remove)
command = D
time = 1

[Command]
name = "F"     ;Required (do not remove)
command = F
time = 10

[Command]
name = "U"     ;Required (do not remove)
command = U
time = 1

[Command]
name = "/U"     ;Required (do not remove)
command = /U
time = 5

[Command]
name = "B"     ;Required (do not remove)
command = B
time = 10

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



; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]
;--------------------------------------------------------------------------
;SSJ1 Trans
[State -1, Stand Light Punch]
type = ChangeState
value = 825
triggerall = var(43) = 0
trigger1 = command = "SSJ1 Trans"
trigger2 = command = "ssjtonormal"
triggerall = command != "holddown"
triggerall = power >= 3300
triggerall = statetype = S
triggerall = ctrl

;---------------------------------------------------------------------------
;--------------------------------------------------------------------------
;SSJ2 Trans
[State -1, Stand Light Punch]
type = ChangeState
value = 831
triggerall = var(43) = 1
trigger1 = command = "SSJ2 Trans"
trigger2 = command = "ssjtonormal"
triggerall = command != "holddown"
triggerall = power >= 3300
triggerall = statetype = S
triggerall = ctrl

;---------------------------------------------------------------------------
;Buster Cannon
[State -1, Stand Light Punch]
type = ChangeState
value = 844
triggerall = command = "Buster Cannon"
triggerall = command != "holddown"
triggerall = power >= 2000
triggerall = statetype = S
triggerall = ctrl
trigger1 = var(43) = 1
trigger2 = var(43) = 2

;---------------------------------------------------------------------------
;Burning Attack
[State -1, Stand Light Punch]
type = ChangeState
value = 840
triggerall = command = "Burning Attack"
triggerall = command != "holddown"
triggerall = power >= 1000
triggerall = statetype = S
triggerall = ctrl
trigger1 = var(43) = 1
trigger2 = var(43) = 2

;---------------------------------------------------------------------------
;Triple Ki Attack
[State -1, Stand Light Punch]
type = ChangeState
value = 812
triggerall = command = "Triple Ki Attack"
triggerall = command != "holddown"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;--------------------------------------------------------------------------
;Triple Ki Attack Air
[State -1, Stand Light Punch]
type = ChangeState
value = 818
triggerall = command = "Triple Ki Attack"
triggerall = command != "holddown"
triggerall = power >= 1000
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;--------------------------------------------------------------------------
;Heavy Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 835
trigger1 = command = "air heavy kick"
trigger2 = command = "air heavy kick2"
triggerall = command != "holddown"
triggerall = power >= 400
triggerall = statetype = A
triggerall = ctrl
triggerall = var(43) != 0

;---------------------------------------------------------------------------
;--------------------------------------------------------------------------
;Heavy Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 824
trigger1 = command = "Heavy Punch"
triggerall = command != "holddown"
triggerall = power >= 350
triggerall = statetype = S
triggerall = ctrl
triggerall = p2bodydist x < 30

;---------------------------------------------------------------------------
;--------------------------------------------------------------------------
;Degredation to normal
[State -1, Stand Light Punch]
type = ChangeState
value = 194
triggerall = var(36) = 0
trigger1 = command = "ssjtonormal"
triggerall = command != "holddown"
triggerall = var(43) != 0
triggerall = statetype = S
triggerall = ctrl

;---------------------------------------------------------------------------
;--------------------------------------------------------------------------
;Heavy Kick
[State -1, Stand Light Punch]
type = ChangeState
value = 820
trigger1 = command = "Heavy Kick"
triggerall = command != "holddown"
triggerall = power >= 450
triggerall = statetype = S
triggerall = ctrl
trigger2 = command = "Heavy Kick 2"

;---------------------------------------------------------------------------
;--------------------------------------------------------------------------
;KI Wind
[State -1, Stand Light Punch]
type = ChangeState
value = 800
triggerall = command = "Ki Wind"
triggerall = command != "holddown"
triggerall = power >= 450
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 802 || stateno = 806
trigger2 = statetime > 8

;---------------------------------------------------------------------------

;Kikoha Ball
[State -1, Stand Light Punch]
type = ChangeState
value = 802
triggerall = command = "Kikoha Ball"
triggerall = command != "holddown"
triggerall = stateno != 100
triggerall = stateno != 105
triggerall = stateno != 832 && stateno != 833
triggerall = power >= 150
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------

;Special1
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 211
trigger1 = command = "specialx"
trigger2 = command = "a+x attack"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = ctrl

;---------------------------------------------------------------------------
;Special2
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 623
trigger2 = command = "b+y attack"
trigger1 = command = "specialy"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = command != "teleportfwd"
triggerall = command != "teleportback"
triggerall = ctrl

;---------------------------------------------------------------------------
;Teleport x
[State -1, Stand Light Punch]
type = ChangeState
value = 808
triggerall = command = "Teleportx"
triggerall = command != "holddown"
triggerall = power > 400
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype = A
trigger2 = ctrl

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Teleport y
[State -1, Stand Light Punch]
type = ChangeState
value = 836
triggerall = var(43) != 0
triggerall = command = "Teleporty"
triggerall = command != "holddown"
triggerall = power > 400
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype = A
trigger2 = ctrl

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Teleport a
[State -1, Stand Light Punch]
type = ChangeState
value = 810
triggerall = command = "Teleporta"
triggerall = command != "holddown"
triggerall = power > 440
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype = A
trigger2 = ctrl

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Teleport fwd
[State -1, Stand Light Punch]
type = ChangeState
value = 826
triggerall = command = "teleportfwd"
triggerall = command != "holddown"
triggerall = power > 100
trigger1 = statetype = S
trigger1 = ctrl
triggerall = statetime > 15


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Teleport back
[State -1, Stand Light Punch]
type = ChangeState
value = 827
triggerall = command = "teleportback"
triggerall = command != "holddown"
triggerall = power > 100
trigger1 = statetype = S
trigger1 = ctrl
triggerall = statetime > 15


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
;ssj2 walkfwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 832
triggerall = var(43) = 2
trigger1 = command = "ssj2fwd"
trigger1 = statetype = S
trigger1 = ctrl
triggerall = stateno != 832
triggerall = stateno != 101 && stateno != 102

;---------------------------------------------------------------------------
;ssj2 walkback
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 833
triggerall = var(43) = 2
trigger1 = command = "ssj2back"
trigger1 = statetype = S
trigger1 = ctrl
triggerall = stateno != 833
triggerall = stateno != 107 && stateno != 108

;---------------------------------------------------------------------------
;ssj2 walkfwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 101
triggerall = var(43) = 2
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = stateno = 832

;---------------------------------------------------------------------------
;ssj2 walkback
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 106
triggerall = var(43) = 2
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = stateno = 833



;Charge
[State -1, Stand Light Punch]
type = ChangeState
value = 700
triggerall = command = "charge"
triggerall = command != "holddown"
triggerall = power < 4000
triggerall = statetype = S
trigger1 = ctrl
trigger1 = var(36) = 1
trigger1 = statetime > 30
trigger2 = ctrl

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Stand Light Punch
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 8
trigger3 = (stateno = 210) && time > 10
trigger4 = (stateno = 240) && time > 14
trigger5 = stateno = 832 || stateno = 833

;---------------------------------------------------------------------------
;Stand Strong Punch
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command != "teleportfwd"
triggerall = command != "teleportback"
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = stateno != 100
triggerall = stateno != 832 && stateno != 833
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 15
trigger4 = (stateno = 240) && time > 14

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
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 230) && time > 9
trigger4 = (stateno = 240) && time > 14
trigger5 = stateno = 832 || stateno = 833

;---------------------------------------------------------------------------
;Standing Strong Kick
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command != "teleportfwd"
triggerall = command != "teleportback"
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 6
trigger3 = (stateno = 230) && time > 10
trigger4 = stateno = 832 || stateno = 833

;---------------------------------------------------------------------------
;Taunt
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
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
triggerall = pos y < -35
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = statetime >= 13
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
;Jump Heavy Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
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
