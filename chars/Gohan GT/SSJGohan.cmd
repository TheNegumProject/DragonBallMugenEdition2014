﻿;-| Button Remapping |-----------------------------------------------------

[Remap]
x = x ; Light Punch
y = y ; Heavy Punch
z = z ; Projectile
a = a ; Light Kick
b = b ; Heavy Kick
c = c ; Charge
s = s ; Taunt

;-| Default Values |-------------------------------------------------------
[Defaults]
command.time = 15
command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------
;[Command]
;name = "Mirai"
;command = D, DF, F, D, DF, F, s
;time = 30

[Command]
name = "Kiko"
command = D, DF, F, D, DF, F, z
time = 30

[Command]
name = "masenkoha"
command = D, DF, F, D, DF, F, a
time = 30


[Command]
name = "masenkoha"
command = D, DF, F, D, DF, F, b
time = 30


[Command]
name = "Kamehameha"
command = D, DF, F, D, DF, F, x
time = 30

[Command]
name = "Kamehameha"
command = D, DF, F, D, DF, F, y
time = 30

[Command]
name = "super"
command = a+y
time = 30

;=| Special Motions |============================================
[Command]
name = "SBCombo"
command = $F, $B, $F, x
time = 15
[Command]
name = "SBCombo"
command = $F, $B, $F, y
time = 15
;=============================
[Command]
name = "SBDashUppercut"
command = ~$D,$F,x
time = 20
[Command]
name = "SBDashUppercut"
command = ~$D,$F,y
time = 20
;=============================
[Command]
name = "SBDashKick"
command = ~10$B, $F, a
[Command]
name = "SBDashKick"
command = ~10$B, $F, b
;=============================
[Command]
name = "SBMultiKick"
command = ~F,D,a
[Command]
name = "SBMultiKick"
command = ~F,D,b
;=============================
[Command]
name = "3Projectile"
command = ~D, $F, z
;=============================
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
name = "holdc"
command = /$c
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

;===========================================================================
[Statedef -1]
;===========================================================================
;Kamehameha
[State -1, Kamehameha]
type = ChangeState
value = 555
triggerall = stateno != 280
triggerall = command = "Kamehameha"
Triggerall = Power >=2000
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl

;===========================================================================

;===========================================================================
;Kiko
[State -1, Kiko]
type = ChangeState
value = 1050
triggerall = stateno != 280
triggerall = command = "Kiko"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl
;===========================================================================
;SBMultiKick
[State -1, SBMultiKick]
type = ChangeState
value = 650
triggerall = command = "SBMultiKick"
triggerall = stateno != 280
triggerall = command != "holddown"
triggerall = stateno != 650
trigger1 = statetype != S
trigger1 = ctrl
trigger1 = statetype = A
;===========================================================================
;SBDashUppercut
[State -1, SBDashUppercut]
type = ChangeState
value = 600
triggerall = command = "SBDashUppercut"
triggerall = stateno != 280
triggerall = command != "holddown"
triggerall = stateno != 600
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
;===========================================================================
;super


[State -1, super]
type = ChangeState
value = 7399
triggerall = stateno != 280
triggerall = command = "super"
Triggerall = Power >=2000
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl

;===========================================================================
;masenko  gohan


[State -1, masenkoha]
type = ChangeState
value = 8500
triggerall = stateno != 280
triggerall = command = "masenkoha"
Triggerall = Power >=1500
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl
;===========================================================================
;SBDashKick
[State -1, SBDashKick]
type = ChangeState
value = 550
triggerall = command = "SBDashKick"
triggerall = stateno != 280
triggerall = command != "holddown"
triggerall = stateno != 550
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
;===========================================================================
;SB Combo 1
[State -1, SB Combo 1]
type = ChangeState
value = 500
triggerall = command = "SBCombo"
triggerall = stateno != 280
triggerall = command != "holddown"
triggerall = stateno != 500
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
;===========================================================================
;Air Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 101
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl

;Air Run Back
[State -1, Run Back]
type = ChangeState
value = 106
trigger1 = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl

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

;===========================================================================
;Kung Fu Throw
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
;===========================================================================
;Charge
[State -1, Charge]
type = ChangeState
value = 280
triggerall = command = "c"
triggerall = stateno != [500,2000]
triggerall = command != "holddown"
triggerall = power != 3000
trigger1 = statetype = S
trigger1 = ctrl = 1
;===========================================================================
;3Projectile
[State -1, 3Projectile]
type = ChangeState
value = 305
triggerall = command = "3Projectile"
triggerall = stateno != [500,2000]
triggerall = command != "holddown"
triggerall = NumProjid(300) != 1
triggerall = NumProjid(305) != 3
trigger1 = statetype = S
trigger1 = ctrl
;===========================================================================
;Projectile
[State -1, Projectile]
type = ChangeState
value = 300
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = NumProjid(300) != 1
triggerall = NumProjid(305) != 3
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 205
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 210
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 215
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 220
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 225
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 235
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 240
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 245
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 250
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350
;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 255
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350
;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
;===========================================================================
; AI
;===========================================================================
[State -1, Kamehameha]
type = ChangeState
value = 1100
triggerall = P2StateNo = [1000,4999]
triggerall = StateNo != [1000,2000]
triggerall = power >= 1000
triggerall = MoveType != H
triggerall = statetype != A
triggerall = ctrl = 1
trigger1 = statetype = S
trigger1 = Random < AILevel * 8
;===========================================================================
[State -1, Masenko]
type = ChangeState
value = 1000
triggerall = P2StateNo = [1000,4999]
triggerall = StateNo != [1000,2000]
triggerall = power >= 1000
triggerall = MoveType != H
triggerall = statetype != A
triggerall = ctrl = 1
trigger1 = statetype = S
trigger1 = Random < AILevel * 8
;===========================================================================
[State -1, Kiko]
type = ChangeState
value = 1050
triggerall = P2StateNo = [1000,4999]
triggerall = StateNo != [1000,2000]
triggerall = power >= 1000
triggerall = MoveType != H
triggerall = statetype != A
triggerall = ctrl = 1
trigger1 = statetype = S
trigger1 = Random < AILevel * 8
;===========================================================================
[State -1, SBMultiKick]
type = ChangeState
value = 650
triggerall = stateno != 650
triggerall = statetype != S
triggerall = MoveType != H
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = Random < AILevel * 7
;===========================================================================
[State -1, SBDashUppercut]
type = ChangeState
value = 600
triggerall = P2BodyDist X < 70
triggerall = stateno != 600
triggerall = statetype != A
triggerall = statetype = S
triggerall = MoveType != H
triggerall = ctrl = 1
trigger1 = Random < AILevel * 5
trigger2 = stateno = [200,235]
;===========================================================================
[State -1, SBDashKick]
type = ChangeState
value = 550
triggerall = P2BodyDist X < 70
triggerall = stateno != 600
triggerall = statetype != A
triggerall = statetype = S
triggerall = MoveType != H
triggerall = ctrl = 1
trigger1 = Random < AILevel * 6

;===========================================================================
[State -1, SB Combo 1]
type = ChangeState
value = 500
triggerall = P2BodyDist X < 70
triggerall = statetype != A
triggerall = stateno != 500
triggerall = MoveType != H
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = Random < AILevel * 8
;===========================================================================
;Charge
[State -1, Charge]
type = ChangeState
value = 280
triggerall = P2BodyDist X > 300
triggerall = power != 3000
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = Random < AILevel * 5
;===========================================================================
[State -1, Projectile]
type = ChangeState
value = 300
triggerall = stateno = 205 || stateno = 215
triggerall = NumProj != 1
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = Random < AILevel * 9
;---------------------------------------------------------------------------
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = P2BodyDist X < 30
triggerall = MoveType != H
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = Random < AILevel * 7
;---------------------------------------------------------------------------
[State -1, Stand Strong Punch]
type = ChangeState
value = 205
triggerall = P2BodyDist X < 30
triggerall = MoveType != H
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = Random < AILevel * 7
trigger2 = stateno = 200 || stateno = 210
;---------------------------------------------------------------------------
[State -1, Stand Light Kick]
type = ChangeState
value = 210
triggerall = P2BodyDist X < 35
triggerall = MoveType != H
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = Random < AILevel * 7
;---------------------------------------------------------------------------
[State -1, Standing Strong Kick]
type = ChangeState
value = 215
triggerall = P2BodyDist X < 35
triggerall = MoveType != H
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = Random < AILevel * 7
trigger2 = stateno = 200 || stateno = 210
;---------------------------------------------------------------------------
[State -1, Crouching Light Punch]
type = ChangeState
value = 220
triggerall = P2BodyDist X < 35
triggerall = MoveType != H
triggerall = statetype = C
triggerall = ctrl = 1
trigger1 = Random < AILevel * 7
;---------------------------------------------------------------------------
[State -1, Crouching Strong Punch]
type = ChangeState
value = 225
triggerall = P2BodyDist X < 35
triggerall = MoveType != H
triggerall = statetype = C
triggerall = ctrl = 1
trigger1 = Random < AILevel * 7
;---------------------------------------------------------------------------
[State -1, Crouching Light Kick]
type = ChangeState
value = 230
triggerall = P2BodyDist X < 35
triggerall = MoveType != H
triggerall = statetype = C
triggerall = ctrl = 1
trigger1 = Random < AILevel * 7
;---------------------------------------------------------------------------
[State -1, Crouching Strong Kick]
type = ChangeState
value = 235
triggerall = P2BodyDist X < 35
triggerall = MoveType != H
triggerall = statetype = C
triggerall = ctrl = 1
trigger1 = Random < AILevel * 7
;---------------------------------------------------------------------------
[State -1, Jump Light Punch]
type = ChangeState
value = 240
triggerall = P2BodyDist X < 50
triggerall = MoveType != H
triggerall = statetype = A
trigger1 = Random < AILevel * 7
;---------------------------------------------------------------------------
[State -1, Jump Strong Punch]
type = ChangeState
value = 245
triggerall = P2BodyDist X < 50
triggerall = MoveType != H
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = Random < AILevel * 7
;---------------------------------------------------------------------------
[State -1, Jump Light Kick]
type = ChangeState
value = 250
triggerall = P2BodyDist X < 50
triggerall = MoveType != H
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = Random < AILevel * 7
;---------------------------------------------------------------------------
[State -1, Jump Strong Kick]
type = ChangeState
value = 255
triggerall = P2BodyDist X < 50
triggerall = MoveType != H
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = Random < AILevel * 7
;---------------------------------------------------------------------------
