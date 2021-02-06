;Archivo CMD goku ssj ordinario from SUPER DBZ ARCADE GAME (MAME) and Super Botuden 3 (edit).
;por Mugenfan2005

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1


;-| Super movimientos |--------------------------------------------------------

[Command]
name = "kame1"
command = D, F, x

[Command] 
 name = "kame2"
command = ~D, DF, F, a

[Command] 
 name = "genkidama"
command = z
;-|  movimientos Speciales  |------------------------------------------------------

[Command]
name = "rayo"
command = c

[Command]
name = "fireball2"
command = B, F, y

[Command]
name = "puñorapido"     
command = B, F, x

[Command]
name = "patadainvertida"
command = D, F, y

[Command]
name = "fly"
command = b+y
time = 30

[Command]
name = "zanzoken"
command = a+b
time = 30

;-| Doble presion |-----------------------------------------------------------
[Command]
name = "FF"     ;Requerido (no remover)
command = F, F
time = 10

[Command]
name = "puñorapido"     ;Requerido (no remover)
command = B, F, x
time = 1


[Command]
name = "BB"     ;Requerido (no remover)
command = B, B
time = 10

;-| 2/3 Boton Combinacion |-----------------------------------------------
[Command]
name = "recovery";Requerido (no remover)
command = x+y
time = 1


;-| Dir + Boton |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-|  Button solo |---------------------------------------------------------
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

;-| mantener Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Requerido (no remover)
command = /$F
time = 1

[Command]
name = "holdback";Requerido (no remover)
command = /$B
time = 1

[Command]
name = "holdup" ;Requerido (no remover)
command = /$U
time = 1

[Command]
name = "holddown";Requerido (no remover)
command = /$D
time = 1

[Command]
name = "charge"
command = /a

[Command]
name = "charge 1"
command = /x

[Command]
name = "saltolargo"
command = ~D, $U
time = 11

;---------------------------------------------------------------------------
; 2. State entry
; --------------

; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]
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
;correr adelante 
[State -1, correr adelante]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;correr atras
[State -1, correr atras]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;agarre
[State -1, agarre]
type =null; ChangeState
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
;---------------------------------------------------------------------------
;Stand Puño bajo 
[State -1, Stand puño bajo]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "kame1"
triggerall = command != "puñorapido"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time >= 9
trigger2 = movecontact =1
trigger3 = stateno = 201
trigger3 = movecontact =1
trigger4 = stateno = 210
trigger4 = movecontact =1
trigger5 = stateno = 230
trigger5 = movecontact =1
trigger6 = stateno = 240
trigger6 = movecontact =1
trigger7 = stateno = 1500

[State -1, 2nd puño ]
type = ChangeState
value = 201
triggerall = alive = 1  && command = "x" && stateno = 200 && movecontact 
trigger1 = statetype = S
trigger2 = stateno = 1500
;---------------------------------------------------------------------------
;Stand puño medio
[State -1, Stand puño medio ]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "patadainvertida"
triggerall = command != "fireball2"
triggerall = command != "fly"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210
trigger2 = statetime = 30
trigger3 = stateno = 1500
;---------------------------------------------------------------------------
;Stand patada baja
[State -1, Stand patada baja]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "kame2"
triggerall = command != "zanzoken"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 230
trigger2 = statetime = 40
trigger3 = stateno = 1500
;---------------------------------------------------------------------------
;Stand patada media
[State -1, Stand patada media]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = command != "zanzoken"
triggerall = command != "fly"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 240
trigger2 = statetime = 40
trigger3 = stateno = 1500
;---------------------------------------------------------------------------
;saludo( presionando start)
[State -1, saludo]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; puño bajo agachado 
[State -1, puño bajo agachado]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = statetime = 50
;---------------------------------------------------------------------------
;puño medio agachado 
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 410
trigger2 = statetime = 30
-------------------------------------------------------------------------
;patada baja agachado 
[State -1, patada baja agachado ]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;patada media agachado
[State -1, patada media agachado]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;puño bajo saltando 
[State -1, puño bajo  saltando]
type =null; ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 10
trigger3 = stateno = 1350 ;bloqueando en el aire
;---------------------------------------------------------------------------
;puño medio saltando 
[State -1, puño medio saltando]
type =null; ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;bloqueando en el aire
;---------------------------------------------------------------------------
;patada baja saltando 
[State -1, patada baja saltando]
type =null; ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350 ;bloqueando en el aire
;---------------------------------------------------------------------------
;patada media saltando
[State -1, patada media saltando]
type =null;  ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;bloqueando en el aire
;---------------------------------------------------------------------
;Super kame hame ha !!!!
[State -1]
type = ChangeState
value = 735
triggerall = power >= 3000
triggerall = command = "kame1"
trigger1 = statetype = S
trigger1 = Power >= 3000
trigger1 = ctrl = 1
ignorehitpause = 1
;------------------------------------------------------------------------------
;kame hame ha!!! 
[State -1]
type = ChangeState
value = 737
triggerall = power >= 1000
triggerall = command = "kame2"
trigger1 = statetype = S
trigger1 = Power >= 1000
trigger1 = ctrl = 1
ignorehitpause = 1
trigger2 = stateno = 1500
;-----------------------------------------------------------------------------------------
;RAYO 
[State -1]
type = ChangeState
value = 736
triggerall = power >= 500
triggerall = command = "c"
trigger1 = statetype = S
trigger1 = Power >= 1000
trigger1 = ctrl = 1
ignorehitpause = 1
;-----------------------------------------------------------------------------------
;Cargar ki
[State -1]
type = ChangeState
value = 730
triggerall = ctrl = 1
trigger1 = command = "charge"
trigger1 = command = "charge 1"
trigger1 = statetype = S
;-------------------------------------------------------------------------------------
;patada invertida
[State -1]
type = ChangeState
value = 250
triggerall = ctrl = 1
trigger1 = command = "patadainvertida"
trigger1 = statetype = S
trigger2 = stateno = 1500
;--------------------------------------------------------------------------------------
;puñorapido
[State -1]
type =null; ChangeState
value = 202
triggerall = ctrl = 1
trigger1 = command = "puñorapido"
trigger1 = statetype = S

;-------------------------------------------------------------------------------
;Fire ball(modelo 2)
[State -1]
type = ChangeState
value = 743
triggerall = command = "fireball2"
triggerall = numproj = 0
trigger1 = statetype = S
trigger1 = ctrl = 1

;Fire Ball 1
[State -1]
type = changestate
value = 745
triggerall = command = "y"
triggerall = power >= 1
triggerall = Time > 10
trigger1 = stateno = 743

;Fire Ball 2
[State -1]
type = changestate
value = 743
triggerall = command = "y"
triggerall = power >= 1
triggerall = Time > 10
trigger1 = stateno = 745
;------------------------------------------------------------------------------------------

;Fly
[State -1]
type = ChangeState
value = 1500
triggerall = command = "fly"
trigger1 = statetype = A
trigger1 = ctrl = 1

;Fly
[State -1]
type = ChangeState
value = 1510
triggerall = command = "fly"
trigger1 = statetype != A
trigger1 = ctrl = 1

;------------------------------------------------------------------------------------------
;Zanzoken
[State -1]
type = ChangeState
value = 900
triggerall = command = "zanzoken"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500

;--------------------------------------------------------------------------------------------
;genkidama
[State -1]
type =null; ChangeState
value = 750
triggerall = power >= 500
triggerall = command = "z"
trigger1 = statetype = S
trigger1 = Power >= 1000
trigger1 = ctrl = 1
ignorehitpause = 1
