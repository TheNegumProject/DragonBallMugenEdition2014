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

;-|AI |--------------------------------------------------------------------

[command]
name = "AI1"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 1

[command]
name = "AI2"
command = b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b
time = 1

[command]
name = "AI3"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 1

[command]
name = "AI4"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 1

[command]
name = "AI5"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 1

[command]
name = "AI6"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 1

[command]
name = "AI7"
command = a,b,a,b,a,b,a,b,a,b,a,b,a,b,a,b,a,b,a,b,a
time = 1

[command]
name = "AI8"
command = b,c,b,c,b,c,b,c,b,c,b,c,b,c,b,c,b,c,b,c,b
time = 1

[command]
name = "AI9"
command = c,x,c,x,c,x,c,x,c,x,c,x,c,x,c,x,c,x,c,x,c
time = 1

[command]
name = "AI10"
command = x,y,x,y,x,y,x,y,x,y,x,y,x,y,x,y,x,y,x,y,x
time = 1

[command]
name = "AI11"
command = y,z,y,z,y,z,y,z,y,z,y,z,y,z,y,z,y,z,y,z,y
time = 1

[command]
name = "AI12"
command = x,y,b,a,b,y,b,b,a,b,y,y,b,z,b,y,b,b,b,b,y
time = 1

[command]
name = "AI13"
command = y,b,b,z,b,z,y,x,c,b,a,b,a,b,z,a,z,y,x,c,b
time = 1

[command]
name = "AI14"
command = z,b,x,y,b,b,c,a,b,c,a,z,b,x,y,b,b,c,b,c,c
time = 1


;-| Supers e Hypers, etc. "Normal MODE" |---------------------------------------------------

[Command]
name = "Kienzan"
command = D, B , a
time = 15

[Command]
name = "Beam"
command = D, DB, B, c
time = 25

[Command]
name = "Taioken"
command = D, DB, B, x
time = 15

[Command]
name = "Transformacion"
command = a+x
time = 30

[Command]
name = "KameHa"
command = D, DB, B, F, b
time = 25

[Command]
name = "Genkidama"
command = D, DB, c
time = 25



;-| Supers e Hypers, etc. "SSJ MODE" |---------------------------------------------------

[Command]
name = "Kienzan"
command = D, B , a
time = 15

[Command]
name = "Ki explod"
command = D, DF, F, c
time = 15

[Command]
name = "Beam"
command = D, DB, B, c
time = 25

[Command]
name = "Taioken"
command = D, DB, B, x
time = 15

[Command]
name = "KameHa"
command = D, DB, B, F, b
time = 25

[Command]
name = "Ultra Codazo"
command = D, DB, B, F, y
time = 25

;-| Especiales de melé |-----------------------------------------------------------

[Command]
name = "Air Kick"
command = D, DF, F, b
time = 15

[Command]
name = "Dashing Punch"
command = D, DF, F, x
time = 15

[Command]
name = "Air Punch"
command = D, DF, F, y
time = 15

[command]
name = "Launcher"
command = x+y
time = 1

[command]
name = "Launcher"
command = x+z
time = 1

[command]
name = "Launcher"
command = y+z
time = 1

;-| Otros Comandos |---------------------------------------------------------------

[Command]
name = "Super Jump"
command = D, U
time = 10

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

[Command]
name = "DD"
command = D, D
time = 10

[Command]
name = "cargar"
command = /x
time = 1

[Command]
name = "cargar 1"
command = /a
time = 1

[Command]
name = "fly-1"
command = /a
time = 1

[Command]
name = "fly-2"
command = /y
time = 1

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
command = /$a
time = 1

[Command]
name = "holdb";Required (do not remove)
command = /$b
time = 1

[Command]
name = "holdc";Required (do not remove)
command = /$c
time = 1

[Command]
name = "holdx";Required (do not remove)
command = /$x
time = 1

[Command]
name = "holdy";Required (do not remove)
command = /$y
time = 1

[Command]
name = "holdz";Required (do not remove)
command = /$z
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

;------------------------------
[State -1, AI]
type = VarSet
trigger1 = command = "AI1"
trigger2 = command = "AI2"
trigger3 = command = "AI3"
trigger4 = command = "AI4"
trigger5 = command = "AI5"
trigger6 = command = "AI6"
trigger7 = command = "AI7"
trigger8 = command = "AI8"
trigger9 = command = "AI9"
trigger10 = command = "AI10"
trigger11 = command = "AI11"
trigger12 = command = "AI12"
trigger13 = command = "AI13"
trigger14 = command = "AI14"
v = 9
value = 1

[State -1, IA de Defensa]
type = ChangeState
value = 132
triggerall = p2movetype = A || (enemy, NumProj >= 1)
triggerall = P2bodydist X <= 40 || (enemy, NumProj >= 1)
triggerall = statetype = A
triggerall = random <= 600
triggerall = var(9) = 1
triggerall = ctrl
triggerall = stateno != 132
trigger1   = p2statetype = A
trigger2   = (enemy, NumProj >= 1)

[State -1, IA de Defensa]
type = ChangeState
value = 130
triggerall = p2movetype = A || (enemy, NumProj >= 1)
triggerall = P2bodydist X <= 40 || (enemy, NumProj >= 1)
triggerall = random <= 400
triggerall = statetype != A
triggerall = var(9) = 1
triggerall = ctrl
triggerall = stateno != 120
trigger1   = p2statetype = S
trigger2   = (enemy, NumProj >= 1)



;---------------------------------------------------------------------------
;Transformacion SSJ
[State -1, Transformacion SSJ]
type = ChangeState
value = 1000
triggerall = Var(19) = 0
triggerall = (power = powermax)
triggerall = (command = "Transformacion")
trigger1   = (StateType = S) && (Ctrl)

;---------------------------------------------------------------------------
;Genkidama
[State -1, Genkidama]
type = ChangeState
value = 800
triggerall = Var(19) = 0
triggerall = (Power = powermax)
triggerall = (Command = "Genkidama")
trigger1   = (StateType = S) && (Ctrl)

;---------------------------------------------------------------------------
;KameHa - Normal Mode
[State -1, KameHa - Normal Mode]
type = ChangeState
value = 810
triggerall = Var(19) = 0
triggerall = (Power >= 1500)
triggerall = (Command = "KameHa")
trigger1   = (StateType = S) && (Ctrl)

;---------------------------------------------------------------------------
;KameHa - SSJ Mode
[State -1, KameHa - SSJ Mode]
type = ChangeState
value = 814
triggerall = Var(19) = 1
triggerall = (Power = powermax)
triggerall = (Command = "KameHa")
trigger1   = (StateType = S) && (Ctrl)

;---------------------------------------------------------------------------
;Beam - Normal Mode
[State -1, Beam - Normal Mode]
type = ChangeState
value = 8083
triggerall = Var(19) = 0
triggerall = (Power >= 300)
triggerall = (Command = "Beam")
trigger1   = (StateType = S) && (Ctrl)

;---------------------------------------------------------------------------
;Beam - SSJ Mode
[State -1, Beam - SSJ Mode]
type = ChangeState
value = 808
triggerall = Var(19) = 1
triggerall = (Power >= 500)
triggerall = (Command = "Beam")
trigger1   = (StateType = S) && (Ctrl)

;---------------------------------------------------------------------------
;AirBeam - Normal Mode
;[State -1, AirBeam - Normal Mode]
;type = ChangeState
;value = 8084
;triggerall = Var(19) = 0
;triggerall = (Power >= 300)
;triggerall = (Command = "Beam")
;trigger1   = (StateType = A) && (Ctrl)
;trigger2   = Stateno = 991

;---------------------------------------------------------------------------
;AirBeam - SSJ Mode
;[State -1, AirBeam - SSJ Mode]
;type = ChangeState
;value = 8082
;triggerall = Var(19) = 1
;triggerall = (Power >= 500)
;triggerall = (Command = "Beam")
;trigger1   = (StateType = A) && (Ctrl)
;trigger2   = Stateno = 991

;---------------------------------------------------------------------------
;Ki explod - SSJ Mode
[State -1, Ki explod - SSJ Mode]
type = ChangeState
value = 822
triggerall = Var(19) = 1
triggerall = (power >= 400)
triggerall = (command = "Ki explod")
trigger1   = (StateType = S) && (Ctrl)

;---------------------------------------------------------------------------
;Taioken - Normal Mode
[State -1, Taioken - Normal Mode]
type = ChangeState
value = 820
triggerall = Var(19) = 0
triggerall = (power >= 500)
triggerall = (command = "Taioken")
trigger1   = (StateType = S) && (Ctrl)

;---------------------------------------------------------------------------
;Taioken - SSJ Mode
[State -1, Taioken - SSJ Mode]
type = ChangeState
value = 821
triggerall = Var(19) = 1
triggerall = (power >= 500)
triggerall = (command = "Taioken")
trigger1   = (StateType = S) && (Ctrl)

;---------------------------------------------------------------------------
;Kienzan  - Normal Mode
[State -1, Kienzan - Normal Mode]
type = ChangeState
value = 816
triggerall = Var(19) = 0
triggerall = (Power >= 500)
triggerall = (Command = "Kienzan")
trigger1   = (StateType = S) && (Ctrl)
trigger2   = (stateno = 200 || stateno = 201 || stateno = 210 || stateno = 230) && movecontact
trigger3   = (stateno = 231 || stateno = 240 || stateno = 241 || stateno = 900) && movecontact
trigger4   = (stateno = 901 || stateno = 410 || stateno = 400 || stateno = 430 || stateno = 440) && movecontact

;---------------------------------------------------------------------------
;Kienzan - SSJ Mode
[State -1, Kienzan - SSJ Mode]
type = ChangeState
value = 818
triggerall = Var(19) = 1
triggerall = (Power >= 500)
triggerall = (Command = "Kienzan")
trigger1   = (StateType = S) && (Ctrl)
trigger2   = (stateno = 8000 || stateno = 8001 || stateno = 8014 || stateno = 8002) && movecontact
trigger3   = (stateno = 8012 || stateno = 8003 || stateno = 8013 || stateno = 902)  && movecontact
trigger4   = (stateno = 903  || stateno = 8006 || stateno = 8004 || stateno = 8007 || stateno = 8008) && movecontact

;---------------------------------------------------------------------------
;Dashing Punch - Normal Mode
[State -1, Dashing Punch - Normal Mode]
type = ChangeState
value = 823
triggerall = Var(19) = 0
triggerall = (command = "Dashing Punch")
trigger1   = (statetype = S) && (ctrl)
trigger2   = (stateno = 200 || stateno = 201  || stateno = 230) && movecontact
trigger3   = (stateno = 240 || stateno = 400  || stateno = 410) && movecontact
trigger4   = (stateno = 430 || stateno = 440  || stateno = 231) && movecontact
trigger5   = (stateno = 241 || stateno = 210) && movecontact

;---------------------------------------------------------------------------
;Dashing Punch - SSJ Mode
[State -1, Dashing Punch - SSJ Mode]
type = ChangeState
value = 806
triggerall = Var(19) = 1
triggerall = (command = "Dashing Punch")
trigger1   = (statetype = S) && (ctrl)
trigger2   = (stateno = 8000 || stateno = 8001  || stateno = 8002) && movecontact
trigger3   = (stateno = 8003 || stateno = 8004  || stateno = 8006) && movecontact
trigger4   = (stateno = 8007 || stateno = 8008  || stateno = 8012) && movecontact
trigger5   = (stateno = 8013 || stateno = 8014) && movecontact

;---------------------------------------------------------------------------
;Air Kick
[State -1, Air Kick]
type = ChangeState
value = 807
triggerall = Var(19) = 1
triggerall = (command = "Air Kick")
trigger1   = (statetype = S) && (ctrl)
trigger2   = (stateno = 8000 || stateno = 8001  || stateno = 8002) && movecontact
trigger3   = (stateno = 8003 || stateno = 8004  || stateno = 8006) && movecontact
trigger4   = (stateno = 8007 || stateno = 8008  || stateno = 8012) && movecontact
trigger5   = (stateno = 8013 || stateno = 8014) && movecontact
trigger6   = (stateno = 806) && movecontact && animelem = 2, >1
trigger7   = (stateno = 8062)&& movecontact && animelem = 2, >1

;---------------------------------------------------------------------------
;Air Punch
[State -1, Air Punch]
type = ChangeState
value = 8072
triggerall = Var(19) = 1
triggerall = (command = "Air Punch")
trigger1   = (statetype = S) && (ctrl)
trigger2   = (stateno = 8000 || stateno = 8001  || stateno = 8002) && movecontact
trigger3   = (stateno = 8003 || stateno = 8004  || stateno = 8006) && movecontact
trigger4   = (stateno = 8007 || stateno = 8008  || stateno = 8012) && movecontact
trigger5   = (stateno = 8013 || stateno = 8014) && movecontact
trigger6   = (stateno = 806) && movecontact && animelem = 2, >1
trigger7   = (stateno = 8062)&& movecontact && animelem = 2, >1

;---------------------------------------------------------------------------
;Ultra Codazo - SSJ Mode
[State -1, Ultra Codazo - SSJ Mode]
type = ChangeState
value = 824
triggerall = Var(19) = 1
triggerall = (Power >= 1000)
triggerall = (Command = "Ultra Codazo")
trigger1   = (StateType = S) && (Ctrl)
trigger2   = (stateno = 8000 || stateno = 8001  || stateno = 8002) && movecontact
trigger3   = (stateno = 8003 || stateno = 8004  || stateno = 8006) && movecontact
trigger4   = (stateno = 8007 || stateno = 8008  || stateno = 8012) && movecontact
trigger5   = (stateno = 8013 || stateno = 8014) && movecontact
trigger6   = (stateno = 806) && movecontact && animelem = 2, >1
trigger7   = (stateno = 8062)&& movecontact && animelem = 2, >1

;---------------------------------------------------------------------------
;Run Strong Punch
[State -1, Run Strong Punch]
type = ChangeState
value = 827
triggerall = Var(19) = 0
triggerall = (Power >= 500)
triggerall = (command = "x") || (command = "y") || (command = "z")
trigger1   = (StateType = S) && (Ctrl)
trigger1   = (stateno = 100)

;---------------------------------------------------------------------------
;Run Strong Punch SSJ
[State -1, Run Strong Punch SSJ]
type = ChangeState
value = 828
triggerall = Var(19) = 1
triggerall = (Power >= 600)
triggerall = (command = "x") || (command = "y") || (command = "z")
trigger1   = (StateType = S) && (Ctrl)
trigger1   = (stateno = 2007)

;---------------------------------------------------------------------------
;Run Strong Kick 2
[State -1, Run Strong Kick 2]
type = ChangeState
value = 241
triggerall = Var(19) = 0
triggerall = command = "b"
triggerall = command = "holdfwd"
trigger1 = (StateType = S) && (Ctrl)
trigger1   = (stateno = 100) && pos y = 0 && p2bodydist x < 50

;---------------------------------------------------------------------------
;Run Strong Kick SSJ 2
[State -1, Run Strong Kick SSJ 2]
type = ChangeState
value = 8013
triggerall = Var(19) = 1
triggerall = command = "b"
triggerall = command = "holdfwd"
trigger1 = (StateType = S) && (Ctrl)
trigger1 = (stateno = 2007) && pos y = 0 && p2bodydist x < 50

;---------------------------------------------------------------------------
;Launcher
[State -1, Launcher]
type = ChangeState
value = 829
triggerall = command = "Launcher"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210 || stateno = 211|| stateno = 220) && movecontact
trigger3 = (stateno = 230 || stateno = 231 || stateno = 240 || stateno = 241 || stateno = 250) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 420|| stateno = 430 || stateno = 440 || stateno = 450) && movecontact

;---------------------------------------------------------------------------
;Cargar Ki
[State -1, Cargar Ki]
type = ChangeState
value = 7030
triggerall = Var(19) = 0
triggerall = (power < powermax)
triggerall = (command = "cargar" && command = "cargar 1")
trigger1   = (StateType = S) && (Ctrl)

;---------------------------------------------------------------------------
;Cargar Ki SSJ
[State -1, Cargar Ki SSJ]
type = ChangeState
value = 730
triggerall = Var(19) = 1
triggerall = (power < powermax)
triggerall = (command = "cargar" && command = "cargar 1")
trigger1   = (StateType = S) && (Ctrl)

;---------------------------------------------------------------------------
;Flying Start
[State -1, Fly]
type = ChangeState
value = 990
triggerall = (power > 300)
triggerall = (command = "fly-1" && command = "fly-2")
trigger1   = (StateType = A) && (Ctrl)

[State -1, Fly]
type = ChangeState
value = 990
triggerall = (power > 300)
triggerall = (command = "fly-1" && command = "fly-2")
trigger1   = (StateType = S) && (Ctrl)

;---------------------------------------------------------------------------
;Super Jump
[State -1, Super Jump]
type = ChangeState
value = 60
triggerall = Var(19) = 0
triggerall = (power > 200)
triggerall = (command = "Super Jump")
trigger1   = (statetype = S) && (ctrl)

;---------------------------------------------------------------------------
;Super Jump SSJ
[State -1, Super Jump SSJ]
type = ChangeState
value = 601
triggerall = Var(19) = 1
triggerall = (power > 200)
triggerall = (command = "Super Jump")
trigger1   = (statetype = S) && (ctrl)

;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = Var(19) = 0
triggerall = (command = "FF")
trigger1   = (StateType = S) && (Ctrl)

;Run Fwd SSJ
[State -1, Run Fwd SSJ]
type = ChangeState
value = 2007
triggerall = Var(19) = 1
triggerall = (command = "FF")
trigger1   = (StateType = S) && (Ctrl)

;Air Dash fwd
[State -1,Air Dash fwd]
type = ChangeState
value = 3232
triggerall = Var(19) = 0
triggerall = (command = "FF")
trigger1   = (StateType = A) && (Ctrl)

;Air Dash fwd SSJ
[State -1,Air Dash fwd SSJ]
type = ChangeState
value = 3219
triggerall = Var(19) = 1
triggerall = (command = "FF")
trigger1   = (StateType = A) && (Ctrl)

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = Var(19) = 0
triggerall = (command = "BB")
trigger1   = (StateType = S) && (Ctrl)

;Run Back SSJ
[State -1, Run Back SSJ]
type = ChangeState
value = 2006
triggerall = Var(19) = 1
triggerall = (command = "BB")
trigger1   = (StateType = S) && (Ctrl)

;Air Dash back
[State -1,Air Dash back]
type = ChangeState
value = 1919
triggerall = Var(19) = 0
triggerall = (command = "BB")
trigger1   = (StateType = A) && (Ctrl)

;Air Dash back SSJ
[State -1,Air Dash back SSJ]
type = ChangeState
value = 1932
triggerall = Var(19) = 1
triggerall = (command = "BB")
trigger1   = (StateType = A) && (Ctrl)

;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = Var(19) = 0
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = p2bodydist x >= 4
trigger1 = (StateType = S) && (Ctrl)

;---------------------------------------------------------------------------
;Stand Light Punch 2
[State -1, Stand Light Punch 2]
type = ChangeState
value = 201
triggerall = Var(19) = 0
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = p2bodydist x < 4
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (stateno = 200) && movecontact

;---------------------------------------------------------------------------
;Stand Light Punch SSJ
[State -1, Stand Light Punch SSJ]
type = ChangeState
value = 8000
triggerall = Var(19) = 1
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = p2bodydist x >= 5
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (stateno = 8002) && movecontact

;---------------------------------------------------------------------------
;Stand Light Punch SSJ 2
[State -1, Stand Light Punch SSJ 2]
type = ChangeState
value = 8001
triggerall = Var(19) = 1
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = p2bodydist x < 5
trigger1 = (StateType = S) && (Ctrl)

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = Var(19) = 0
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (stateno = 200 || stateno = 201) && movecontact
trigger3 = (stateno = 230 || stateno = 231) && movecontact
trigger4 = (stateno = 400 || stateno = 430) && movecontact

;---------------------------------------------------------------------------
;Stand Strong Punch SSJ
[State -1, Stand Strong Punch SSJ]
type = ChangeState
value = 8014
triggerall = Var(19) = 1
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (stateno = 8000 || stateno = 8001) && movecontact
trigger3 = (stateno = 8002 || stateno = 8012) && movecontact
trigger4 = (stateno = 8004 || stateno = 8007) && movecontact

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = Var(19) = 0
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = p2bodydist x >= 5
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210) && movecontact
trigger3 = (stateno = 400 || stateno = 430) && movecontact

;---------------------------------------------------------------------------
;Stand Light Kick 2
[State -1, Stand Light Kick 2]
type = ChangeState
value = 231
triggerall = Var(19) = 0
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = p2bodydist x < 5
trigger1 = (StateType = S) && (Ctrl)

;---------------------------------------------------------------------------
;Stand Light Kick SSJ
[State -1, Stand Light Kick SSJ]
type = ChangeState
value = 8002
triggerall = Var(19) = 1
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = p2bodydist x >= 5
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (stateno = 8000 || stateno = 8001 || stateno = 8014) && movecontact
trigger3 = (stateno = 8004 || stateno = 8007) && movecontact

;---------------------------------------------------------------------------
;Stand Light Kick SSJ 2
[State -1, Stand Light Kick SSJ 2]
type = ChangeState
value = 8012
triggerall = Var(19) = 1
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = p2bodydist x < 5
trigger1 = (StateType = S) && (Ctrl)

;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = Var(19) = 0
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210) && movecontact
trigger3 = (stateno = 230 || stateno = 231) && movecontact
trigger4 = (stateno = 400 || stateno = 430) && movecontact

;---------------------------------------------------------------------------
;Standing Strong Kick SSJ
[State -1, Standing Strong Kick SSJ]
type = ChangeState
value = 8003
triggerall = Var(19) = 1
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (stateno = 8000 || stateno = 8001 || stateno = 8014) && movecontact
trigger3 = (stateno = 8002 || stateno = 8012) && movecontact
trigger4 = (stateno = 8004 || stateno = 8007) && movecontact

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = Var(19) = 0
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = (StateType = C) && (Ctrl)

;---------------------------------------------------------------------------
;Crouching Light Punch SSJ
[State -1, Crouching Light Punch SSJ]
type = ChangeState
value = 8004
triggerall = Var(19) = 1
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = (StateType = C) && (Ctrl)

;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = Var(19) = 0
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = (StateType = C) && (Ctrl)
trigger2 = (stateno = 400 || stateno = 430) && movehit

;---------------------------------------------------------------------------
;Crouching Strong Punch SSJ
[State -1, Crouching Strong Punch SSJ]
type = ChangeState
value = 8006
triggerall = Var(19) = 1
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = (StateType = C) && (Ctrl)
trigger2 = (stateno = 8004 || stateno = 8007) && movehit

;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = Var(19) = 0
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = (StateType = C) && (Ctrl)

;---------------------------------------------------------------------------
;Crouching Light Kick SSJ
[State -1, Crouching Light Kick SSJ]
type = ChangeState
value = 8007
triggerall = Var(19) = 1
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = (StateType = C) && (Ctrl)

;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = Var(19) = 0
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = (StateType = C) && (Ctrl)
trigger2 = (stateno = 400 || stateno = 430) && movehit

;---------------------------------------------------------------------------
;Crouching Strong Kick SSJ
[State -1, Crouching Strong Kick SSJ]
type = ChangeState
value = 8008
triggerall = Var(19) = 1
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = (StateType = C) && (Ctrl)
trigger2 = (stateno = 8004 || stateno = 8007) && movehit

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = Var(19) = 0
triggerall = command = "x"
trigger1 = (StateType = A) && (Ctrl)
trigger2 = (stateno = 3232 || stateno = 1919) && time >=5

;---------------------------------------------------------------------------
;Jump Light Punch SSJ
[State -1, Jump Light Punch SSJ]
type = ChangeState
value = 8009
triggerall = Var(19) = 1
triggerall = command = "x"
trigger1 = (StateType = A) && (Ctrl)
trigger2 = (stateno = 3219 || stateno = 1932) && time >=5

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = Var(19) = 0
triggerall = command = "y"
trigger1 = (StateType = A) && (Ctrl)
trigger2 = (stateno = 600 || stateno = 630) && movecontact
trigger3 = (stateno = 3232 || stateno = 1919) && time >=5

;---------------------------------------------------------------------------
;Jump Strong Punch SSJ
[State -1, Jump Strong Punch SSJ]
type = ChangeState
value = 80090
triggerall = Var(19) = 1
triggerall = command = "y"
trigger1 = (StateType = A) && (Ctrl)
trigger2 = (stateno = 8009 || stateno = 8010) && movecontact
trigger3 = (stateno = 3219 || stateno = 1932) && time >=5

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = Var(19) = 0
triggerall = command = "a"
trigger1 = (StateType = A) && (Ctrl)
trigger2 = (stateno = 3232 || stateno = 1919) && time >=5

;---------------------------------------------------------------------------
;Jump Light Kick SSJ
[State -1, Jump Light Kick SSJ]
type = ChangeState
value = 8010
triggerall = Var(19) = 1
triggerall = command = "a"
trigger1 = (StateType = A) && (Ctrl)
trigger2 = (stateno = 3219 || stateno = 1932) && time >=5

;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = Var(19) = 0
triggerall = command = "b"
trigger1 = (StateType = A) && (Ctrl)
trigger2 = (stateno = 600 || stateno = 630) && movecontact
trigger3 = (stateno = 3232 || stateno = 1919) && time >=5

;---------------------------------------------------------------------------
;Jump Strong Kick SSJ
[State -1, Jump Strong Kick SSJ]
type = ChangeState
value = 8011
triggerall = Var(19) = 1
triggerall = command = "b"
trigger1 = (StateType = A) && (Ctrl)
trigger2 = (stateno = 8009 || stateno = 8010) && movecontact
trigger3 = (stateno = 3219 || stateno = 1932) && time >=5

;---------------------------------------------------------------------------
;Fly Light Punch
[State -1, Fly Light Punch]
type = ChangeState
value = 1900
triggerall = Var(19) = 0
triggerall = command = "x"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = Stateno = 991

;---------------------------------------------------------------------------
;Fly Light Punch SSJ
[State -1, Fly Light Punch SSJ]
type = ChangeState
value = 2900
triggerall = Var(19) = 1
triggerall = command = "x"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = stateno = 991

;---------------------------------------------------------------------------
;fly Strong Punch
[State -1, fly Strong Punch]
type = ChangeState
value = 1901
triggerall = Var(19) = 0
triggerall = command = "y"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = stateno = 991
trigger3 = (stateno = 1900 || stateno = 1902) && movecontact

;---------------------------------------------------------------------------
;fly Strong Punch SSJ
[State -1, fly Strong Punch SSJ]
type = ChangeState
value = 2901
triggerall = Var(19) = 1
triggerall = command = "y"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = stateno = 991
trigger3 = (stateno = 2900 || stateno = 2902) && movecontact

;---------------------------------------------------------------------------
;Fly Light Kick
[State -1, Fly Light Kick]
type = ChangeState
value = 1902
triggerall = Var(19) = 0
triggerall = command = "a"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = stateno = 991

;---------------------------------------------------------------------------
;Fly Light Kick SSJ
[State -1, Fly Light Kick SSJ]
type = ChangeState
value = 2902
triggerall = Var(19) = 1
triggerall = command = "a"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = stateno = 991

;---------------------------------------------------------------------------
;fly Strong Kick
[State -1, fly Strong Kick]
type = ChangeState
value = 1903
triggerall = Var(19) = 0
triggerall = command = "b"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = stateno = 991
trigger3 = (stateno = 1900 || stateno = 1902) && movecontact

;---------------------------------------------------------------------------
;fly Strong Kick SSJ
[State -1, fly Strong Kick SSJ]
type = ChangeState
value = 2903
triggerall = Var(19) = 1
triggerall = command = "b"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = stateno = 991
trigger3 = (stateno = 2900 || stateno = 2902) && movecontact

;---------------------------------------------------------------------------
;FireBall
[State -1, Fireball]
type = ChangeState
value = 900
triggerall = Var(19) = 0
triggerall = power >= 100
triggerall = command = "c"
trigger1 = (statetype = S) && (ctrl)
trigger2 = (stateno = 200 || stateno = 201  || stateno = 210) && movecontact
trigger3 = (stateno = 230 || stateno = 231  || stateno = 240) && movecontact
trigger4 = (stateno = 241 || stateno = 400  || stateno = 410) && movecontact
trigger5 = (stateno = 430 || stateno = 440) && movecontact

;---------------------------------------------------------------------------
;FireBall SSJ
[State -1, Fireball SSJ]
type = ChangeState
value = 902
triggerall = Var(19) = 1
triggerall = power >= 150
triggerall = command = "c"
trigger1 = (statetype = S) && (ctrl)
trigger2 = (stateno = 8000 || stateno = 8001  || stateno = 8002) && movecontact
trigger3 = (stateno = 8003 || stateno = 8004  || stateno = 8006) && movecontact
trigger4 = (stateno = 8007 || stateno = 8008  || stateno = 8012) && movecontact
trigger5 = (stateno = 8013 || stateno = 8014) && movecontact

;---------------------------------------------------------------------------
;AirFireBall
;[State -1, AirFireball]
;type = ChangeState
;value = 904
;triggerall = Var(19) = 0
;triggerall = power >= 100
;triggerall = command = "c"
;trigger1 = (statetype = A) && (ctrl)
;trigger2 = stateno = 991
;trigger3 = (stateno = 600 || stateno = 610) && movecontact
;trigger4 = (stateno = 630 || stateno = 640) && movecontact

;---------------------------------------------------------------------------
;AirFireBall SSJ
;[State -1, AirFireball SSJ]
;type = ChangeState
;value = 904
;triggerall = Var(19) = 1
;triggerall = power >= 100
;triggerall = command = "c"
;trigger1 = (statetype = A) && (ctrl)
;trigger2 = stateno = 991
;trigger3 = (stateno = 8009 || stateno = 80090) && movecontact
;trigger4 = (stateno = 8010 || stateno = 8011)  && movecontact

;---------------------------------------------------------------------------
;Zanzouken
[State -1, Zanzouken]
type = ChangeState
value = 1090
triggerall = Command = "z"
triggerall = power > 300
triggerall = alive = 1
trigger1 = ctrl = 1
trigger2 = stateno = 990  || stateno = 991  || stateno = 5000 || stateno = 5001
trigger3 = stateno = 5002 || stateno = 5010 || stateno = 5011 || stateno = 5012
trigger4 = stateno = 5020 || stateno = 5021 || stateno = 5022 || stateno = 5110
trigger5 = stateno = 5120 || stateno = 5110 || stateno = 5035 || stateno = 5030
trigger6 = stateno = 5050 || stateno = 5040 || stateno = 5071
trigger7 = stateno = 3232 || stateno = 1919 || stateno = 3219 || stateno = 1932

