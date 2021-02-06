; The CMD file.

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
name = "explosion wave"
command = D, B, F, y
time = 25

[Command]
name = "special combination"
command = D, B, F, x
time = 25

[Command]
name = "super blasts attack"
command = D, B, F, b
time = 25

[Command]
name = "purple beam"
command = D, F, c
time = 20

[Command]
name = "purple beam2"
command = D, B, F, a
time = 25

;-| Special Motions |--------------------------------------------------------

[Command]
name = "kicktp"
command = /F, b
time = 20

[Command]
name = "punchup"
command = /F, x
time = 20

[Command]
name = "punchup2"
command = /F, y
time = 20

[Command]
name = "absorb energy"
command = /B, a
time = 10

[Command]
name = "fastshot"
command = D, F, z
time = 20

[Command]
name = "kneeattack"
command = /F, a
time = 20

[Command]
name = "eyelaser"
command = z
time = 20

[Command]
name = "kiblast"
command = c
time = 20

[Command]
name = "absorb"
command = D, F, y
time = 20

[Command]
name = "absorb"
command = D, F, x
time = 20

[Command]
name = "ceyelaser"
command = z
time = 20

;-| Basic Motions |--------------------------------------------------------

[Command]
name = "fwdteletrans"
command = /F, c
time = 20

[Command]
name = "backteletrans"
command = /B, c
time = 20

[Command]
name = "superj"
command =$D, $U
time = 10

[Command]
name = "fwdtp"
command = /F, z
time = 20

[Command]
name = "backtp"
command = /B, z
time = 20

;-| holds |--------------------------------------------------------
[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
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
name = "holdc"
command = /c
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


;---------------------------------------------------------------------------
; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;===========================================================================
;-----------------------------------------------------------------------------
;-----------------------------------------------------------------------------
;lost cap ? :D
[State -1]
type = ChangeState
value = 8194
triggerall = GetHitVar(animtype) != [3,5]
trigger1 = life < 600
trigger1 = var(37) = 0
trigger1 = statetype = S
trigger1 = statetime >= 5
;---------------------------------------------------------------------------
;-----------------------------------------------------------------------------
;kiblast
[State -1]
type = ChangeState
value = 8583
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = stateno = 0
triggerall = power >= 120
trigger1 =  command = "kiblast" && statetype = S && ctrl = 1
;---------------------------------------------------------------------------
;-----------------------------------------------------------------------------
;purple beam
[State -1]
type = ChangeState
value = 8593
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = stateno = 0
triggerall = power >= 1000
trigger1 =  command = "purple beam2" && statetype = S && ctrl = 1
;---------------------------------------------------------------------------
;-----------------------------------------------------------------------------
;Super blasts attack
[State -1]
type = ChangeState
value = 8161
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = stateno = 0
triggerall = power >= 2000
trigger1 =  command = "super blasts attack" && statetype = S && ctrl = 1
;---------------------------------------------------------------------------
;-----------------------------------------------------------------------------
;Super blasts attack
[State -1]
type = ChangeState
value = 8176
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = stateno = 0
triggerall = power >= 3000
trigger1 =  command = "explosion wave" && statetype = S && ctrl = 1
;---------------------------------------------------------------------------
;-----------------------------------------------------------------------------
;Special combination
[State -1]
type = ChangeState
value = 8170
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = stateno = 0
triggerall = power >= 1000
trigger1 =  command = "special combination" && statetype = S && ctrl = 1
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
;-----------------------------------------------------------------------------
;fastshot
[State -1]
type = ChangeState
value = 8580
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = stateno = 0
triggerall = power >= 400
trigger1 =  command = "fastshot" && statetype = S && ctrl = 1
;---------------------------------------------------------------------------
;-----------------------------------------------------------------------------
;absorb energy
[State -1]
type = ChangeState
value = 8143
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2bodydist y >= -90
trigger1 = stateno = 0
trigger2 = stateno = 20
triggerall = power >= 0
triggerall =  command = "absorb energy" && statetype = S && ctrl = 1
;---------------------------------------------------------------------------
;-----------------------------------------------------------------------------
;absorb energy up
[State -1]
type = ChangeState
value = 8154
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = stateno = 0
trigger2 = stateno = 20
triggerall = p2bodydist y < -90
triggerall = power >= 0
triggerall =  command = "absorb energy" && statetype = S && ctrl = 1
;---------------------------------------------------------------------------
;-----------------------------------------------------------------------------
;eyelaser
[State -1]
type = ChangeState
value = 7960
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = stateno = 0
triggerall = power >= 500
trigger1 =  command = "eyelaser"
;---------------------------------------------------------------------------
;-----------------------------------------------------------------------------
;eyelaser
[State -1]
type = ChangeState
value = 8152
triggerall = statetype = A
triggerall = ctrl = 1
triggerall = power >= 500
trigger1 =  command = "eyelaser"
trigger1 = statetime >= 15
;---------------------------------------------------------------------------
;-----------------------------------------------------------------------------
;crouch eyelaser
[State -1]
type = ChangeState
value = 7970
triggerall = power >= 500
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;Knee attack
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 8147
triggerall = command = "kneeattack"
triggerall = command != "holddown"
triggerall = p2bodydist x < 30
trigger1 = (stateno = 240) && time > 7
trigger2 = (stateno = 230) && time > 2

;---------------------------------------------------------------------------
;Punchup
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 8153
trigger1 = command = "punchup"
trigger2 = command = "punchup2"
triggerall = command != "holddown"
triggerall = p2bodydist x < 30
triggerall = statetime >= 15

;---------------------------------------------------------------------------
;Fwd Tp
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 8149
triggerall = power > 100
triggerall = command = "fwdtp"
trigger1 = ctrl

;---------------------------------------------------------------------------
;Back Tp
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 8150
triggerall = power > 100
triggerall = command = "backtp"
trigger1 = ctrl

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;absorb
[State -1]
type = ChangeState
value = 8105
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = stateno = 0
triggerall = power >= 0
trigger1 =  command = "absorb" && statetype = S && ctrl = 1
;-----------------------------------------------------------------------------

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

;--------------------------------------------------------------------------
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


;===========================================================================
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
trigger2 = time > 9

;---------------------------------------------------------------------------
;Stand Strong Punch
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 10
trigger3 = (stateno = 230) && time > 10

;---------------------------------------------------------------------------
;Stand Light Kick
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = command != "holdb"
triggerall = command != "b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 9
trigger3 = (stateno = 230) && time > 11

;---------------------------------------------------------------------------
;Standing Strong Kick
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

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

;Crouching Stronger Punch
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

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
triggerall = stateno != 640 ;jump_x or jump_a
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
triggerall = stateno != 630 ;jump_x or jump_a
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350 ;Air blocking
;---------------------------------------------------------------------------
;fwd teletrans
;空中強キック
[State -1, Znikanie]
type = ChangeState
value = 7600
triggerall = power >= 500
triggerall = command = "fwdteletrans"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;back teletrans
;空中強キック
[State -1, Znikanie]
type = ChangeState
value = 7601
triggerall = power >= 500
triggerall = command = "backteletrans"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;[State -1, wysysanie energii]
;type = ChangeState
;value = 1360
;triggerall = command = "holdb"
;trigger1 = statetype = S
;trigger1 = stateno != 1360 && stateno != 1361 && stateno != 1362

;---------------------------------------------------------------------------
