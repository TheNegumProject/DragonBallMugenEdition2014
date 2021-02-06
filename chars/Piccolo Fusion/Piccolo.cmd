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
; Default value for the "time" parameter of a command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a command. Minimum 1,
; maximum 30.
command.buffer.time = 1
;= A.I ===============================

[Command]
name="CPU_1"
Command=x,x,x,x,x,x
time=1

[Command]
name="CPU_2"
Command= y,y,y,y,y,y
time=1

[Command]
name="CPU_3"
Command= a,a,a,a,a,a
time=1

[Command]
name="CPU_4"
Command= b,b,b,b,b,b
time=1

[Command]
name="CPU_5"
Command= a,b,a,b,a,b
time=1

[Command]
name="CPU_6"
Command=x,y,x,y,x,y
time=1

[Command]
name="CPU_7"
Command= x,x,a,y,b,B+y
time=1

[Command]
name="CPU_8"
Command=x,B,y,x,B,y,x,B,y
time=1

[Command]
name="CPU_9"
Command=a,b,B,y,a,b,B,y
time=1

[Command]
name="CPU_10"
Command=x,y,B,y,x,y,B,y
time=1

[Command]
name="CPU_11"
Command=b,B,y,b,B,y,b
time=1

[Command]
name="CPU_12"
Command=x,a,y,b,B,y
time=1

[Command]
name="CPU_13"
Command=x,a,y,b,B,y,D,DF,F,a
time=1

;=================[Level 3]=====================================================
[command]
name = "Canon Devil Beam";Canon Devil Beam"
command = D,DF,F,B,c
time = 30
;=================[Level 2]=====================================================
[command]
name = "Makankosappo"
command = D,DF,F,B,x+y
time = 30
[command]
name = "Hellzone Grenade"
command = D,DB,B,D,DB,B, a+b
time = 30
;=================[Level 1]=====================================================
[command]
name = "Gekiretsukodan"
command = D,DB,B,F,c
time = 30
[command]
name = "Mouth Beam"
command = D,DB,B,D,DF,F,x+y
time = 30
[command]
name = "Mouth Beam"
command = D,DB,B,D,DF,F,x+y
time = 30
[command]
name = "Electric"
command = D,DB,B,D,DB,B, c
time = 30

========[Especiales de Ki-XYZ]============================================
[command]
name = "Fire Balls"
command = c
time = 20
[command]
name = "Atomic-Blast"
command = D,DF,F, c
time = 25
[command]
name = "PhotonBomber"
command = /D, c
time = 20
[command]
name = "Garlick-Cannon"
command = D,DB,B,c
time = 20
[command]
name = "Big-Ball"
command = D,DF,F,c
time = 20
[command]
name = "Crazy-Ball-Ex"
command = c
time = 30
[command]
name = "Crazy-Ball"
command = /D, c
time = 15
[command]
name = "Eyes-Beam"
command = D,DB,B, c
time = 25
;====================[Especiales de melé-XYZ]=====================================

[command]
name = "stretching arms-EX"
command = $B,F,B, x+y
time = 20

[command]
name = "stretching arms-Débil"
command = D,DB,B,x
time = 20
[command]
name = "stretching arms-Medio"
command = D,DB,B,y
time = 20

[command]
name = "codazo"
command = D,DF,F,x
time = 15
[command]
name = "codazo2"
command = D,DF,F,y
time = 15

[command]
name = "Launcher"
command = a+x
time = 1

[command]
name = "Arm"
command = y
time = 1
;====================[Especiales de melé-ABC]=====================================
[command]
name = "ComboPatada1"
command = B,F,a
time = 15
[command]
name = "ComboPatada2"
command = B,F,b
time = 15
[command]
name = "ComboPatada3"
command = B,F,a+b
time = 15
[command]
name = "Knee-Smash-Debil"
command = D,DB,B,a
time = 20
[command]
name = "Knee-Smash-Medio"
command = D,DB,B,b
time = 20
[command]
name = "Knee-Smash-Ex"
command = D,DB,B,a+b
time = 20
[command]
name = "Raigeki-Shuu-Debil"
command = F,DF,D,a
time = 15
[command]
name = "Raigeki-Shuu-Medio"
command = F,DF,D,b
time = 15
[command]
name = "Raigeki-Shuu-Ex"
command = F,DF,D,a+b
time = 15
;==================[Comandos]============================================

[command]
name = "Super Jump"
command = ~D, U
time = 10

;-| Double Tap |-----------------------------------------------------------
[command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 15

[command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 15

;-| 2/3 Button Combination |-----------------------------------------------
[command]
name = "PP"
command = x+y
time = 1

[command]
name = "KK"
command = a+b
time = 1

[command]
name = "DummyPlug"
command = b+c
time = 1

[command]
name = "dodge"
command = a+x
time = 1

[command]
name = "Zero-Counter"
command = b+y
time = 1

[command]
name = "Regeneration"
command = z+c
time = 1

[command]
name = "charge"
command = /b
time = 1

[command]
name = "charge 1"
command = /y
time = 1

[command]
name = "hold_a"
command = /a
time = 1

[command]
name = "hold_b"
command = /b
time = 1

[command]
name = "hold_c"
command = /c
time = 1

[command]
name = "hold_x"
command = /x
time = 1

[command]
name = "hold_y"
command = /y
time = 1

[command]
name = "fly"
command = a+b
time = 1

[command]
name = "recovery";Required (do not remove)
command = a+b
time = 1

[command]
name = "holda"
command = /a
time = 1

[command]
name = "holdb"
command = /b
time = 1

[command]
name = "FF"
command = F, F
time = 10

[command]
name = "BB"
command = B, B
time = 10

[command]
name = "UU"
command = U, U
time = 10

[command]
name = "DD"
command = D, D
time = 10



;-| Dir + Button |---------------------------------------------------------
[command]
name = "down_a"
command = /$D,a
time = 1

[command]
name = "down_b"
command = /$D,b
time = 1

;-| Single Button |---------------------------------------------------------
[command]
name = "a"
command = a
time = 1

[command]
name = "b"
command = b
time = 1

[command]
name = "c"
command = c
time = 1

[command]
name = "x"
command = x
time = 1

[command]
name = "y"
command = y
time = 1

[command]
name = "z"
command = z
time = 1

[command]
name = "start"
command = s
time = 1

[command]
name = "forward"
command = F
time = 1

[command]
name = "back"
command = B
time = 1

[command]
name = "up"
command = U
time = 1

[command]
name = "down"
command = D
time = 1
;-| Hold Dir |--------------------------------------------------------------
[command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[command]
name = "holddf";Required (do not remove)
command = /$DF
time = 1

[command]
name = "holddb";Required (do not remove)
command = /$DB
time = 1

[command]
name = "holdub";Required (do not remove)
command = /$UB
time = 1

[command]
name = "holduf";Required (do not remove)
command = /$UF
time = 1

[command]
name = "holda";Required (do not remove)
command = /a
time = 1

[command]
name = "holdb";Required (do not remove)
command = /b
time = 1

[command]
name = "holdc";Required (do not remove)
command = /c
time = 1

[command]
name = "holdx";Required (do not remove)
command = /x
time = 1

[command]
name = "holdy";Required (do not remove)
command = /y
time = 1

[command]
name = "holdz";Required (do not remove)
command = /z
time = 1

[Statedef -1]
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
;===============================================================================
;AI
[State -1,AI]
type=VarSet
trigger1=Command="CPU_1"
trigger2=Command="CPU_2"
trigger3=Command="CPU_3"
trigger4=Command="CPU_4"
trigger5=Command="CPU_5"
trigger6=Command="CPU_6"
trigger7=Command="CPU_7"
trigger8=Command="CPU_8"
trigger9=Command="CPU_9"
trigger10=Command="CPU_10"
trigger11=Command="CPU_11"
trigger12=Command="CPU_12"
trigger12=Command="CPU_13"
v=59
value=1
;===============================================================================
;---------------- Supers -------------------------------------------------------
;===============================================================================

;-------------------------------------------------------------------------------
;AirMakankosappo
[State -1, AirMakankosappo]
type = ChangeState
value = 3200
triggerall = command = "Makankosappo" && Power >=2000
trigger1 = (statetype = A && ctrl)
trigger2 = (stateno = 630 || stateno = 640 || stateno = 650) && movecontact
trigger3 = (stateno = 1710) && movecontact
;-------------------------------------------------------------------------------
;Makankosappo
[State -1, Makankosappo]
type = ChangeState
value = 3250
triggerall = command = "Makankosappo" && Power >=2000
trigger1 = p2stateno=3250 && stateno!=3250
;-----------------------------------
;-------------------------------------------------------------------------------
;Makankosappo
[State -1, Makankosappo]
type = ChangeState
value = 3250
triggerall = command = "Makankosappo" && Power >=2000
trigger1 = (statetype != A && ctrl)
;-------------------------------------------------------------------------------
;BigBang Burst
[State -1, BigBang Burst]
type = ChangeState
value = 3500
triggerall = command = "Gekiretsukodan" && Power >=1000
trigger1 = statetype = A && ctrl
trigger2 = (stateno = 600 || stateno = 610 || stateno = 620) && movecontact
trigger3 = (stateno = 630 || stateno = 640 || stateno = 650) && movecontact
trigger4 = (stateno = 1710) && movecontact
;-------------------------------------------------------------------------------
;Gekiretsukodan
[State -1, Gekiretsukodan]
type = ChangeState
value = 3550
triggerall = command = "Gekiretsukodan" && Power >=1000
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210 || stateno = 211 || stateno = 220) && movecontact
trigger3 = (stateno = 230 || stateno = 231 || stateno = 240 || stateno = 241 || stateno = 250) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 420 || stateno = 430 || stateno = 440) && movecontact
trigger5 = stateno = 1513 && movecontact
;-------------------------------------------------------------------------------
;Hellzone Grenade
[State -1, Hellzone Grenade]
type = ChangeState
value = 3400
triggerall = command = "Hellzone Grenade" && Power >=2000
trigger1 =(statetype = S && ctrl)
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210 || stateno = 211 || stateno = 220) && movecontact
trigger3 = (stateno = 230 || stateno = 231 || stateno = 240 || stateno = 241 || stateno = 250) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 420 || stateno = 430 || stateno = 440) && movecontact
TRIGGER5 = stateno = 1301 && movecontact
trigger6 = stateno = 1513 && movecontact
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;Electric
[State -1, Electric]
type = ChangeState
value = 3100
triggerall = command = "Electric"
triggerall = Power >=1000
triggerall = prevstateno != 3100
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210 || stateno = 211 || stateno = 220) && movecontact
trigger3 = (stateno = 230 || stateno = 231 || stateno = 240 || stateno = 241 || stateno = 250) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 420 || stateno = 430 || stateno = 440) && movecontact
;-------------------------------------------------------------------------------
;Mouth Beam
[State -1, Mouth Beam]
type = ChangeState
value = 3300
triggerall = command = "Mouth Beam"
triggerall = Power >=1000
triggerall = prevstateno != 3300
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210 || stateno = 211 || stateno = 220) && movecontact
trigger3 = (stateno = 230 || stateno = 231 || stateno = 240 || stateno = 241 || stateno = 250) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 420 || stateno = 430) && movecontact

;-------------------------------------------------------------------------------
;Canon Devil Beam
[State -1, Canon Devil Beam]
type = ChangeState
value = 3600
triggerall = command = "Canon Devil Beam"
triggerall = Power >=3000
triggerall = prevstateno != 3600
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210 || stateno = 211 || stateno = 220) && movecontact
trigger3 = (stateno = 230 || stateno = 231 || stateno = 240 || stateno = 241 || stateno = 250) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 420 || stateno = 430 || stateno = 440) && movecontact
;
;===============================================================================
;---------------- Specials Ki --------------------------------------------------
;===============================================================================
;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;Crazy-Ball-Execution
[State -1, Crazy-Ball-Execution]
type = ChangeState
value = 2102
triggerall = command = "Crazy-Ball-Ex"
triggerall = numhelper(2110) >=1 && power >= 100
trigger1 = statetype = S
trigger1 = ctrl
;-------------------------------------------------------------------------------
;Atomic-Blast
[State -1, Atomic-Blast]
type = ChangeState
value = 2300;ifelse(var(56)=1,2300,2400)
triggerall = power >= 500
triggerall = numhelper(2320)=0
triggerall = command = "Atomic-Blast"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210 || stateno = 211|| stateno = 220) && movecontact
trigger3 = (stateno = 230 || stateno = 231 || stateno = 240 || stateno = 241 || stateno = 250) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 420|| stateno = 430 || stateno = 440) && movecontact
trigger5 = stateno = 1513 && movecontact
;-------------------------------------------------------------------------------
;Garlick-Cannon
[State -1, Garlick-Cannon]
type = ChangeState
value = 2800
triggerall = command = "Garlick-Cannon"
triggerall = power >= 500
trigger1 = statetype = A && ctrl
trigger2 = (stateno = 600 ||stateno = 610 ||stateno = 620 ||stateno = 630 ||stateno = 640 ||stateno = 650) && movecontact
trigger3 = (stateno = [107,108]) && time >=10
trigger4 = (stateno = 1700) && movecontact
trigger5 = (stateno = 1710) && movecontact
;-------------------------------------------------------------------------------
;Big-Ball
[State -1, Big-Ball]
type = ChangeState
value = 2600
triggerall = command = "Big-Ball"
triggerall = power >= 500
triggerall = numhelper(2610)=0 && numhelper(8023)=0
trigger1 = statetype = A && ctrl
trigger2 = (stateno = 600 ||stateno = 610 ||stateno = 620 ||stateno = 630 ||stateno = 640 ||stateno = 650) && movecontact
trigger3 = (stateno = [107,108]) && time >=10
trigger4 = (stateno = 1710) && movecontact
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
[State -1, Rodillazo-Ex]
type = ChangeState
value = 1720
triggerall = command = "Knee-Smash-Ex" && power >=500
trigger1 = statetype != A
trigger1 = ctrl = 1 || (stateno = [100,101])
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210 || stateno = 211|| stateno = 220) && movecontact
trigger3 = (stateno = 230 || stateno = 231 || stateno = 240 || stateno = 241 || stateno = 250) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 420|| stateno = 430 || stateno = 440) && movecontact
trigger5 = stateno = 1513 & movecontact
;-------------------------------------------------------------------------------
;rodillazo1
[State -1, Rodillazo-Debil]
type = ChangeState
value = 1700
triggerall = command = "Knee-Smash-Debil"
trigger1 = statetype != A
trigger1 = ctrl = 1 || (stateno = [100,101])
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210 || stateno = 211|| stateno = 220) && movecontact
trigger3 = (stateno = 230 || stateno = 231 || stateno = 240 || stateno = 241 || stateno = 250) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 420|| stateno = 430 || stateno = 440) && movecontact
trigger5 = stateno = 1513 & movecontact
;-------------------------------------------------------------------------------
[State -1, Rodillazo-Medio]
type = ChangeState
value = 1710
triggerall = command = "Knee-Smash-Medio"
trigger1 = statetype != A
trigger1 = ctrl = 1 || (stateno = [100,101])
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210 || stateno = 211|| stateno = 220) && movecontact
trigger3 = (stateno = 230 || stateno = 231 || stateno = 240 || stateno = 241 || stateno = 250) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 420|| stateno = 430 || stateno = 440) && movecontact
trigger5 = stateno = 1513 & movecontact
;-------------------------------------------------------------------------------


;-------------------------------------------------------------------------------
;stretching arms-Débil
[State -1, stretching arms-Débil]
type = ChangeState
value = 1600
triggerall = command = "stretching arms-Débil"
trigger1 = statetype != A
trigger1 = ctrl = 1 || (stateno = [100,101])
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210 || stateno = 211|| stateno = 220) && movecontact
trigger3 = (stateno = 230 || stateno = 231 || stateno = 240 || stateno = 241 || stateno = 250) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 420|| stateno = 430 || stateno = 440) && movecontact

;-------------------------------------------------------------------------------
;stretching arms-Medio
[State -1, stretching arms-Medio]
type = ChangeState
value = 1610
triggerall = command = "stretching arms-Medio"
trigger1 = statetype != A
trigger1 = ctrl = 1 || (stateno = [100,101])
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210 || stateno = 211|| stateno = 220) && movecontact
trigger3 = (stateno = 230 || stateno = 231 || stateno = 240 || stateno = 241 || stateno = 250) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 420|| stateno = 430 || stateno = 440) && movecontact

;-------------------------------------------------------------------------------

;---------------------------------------------------------------------------
;===============================================================================
;---------------- Specials -----------------------------------------------------
;===============================================================================

;stretching arms-EX
[State -1,stretching arms-EX]
type = ChangeState
value = 1300
triggerall = command = "stretching arms-EX" && power >=500
trigger1= (StateType = S) && (Ctrl)  || (stateno = [100,101])
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210 || stateno = 211 || stateno = 220) && movecontact
trigger3 = (stateno = 230 || stateno = 231 || stateno = 240 || stateno = 241 || stateno = 250) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 420|| stateno = 430 || stateno = 440) && movecontact
;-------------------------------------------------------------------------------
;Codazo
[State -1, Codazo]
type = ChangeState
value = 1500
triggerall = command = "codazo"
trigger1 = statetype != A
trigger1 = ctrl = 1 || (stateno = [100,101])
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210 || stateno = 211|| stateno = 220) && movecontact
trigger3 = (stateno = 230 || stateno = 231 || stateno = 240 || stateno = 241 || stateno = 250) && movecontact

trigger4 = (stateno = 400 || stateno = 410 || stateno = 420|| stateno = 430 || stateno = 440) && movecontact
;-------------------------------------------------------------------------------
;Codazo2
[State -1, Codazo 2]
type = ChangeState
value = 1510
triggerall = command = "codazo2"
trigger1 = statetype != A
trigger1 = ctrl = 1 || (stateno = [100,101])
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210 || stateno = 211|| stateno = 220) && movecontact
trigger3 = (stateno = 230 || stateno = 231 || stateno = 240 || stateno = 241 || stateno = 250) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 420|| stateno = 430 || stateno = 440) && movecontact

;-------------------------------------------------------------------------------
;Eyes-Beam
[State -1, Eyes-Beam]
type = ChangeState
value = 2200
triggerall = power >= 400
triggerall = command = "Eyes-Beam"
trigger1 = statetype = S || statetype = C
trigger1 = ctrl = 1
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210 || stateno = 211|| stateno = 220) && movecontact
trigger3 = (stateno = 230 || stateno = 231 || stateno = 240 || stateno = 241 || stateno = 250) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 420|| stateno = 430 || stateno = 440 || stateno = 450) && movecontact
trigger5 = stateno = 1513 && movecontact
;===============================================================================
;---------------- Comands ------------------------------------------------------
;===============================================================================
;Ki Charge
[State -1,Ki Charge]
type = ChangeState
value = 730
triggerall = ((power < 3000) || (power > 3000)) && var(56)!=1
trigger1 = command = "charge" && time > 5
trigger1 = command = "charge 1" && time > 5
trigger1 = (StateType = S) && (Ctrl)
;-------------------------------------------------------------------------------
;Launcher
[State -1, Launcher]
type = ChangeState
value = 1200
triggerall = command = "Launcher"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210 || stateno = 211|| stateno = 220) && movecontact
trigger3 = (stateno = 230 || stateno = 231 || stateno = 240 || stateno = 241 || stateno = 250) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 420|| stateno = 430 || stateno = 440) && movecontact
;-------------------------------------------------------------------------------
;Arm
[State -1, Arm]
type = ChangeState
value = 1210
triggerall = command = "Arm"
triggerall = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210 || stateno = 211|| stateno = 220) && movecontact
trigger3 = (stateno = 230 || stateno = 231 || stateno = 240 || stateno = 241 || stateno = 250) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 420|| stateno = 430 || stateno = 440) && movecontact
;-------------------------------------------------------------------------------
;Raigeki-Shuu-Ex
[State -1,Raigeki-Shuu-Ex]
type = ChangeState
value = 1450
triggerall = command = "Raigeki-Shuu-Ex" && power >=500
trigger1= (StateType = A) && (Ctrl)
trigger2 = (stateno = 600 ||stateno = 610 ||stateno = 620 ||stateno = 630 ||stateno = 640 ||stateno = 650) && movecontact
trigger3 = (stateno = [107,108]) && time >=10
trigger4 = (stateno = 1710) && movecontact; && animelem = 3,>= 6
;-------------------------------------------------------------------------------
;Raigeki-Shuu-Debil
[State -1,Raigeki-Shuu-Debil]
type = ChangeState
value = 1400
triggerall = command = "Raigeki-Shuu-Debil"
trigger1= (StateType = A) && (Ctrl)
trigger2 = (stateno = 600 ||stateno = 610 ||stateno = 620 ||stateno = 630 ||stateno = 640 ||stateno = 650) && movecontact
trigger3 = (stateno = [107,108]) && time >=10
;-------------------------------------------------------------------------------
;Raigeki-Shuu-Medio
[State -1,Raigeki-Shuu-Medio]
type = ChangeState
value = 1425
triggerall = command = "Raigeki-Shuu-Medio"
trigger1= (StateType = A) && (Ctrl)
trigger2 = (stateno = 600 ||stateno = 610 ||stateno = 620 ||stateno = 630 ||stateno = 640 ||stateno = 650) && movecontact
trigger3 = (stateno = [107,108]) && time >=10
trigger4 = (stateno = 1710) && movecontact && animelem = 3,>=4
;-------------------------------------------------------------------------------
;Super Jump
[State -1,Super Jump]
type = ChangeState
value = 60
triggerall = command = "Super Jump"
trigger1 = (statetype = S) && (ctrl)
;-------------------------------------------------------------------------------
;Run-Forward
[State -1, Run-Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = stateno != 700
trigger1 = stateno != [100,101]
;-------------------------------------------------------------------------------
;Run-Back
[State -1, Run-Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;-------------------------------------------------------------------------------
;Air-Dash Forward
[State -1,Air-Dash Forward]
type = ChangeState
value = 107
trigger1 = (command = "FF")
trigger1 = (StateType = A) && (Ctrl)
;-------------------------------------------------------------------------------
;Air-Dash Back
[State -1,Air-Dash Back]
type = ChangeState
value = 108
trigger1 = (command = "BB")
trigger1 = (StateType = A) && (Ctrl)
;-------------------------------------------------------------------------------
[State -1, Regeneration]
type = ChangeState
triggerall = var(8) != 1
triggerall = life < 300
triggerall = power >=3000
trigger1 = command = "Regeneration"
trigger1 = statetype = S && ctrl
value = 770
ctrl = 0
;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
[State -1, Zanzoken]
type = ChangeState
triggerall = command = "z" && power >=250 && var(56)!=1
trigger1 = ctrl &&  stateno !=[710,712]
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210 || stateno = 211|| stateno = 220) && movecontact
trigger3 = (stateno = 230 || stateno = 231 || stateno = 240 || stateno = 241 || stateno = 250) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 420|| stateno = 430 || stateno = 440 || stateno = 450) && movecontact
trigger5 = (stateno = 600 || stateno = 610 || stateno = 620|| stateno = 630 || stateno = 640 || stateno = 650) && movecontact
trigger6 = stateno = 700 && time > 4
value = 710
ctrl = 0
;-------------------------------------------------------------------------------
[State -1, Counter]
type = ChangeState
triggerall = command = "Zero-Counter" && power >=500
trigger1 = stateno = [150,155]
TRIGGER2 = stateno = 701 || stateno = 700
value = IFELSE(statetype = A,744,740)
ctrl = 0
;-------------------------------------------------------------------------------
[State -1, Stand-Parry]
type = HitOverride
triggerall = statetype = S
triggerall = command = "forward" && command != "down" && command != "up" && command != "back" 
trigger1 = ctrl || stateno = 700
attr = SCA,AP,AA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 700
time = 8
forceair = 0
;-------------------------------------------------------------------------------
[State -1, Air-Parry]
type = HitOverride
triggerall = statetype = A
triggerall = command = "forward" && command != "down" && command != "up" && command != "back"
trigger1 = ctrl || stateno = 701
attr = SCA,AP,AA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 701
time = 8
forceair = 0
;===============================================================================
;---------------- Básicos ------------------------------------------------------
;===============================================================================
;-------------------------------------------------------------------------------
;820-Agarre-Simple
[State -1, 820-Agarre-Simple]
type = ChangeState
value = 820
triggerall = command = "x" && command = "y"
triggerall = p2bodydist x < 3
triggerall = command != "holddown"
triggerall = p2STATETYPE !=L
trigger1 = statetype = S
trigger1 = ctrl || (stateno = [100,101])
;-------------------------------------------------------------------------------
;200-Codo-Stand
[State -1, 200-Codo-Stand]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = p2bodydist x < 3
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl || (stateno = [100,101])
;-------------------------------------------------------------------------------
;201-Puño-Stand
[State -1, 201-Puño-Stand]
type = ChangeState
value = 201
triggerall = command = "x"
triggerall = p2bodydist x >= 3
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl || (stateno = [100,101])
trigger2 = (stateno = 200) && movecontact
;-------------------------------------------------------------------------------
;210-Gancho-Stand
[State -1, 210-Gancho-Stand]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = p2bodydist x < 3
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl || (stateno = [100,101])
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 230) && movecontact
trigger4 = (stateno = [400,450]) && movecontact
;-------------------------------------------------------------------------------
;211-Puño-Stand
[State -1, 211-Puño-Stand]
type = ChangeState
value = 211
triggerall = command = "y"
triggerall = p2bodydist x >= 3
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl || (stateno = [100,101])
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210) && movecontact
trigger3 = (stateno = 230 || stateno = 231 ) && movecontact
trigger4 = (stateno = 400 || stateno = 410 ) && movecontact

;-------------------------------------------------------------------------------
;230-Rodilla-Stand
[State -1, 230-Rodilla-Stand]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = p2bodydist x < 3
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl || (stateno = [100,101])
;-------------------------------------------------------------------------------
;231-Patada-Stand
[State -1, 231-Patada-Stand]
type = ChangeState
value = 231
triggerall = command = "a"
triggerall = p2bodydist x >= 3
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl || (stateno = [100,101])
trigger2 = (stateno = 200 || stateno = 210) && movecontact
trigger3 = (stateno = 230) && movecontact
trigger4 = (stateno = 400 || stateno = 430) && movecontact
;-------------------------------------------------------------------------------
;240-Patadita-Stand
[State -1, 240-Patadita-Stand]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = p2bodydist x < 5
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl || (stateno = [100,101])
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210) && movecontact
trigger3 = (stateno = 230 || stateno = 231) && movecontact
trigger4 = (stateno = [400,430]) && movecontact
;-------------------------------------------------------------------------------
;241-Patadon-Stand
[State -1, 241-Patadon-Stand]
type = ChangeState
value = 241
triggerall = command = "b"
triggerall = p2bodydist x >= 5
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl || (stateno = [100,101])
trigger2 = (stateno = 200 || stateno = 201 || stateno = 211 || stateno = 210) && movecontact
trigger3 = (stateno = 230 || stateno = 231 || stateno = 240) && movecontact
trigger4 = (stateno = [400,430]) && movecontact
;Fire Balls
[State -1, Fire Balls]
type = ChangeState
value = 2000
triggerall = power >= 200
triggerall = command = "Fire Balls"
trigger1 = statetype =S
trigger1 = ctrl = 1
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210 || stateno = 211|| stateno = 220) && movecontact
trigger3 = (stateno = 230 || stateno = 231 || stateno = 240 || stateno = 241 || stateno = 250) && movecontact
trigger4 = (stateno = [400,440]) && movecontact

;-------------------------------------------------------------------------------
;Taunt
;’§”­
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
;-------------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;-------------------------------------------------------------------------------
;Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400 || stateno = 430) && movecontact
trigger3 = ((stateno = 200) || (stateno = 230))&& movecontact
;-------------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 230 || stateno = 231) && movecontact
;-------------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400 || stateno = 410 || stateno = 430) && movecontact
trigger3 = (stateno = [200,241]) && movecontact
;-------------------------------------------------------------------------------
;Fire Balls
;[State -1, Fire Balls]
;type = ChangeState
;value = 2050
;triggerall = power >= 100
;triggerall = command = "Fire Balls"
;triggerall = command = "holddown"
;trigger1 = statetype = C
;trigger1 = ctrl = 1
;trigger2 = (stateno = 200 || stateno = 201 || stateno = 210 || stateno = 211|| stateno = 220) && movecontact
;trigger3 = (stateno = 230 || stateno = 231 || stateno = 240 || stateno = 241 || stateno = 250) && movecontact
;trigger4 = (stateno = 400 || stateno = 410 || stateno = 420|| stateno = 430 || stateno = 440 ) && movecontact
;trigger5 = stateno = 1200 && movehit
;-------------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = stateno != 1350
trigger3 = (stateno = [107,108]) && time >=10
;-------------------------------------------------------------------------------
;Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = stateno != 1350
trigger2 = (stateno = 600 || stateno = 630) && movecontact
trigger3 = (stateno = [107,108]) && time >=10
;-------------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = stateno != 1350
trigger3 = (stateno = [107,108]) && time >=10
;-------------------------------------------------------------------------------
;Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = stateno != 1350
trigger2 = (stateno = 600 || stateno = 630) && movecontact
trigger3 = (stateno = [107,108]) && time >=10
;-------------------------------------------------------------------------------
;Air-Fire Balls
[State -1, Air-Fire Balls]
type = ChangeState
value = 2150
triggerall = power >= 200
triggerall = command = "Fire Balls"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = (stateno = 600 ||stateno = 610 ||stateno = 620 ||stateno = 630 ||stateno = 640 ||stateno = 650) && movecontact
trigger3 = (stateno = [107,108]) && time >=10
trigger4 = stateno = 1700 && movecontact && time > 16
trigger5 = stateno = 1710 && movecontact && time > 18
