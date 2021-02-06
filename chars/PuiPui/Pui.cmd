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
command.time = 15
command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------
;



[command]
name = "paparapa"
command = D,DB,B,b
time = 30

[command]
name = "bolamortal"
command = D,DF,F,x+y
time = 30

[command]
name = "finalflash"
command = D,DF,F,a+b
time = 30

[command]
name = "disparos"
command = D,DF,F,x
time = 30

[command]
name = "bola"
command = D,DB,B,x
time = 30

[command]
name = "puipui"
command = D,DB,B,a
time = 30

[command]
name = "bolaenergia"
command = D,DF,F,a
time = 30

[command]
name = "teleataque"
command = D,DF,F,y
time = 30

[command]
name = "explosionZ"
command = D,DF,F,b
time = 30

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
name = "holdz";Required (do not remove)
command = /$z
time = 1

[Command]
name = "holdc";Required (do not remove)
command = /$c
time = 1

[Command]
name = "holds";Required (do not remove)
command = /$s
time = 1

;---------------------------------------------------------------------------
; 2. State entry
; --------------
; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;===========================================================================
; Ataques de mas de un boton
;---------------------------------------------------------------------------

;paparapa
[State -1, paparapa]
type = Helper
trigger1 = command = "paparapa"
trigger1 = numhelper(890)= 0
triggerall = power >= 1500
helpertype = normal
ID = 890
stateno = 10800
pos = 0,0
postype = back
ownpal = 1
trigger1 = ctrl

;bolA
[State -1, bola]
type = ChangeState
value = 800
triggerall = command = "bola"
trigger1 = ctrl

;Bola mortal
[State -1, bola mortal]
type = ChangeState
value = 700
triggerall = command = "bolamortal"
triggerall = power >= 2000
trigger1 = ctrl
trigger2 = stateno = 900

;Final flash
[State -1, final flash]
type = ChangeState
value = 790
triggerall = command = "finalflash"
triggerall = power >= 2000
trigger1 = ctrl
trigger2 = stateno = 900

;disparos multiples
[State -1, disparos multiples]
type = ChangeState
value = 720
triggerall = command = "disparos"
trigger1 = ctrl

;tele ataque
[State -1, tele ataque]
type = ChangeState
value = 760
triggerall = command = "teleataque"
trigger1 = ctrl
trigger2 = stateno = 900

;explosion z
[State -1, explosion z]
type = ChangeState
value = 780
triggerall = command = "explosionZ"
triggerall = power >= 2500
trigger1 = ctrl
trigger2 = stateno = 900

;Bola energia
[State -1, bola mortal]
type = ChangeState
value = 730
triggerall = command = "bolaenergia"
triggerall = numhelper(730)= 0
triggerall = power >= 500
trigger1 = ctrl
trigger2 = stateno = 900

;Bola energia
[State -1, bola mortal]
type = ChangeState
value = 10730
triggerall = command = "puipui"
triggerall = numhelper(730)= 0
triggerall = power >= 3000
trigger1 = ctrl
trigger2 = stateno = 900



;===========================================================================
; Ataques basicos
;---------------------------------------------------------------------------
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
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 900

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 900

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;Patada agachado 1
[State -1, Crouching Light Punch]
type = ChangeState
value = 430
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Patada agachado 2
[State -1, Crouching Strong Punch]
type = ChangeState
value = 440
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;Patada voladora 1
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 640 || stateno = 630 ;jump_x or jump_a

;---------------------------------------------------------------------------
;Patada voladora 2
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking
;---------------------------------------------------------------------------
;Agarre
[State -1, Jump Strong Kick]
type = ChangeState
value = 710
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;carga
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "holdz"
trigger1 = statetype = S
triggerall = power < 3000
trigger1 = ctrl = 1
trigger2 = stateno = 900

;volar
[State -1, Taunt]
type = ChangeState
value = 901
triggerall = command = "c"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------


















