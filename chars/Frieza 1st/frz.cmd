;
[Command]
name = "CPU01"
command = F, F, F, F, F, F
time = 0
[Command]
name = "CPU02"
command = U, U, U, U, U, U
time = 0
[Command]
name = "CPU03"
command = D, D, D, D, D, D
time = 0
[Command]
name = "CPU04"
command = F, D, F
time = 0
[Command]
name = "CPU05"
command = U, D, D
time = 0
[Command]
name = "CPU06"
command = D, B, B
time = 0
[Command]
name = "CPU07"
command = F, B, F
time = 0
[Command]
name = "CPU08"
command = F, U, B
time = 0
[Command]
name = "CPU09"
command = D, B, D
time = 0
[Command]
name = "CPU10"
command = U, D, F
time = 0
[Command]
name = "CPU11"
command = U, D, D, B
time = 0
[Command]
name = "CPU12"
command = D, B, F
time = 0
[Command]
name = "CPU13"
command = F, D, B
time = 0
[Command]
name = "CPU14"
command = U, D, U
time = 0
[Command]
name = "CPU15"
command = F, B, DF
time = 0
[Command]
name = "CPU16"
command = UF, D, D
time = 0
[Command]
name = "CPU17"
command = F, DB, DF
time = 0
[Command]
name = "CPU18"
command = F, D, DB
time = 0
[Command]
name = "CPU19"
command = B, D, UB
time = 0
[Command]
name = "CPU20"
command = B, B, B, B, B, B
time = 0
[Command]
name = "CPU21"
command = D, F, F, F, F, F
time = 0
[Command]
name = "CPU22"
command = U, U, F, U, U, U
time = 0
[Command]
name = "CPU23"
command = F, D, D, D, D, F
time = 0
[Command]
name = "CPU24"
command = F, D, DF, D, F, D
time = 0
[Command]
name = "CPU25"
command = U, D, DF,DB, D, U
time = 0
[Command]
name = "CPU26"
command = DF, B, DB, B, D, F
time = 0
[Command]
name = "CPU27"
command = DF, B, F, DF, F, B
time = 0
[Command]
name = "CPU28"
command = F, UB, B, UF, U, D
time = 0
[Command]
name = "CPU29"
command = D, B, DB, DF, D, U
time = 0
[Command]
name = "CPU30"
command = UF, D, F, B, F, D
time = 0
[Command]
name = "CPU31"
command = U, F, D, B, D, DF
time = 0
[Command]
name = "CPU32"
command = DF, B, DF, B, D, U
time = 0
[Command]
name = "CPU33"
command = F, D, B, F, F, F
time = 0
[Command]
name = "CPU34"
command = UF, DF, UF, B, F, F
time = 0
[Command]
name = "CPU35"
command = DB, B, DF, U, D, U
time = 0
[Command]
name = "CPU36"
command = UF, D, D, B, D, F
time = 0
[Command]
name = "CPU37"
command = U, DB, U, B, D, UF
time = 0
[Command]
name = "CPU38"
command = U, D, DB, U, F, U
time = 0
[Command]
name = "CPU39"
command = DB, D, UF, B, F, D
time = 0
[Command]
name = "CPU40"
command = B, B, DB, B, B, DB
time = 0

;-| Super Motions |--------------------------------------------------------

[Command]
name = "power"
command = ~D, DB, B, F, x

[Command]
name = "dashball"
command = ~D, DB, B, F, y


[Command]
name = "laser"
command = ~D, DB, B, F, z
time = 35


;-| Special Motions |------------------------------------------------------

[Command]
name = "mundo"
command = ~D, DB, B,D, DB, B, c
time = 28

[Command]
name = "comboa"
command = ~D, DB, B, a
time = 5

[Command]
name = "combob"
command = ~D, DB, B, b
time = 5

[Command]
name = "comboc"
command = ~D, DB, B, c
time = 5

[Command]
name = "db1"
command = ~D, DF, F, a
time = 5

[Command]
name = "db2"
command = ~D, DF, F, b
time = 5

[Command]
name = "db3"
command = ~D, DF, F, c
time = 5
 
[Command]
name = "fire_ballb"
command = ~D,DF, F, x
time = 8

[Command]
name = "fire_ball"
command = ~D,DF, F, y
time = 8

[Command]
name = "ki"
command = ~D, F, z
time =8

[Command]
name = "DB_z1"
command = ~D, B, x
time = 8

[Command]
name = "DB_z2"
 command = ~D, B, y
time = 8

[Command]
name = "DB_z"
command = ~D, B, z  ;mudar mais forte
time = 8

[command]
name = "sho1"
command = ~D,D, x
time = 11


[command]
name = "sho2"
command = ~D,D, y ;mudar mais forte
time = 11

[command]
name = "sho3"
command = ~D,D, z ;mudar mais forte
time = 11

[command]
name = "BF"
command = ~F, D, F,  b
time = 11


[Command]
name = "B + c"
command = b+c
time = 11

[Command]
name = "cz"
command = c+z
time = 11


[Command]
name="DD"
command= a+b


[Command]
name="DD"
command= b+c


[Command]
name="DD"
command= x+y


[Command]
name="DD"
command= y+z

[Command]
name = "fly"
command = b+y
time = 30

[Command]
name = "agressive"
command = c+z
time = 30

[Command]
name = "agressive1"
command = U,U
time = 30




;-| Double Tap |-----------------------------------------------------------

[Command]
name="Super Jump"
command=~D,U

[Command]
name = "DD"     ;Required (do not remove)
command = D, D
time = 10

[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B



;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

;-| Dir + Button |---------------------------------------------------------

[Command]
name = "ThrowK"
command = /F, a+b
time = 1

[Command]
name = "ThrowK"
command = /B, a+b
time = 1

[Command]
name = "ThrowK"
command = /F, b+c
time = 1

[Command]
name = "ThrowK"
command = /B, b+c
time = 1

[Command]
name = "ThrowK"
command = /F, a+c
time = 1

[Command]
name = "ThrowK"
command = /B, a+c
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "Soco_x"
command = /B, x
time = 1

[Command]
name = "chute_a"
command = /B, a
time = 1

[Command]
name = "chute_b"
command = /F, a
time = 1

[Command]
name = "chute_c"
command = /F, c
time = 1

[Command]
name = "down_z"
command = /D, z
time = 1

[Command]
name = "down_c"
command = /D, c
time = 1

[Command]
name = "holdy"
command = /$y
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
name = "chutes"
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
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /x
time = 1

[Command]
name = "hold_c"
command = /a
time = 1

[Command]                       ;N/A
name = "holda"                  ;N/A
command = /a                    ;N/A (Impenetrable Shield: Ki Barrier)
time = 1
[Command]                       ;N/A
name = "holdx"                  ;N/A
command = /x                    ;N/A (Impenetrable Shield: Ki Barrier)
time = 1
[Command]
name = "charge"
command = /x

[Command]
name = "charge 1"
command = /a

[Command]
name = "ufire"
command = /UF
time = 1

[Command]
name = "dfire"
command = /DF
time = 1

[Command]
name = "bufire"
command = /UB
time = 1

[Command]
name = "bdfire"
command = /DB
time = 1

[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup";Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Command]
name = "holds";Required (do not remove)
command = /s
time = 1

[Command]
name = "F";Required (do not remove)
command = F
time = 1
[Command]
name = "B";Required (do not remove)
command = B
time = 1

;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = command_name
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

 [State -1]
type = ChangeState
value = 3602
triggerall = command = "dashball"
triggerall = power >= 1000
triggerall = stateno !=  5555
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 50
trigger3 = stateno = 52

;-------------------------------------------------------------------------------
; power
[State -1]
type = ChangeState
value = 5555
triggerall = command = "power"
triggerall = power >= 1000
triggerall = stateno !=  5555
triggerall = numprojid( 5555) = 0
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 50
trigger3 = stateno = 52


;-------------------------------------------------------------------------------

; Kamehameha
[State -1]
type = ChangeState
value = 1751
triggerall = command = "laser"
triggerall = power >= 2000 ;Level 2 Super
triggerall = stateno != 1751
triggerall = numprojid(1751) = 0
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 1500
trigger3 = statetype != A
trigger3 = hitdefattr = SC, NA, SA 
trigger3 = movecontact = 1
trigger4 = stateno = 50
trigger5 = stateno = 52

;-------------------------------------------------------------------------------

[State -1, 1]
type = ChangeState
value = 500
triggerall = command = "mundo"
triggerall = StateType != A
triggerall = Power >= 1000
trigger1 = ctrl
trigger2 = StateNo = 40 || StateNo = 41 || StateNo = 45

;-------------------------------------------------------------------------------

[State -1]
type = ChangeState
value =52611
triggerall = command = "DB_z2"
triggerall = stateno != [100,9999999]
trigger1 = statetype != A
;y
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact = 1
;trigger3 = stateno = 50
;trigger4 = stateno = 52


;DB_Z no air ( terry)
[State -1]
type = ChangeState
value = 5261
triggerall = command = "DB_z1"
triggerall = stateno != [100,9999999]
trigger1 = statetype != A
;x
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact = 1
;trigger3 = stateno = 50
;trigger4 = stateno = 52


[State -1]
type = ChangeState
value =  100077
triggerall = command = "DB_z"
triggerall = stateno != [100,9999999]
trigger1 = statetype != A
;z
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact = 1
;trigger3 = stateno = 50
;trigger4 = stateno = 52

;-------------------------------------------------------------------------------
  ; Sequencia alternativa
[State -1]
type = ChangeState
value = 87477
triggerall = command = "comboa"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 874777
triggerall = command = "combob"
trigger1 = statetype = S
trigger1 = ctrl = 1


[State -1]
type = ChangeState
value = 8747777
triggerall = command = "comboc"
trigger1 = statetype = S
trigger1 = ctrl = 1



;-------------------------------------------------------------------------------

; ShoRyuKen-heavy
[State -1]
type = ChangeState
value = 12201
triggerall = command = "sho1"
trigger1 = statetype != A
trigger1 = ctrl = 1

; ShoRyuKen-heavy
[State -1]
type = ChangeState
value = 12202
triggerall = command = "sho2"
trigger1 = statetype != A
trigger1 = ctrl = 1

; ShoRyuKen-heavy
[State -1]
type = ChangeState
value = 12202
triggerall = command = "sho3"
trigger1 = statetype != A
trigger1 = ctrl = 1

;-------------------------------------------------------------------------------

[State -1, rugal]
type = ChangeState
value = 11300
triggerall =  command =  "db2"
triggerall = statetype != A
trigger1 = ctrl

[State -1, rugal]
type = ChangeState
value = 1300
triggerall =   command =  "db3"
triggerall = statetype != A
trigger1 = ctrl

;-------------------------------------------------------------------------------
;rugal a
[State -1, Final Strong Back Kick]
type = ChangeState
value = 12029
trigger1 = command = "db1"
trigger1 = ctrl = 1

;rugal a
[State -1, Stand Strong Back Kick]
type = ChangeState
value = 242
triggerall = command = "a"
trigger1 = command = "holdback"
trigger1 = ((stateno = 210 || stateno = 211) || (stateno = 240 || stateno = 241)) && movehit
trigger2 = (stateno = 212 || stateno = 242 || stateno = 215 || stateno = 244) && movehit && hitcount < 5 && Time = [12,30]
trigger3 = statetype = S && ctrl
triggerall = Stateno!=20
triggerall = Stateno!=0


;-------------------------------------------------------------------------------
 
;morrigan fireball
[State -1]
type = ChangeState
value = 8880
triggerall = command = "fire_ball"
triggerall = stateno != 1700
triggerall = numprojid(1700) = 0
triggerall = power >= 100
triggerall = p2bodydist X >= 20
trigger1 = statetype != A
trigger1 = ctrl = 1
;trigger2 = stateno = 1500
trigger3 = statetype != A
trigger3 = hitdefattr = SC, NA, SA
trigger3 = movecontact = 1


;kamehameha fireball
[State -1]
type = ChangeState
value = 1910
triggerall = command = "ki"
triggerall = numproj = 0
triggerall = power >= 800
triggerall = p2bodydist X >= 20
trigger1 = statetype = S
trigger1 = ctrl = 1
;trigger2 = stateno = 1500

;-------------------------------------------------------------------------------

;Fire ball
[State -1]
type = ChangeState
value = 7025
triggerall = var(6) = 0
triggerall = command = "fire_ballb"
triggerall = numproj = 0
triggerall = p2bodydist X >= 20
trigger1 = statetype = S
trigger1 = ctrl = 1
;trigger2 = stateno = 1500



;-------------------------------------------------------------------------------


;Velocidade alternativa zonzok
[State -1]
type = ChangeState
value = 361
trigger1 = command = "a" && command = "b"
triggerall = stateno = 100 || stateno = 20 || stateno = 102
triggerall = command != "holdback"
triggerall = p2stateno !=[1600,59999999] ;para o char nao sair do projectile thanks frs games
trigger1 = statetype = S
trigger1 = ctrl = 1

;Super Velocidade alternativa
[State -1]
type = ChangeState
value = 362
trigger1 = command = "b" && command = "c"
triggerall = stateno = 100 || stateno = 20 || stateno = 102
triggerall = command != "holdback"
triggerall = p2stateno !=[1600,59999999] ;para o char nao sair do projectile thanks frs games
trigger1 = statetype = S
trigger1 = ctrl = 1

;Velocidade alternativa tras
[State -1]
type = ChangeState
value = 105
trigger1 = command = "a" && command = "b"
triggerall = stateno = 100 || stateno = 20 || stateno = 102
triggerall = command != "holdfwd"
triggerall = p2stateno !=[1600,59999999] ;para o char nao sair do projectile thanks frs games
trigger1 = statetype = S
trigger1 = ctrl = 1


;Velocidade
[State -1]
type = ChangeState
value = 100
triggerall = command = "FF"
triggerall = command != "holddown"
triggerall = p2stateno !=[1600,59999999] ;para o char nao sair do projectile thanks frs games
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500


;Velocidade ar
[State -1]
type = ChangeState
value = 100
triggerall = command = "FF"
triggerall = p2stateno !=[1600,5999999];para o char nao sair do projectile thanks frs games
triggerall = alive = 1
trigger1 = ctrl = 1
trigger1 = stateno >= 150
trigger2 = Stateno <= 153
trigger3 = stateno = 5000
trigger4 = stateno = 5001
trigger5 = stateno = 5002
trigger6 = stateno = 5010
trigger7 = stateno = 5011
trigger8 = stateno = 5012
trigger9 = stateno = 5020
trigger10 = stateno = 5021
trigger11 = stateno = 5022
trigger12 = stateno = 5110
trigger13 = stateno = 5120
trigger14 = stateno = 5110
trigger15 = stateno = 5035
trigger16 = stateno = 5030
trigger17 = stateno = 5050
trigger18 = stateno = 5040
trigger19 = stateno = 5071

;Velocidade Traz
[State -1]
type = ChangeState
value = 105
triggerall = command = "BB"
triggerall = command != "holddown"
triggerall = p2stateno !=[1600,59999]
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500

;Velocidade ar traz
[State -1]
type = ChangeState
value = 105
triggerall = command = "BB"
triggerall = p2stateno !=[1600,59999];para o char nao sair do projectile thanks frs games
triggerall = alive = 1           
trigger1 = ctrl = 1
trigger1 = stateno >= 150
trigger2 = Stateno <= 153
trigger3 = stateno = 5000       
trigger4 = stateno = 5001
trigger5 = stateno = 5002
trigger6 = stateno = 5010
trigger7 = stateno = 5011
trigger8 = stateno = 5012
trigger9 = stateno = 5020
trigger10 = stateno = 5021
trigger11 = stateno = 5022
trigger12 = stateno = 5110
trigger13 = stateno = 5120
trigger14 = stateno = 5110
trigger15 = stateno = 5035
trigger16 = stateno = 5030
trigger17 = stateno = 5050
trigger18 = stateno = 5040
trigger19 = stateno = 5071

;-------------------------------------------------------------------------------

;Fly
[State -1, fw]
type = ChangeState
value = 1500
triggerall = var(59) != 1
triggerall = command = "fly"
trigger1 = statetype = A
trigger1 = ctrl = 1


;Fly  ar
[State -1]
type = ChangeState
value = 1510
triggerall = var(59) != 1
triggerall = command = "fly"
trigger1 = statetype != A
trigger1 = ctrl = 1


;-------------------------------------------------------------------------------

;Super Salto
[State -1,SJ]
type=ChangeState
value=707
triggerall=var(59)=0
triggerall=command="Super Jump"
triggerall=alive
triggerall=pos y>=0
triggerall=!win
trigger1=(statetype!=A&&ctrl)
;-------------------------------------------------------------------------------
;Super Jump
[State -1, SuperJump]
type = ChangeState
value = 41
triggerall = (command = "holdup" || (command="a"&&command="b"&&command="c"))
trigger1 = statetype = C && ctrl = 1 && stateno != 3100
trigger2 = (stateno = 1111 && movecontact);chute p cima
trigger3 = (stateno = 432 && movecontact)

;-------------------------------------------------------------------------------


; chute decendente a ar
[State -1, Jump Strong Kick]
type = ChangeState
value = 6301
triggerall = command = "a" && command = "holddown"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 640
trigger2 = time >= 20
trigger3 = stateno = 610
trigger3 = movecontact = 1
trigger4 = stateno = 620
trigger4 = movecontact =1
trigger4 = stateno = 213
trigger4 = movecontact =1

; chute decendente b  ar
[State -1, Jump Strong Kick]
type = ChangeState
value = 6302
triggerall = command = "b" && command = "holddown"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 640
trigger2 = time >= 20
trigger3 = stateno = 610
trigger3 = movecontact = 1
trigger4 = stateno = 620
trigger4 = movecontact =1
trigger4 = stateno = 213
trigger4 = movecontact =1

; chute decendente c ar
[State -1, Jump Strong Kick]
type = ChangeState
value = 6303
triggerall = command = "c" && command = "holddown"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 640
trigger2 = time >= 20
trigger3 = stateno = 610
trigger3 = movecontact = 1
trigger4 = stateno = 620
trigger4 = movecontact =1
trigger4 = stateno = 213
trigger4 = movecontact =1
;-------------------------------------------------------------------------------

;air fireball
[State -1,]
type = ChangeState
value = 7040
triggerall = command ="fire_ballb"
triggerall = power >= 1
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 640
trigger2 = time >= 20
trigger3 = stateno = 610
trigger3 = movecontact = 1
trigger4 = stateno = 600
trigger4 = movecontact =1

[State -1, ]
type = ChangeState
value = 7040
triggerall = command ="fire_ball"
triggerall = power >= 1
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 640
trigger2 = time >= 20
trigger3 = stateno = 610
trigger3 = movecontact = 1
trigger4 = stateno = 600
trigger4 = movecontact =1

[State -1]
type = changestate
value = 7040
triggerall = command = "y"
triggerall = power >= 1
triggerall = Time > 10
trigger1 = stateno = 7040

;Fire Ball 2
[State -1]
type = changestate
value = 7040
triggerall = command = "y"
triggerall = power >= 1
triggerall = Time > 10
trigger1 = stateno = 7040


;-------------------------------------------------------------------------------

;Stand_x
[State -1]
type = ChangeState
value = 222;linkado
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl


[State -1]
type = ChangeState
value = 2223;linkado
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (StateNo = 222) && (MoveContact)



;-------------------------------------------------------------------------------

;Stand_y
[State -1]
type = ChangeState
value = 200
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 222 || stateno = 210


;-------------------------------------------------------------------------------

;Stand_z
[State -1]
type = ChangeState
value = 220
triggerall = var(6) = 0 || var(6) = 1
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200 && movecontact


;Stand_z3
[State -1]
type = ChangeState
value = 431
triggerall = var(6) = 0 || var(6) = 1
triggerall = command = "z"
triggerall = movecontact = 1
trigger1 = stateno = 220
trigger2= stateno = 1500


;-------------------------------------------------------------------------------

;stand a
[State -1, longe]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = stateno != [100,9999999]
triggerall = p2bodydist X <= 4
triggerall = statetype != A
trigger1 = ctrl = 1
;trigger2 = time >= 20



;stand a3
[State -1, 3]
type = ChangeState
value = 250
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl = 1
;trigger2 = stateno = 210
trigger2 = time >= 20
trigger6 = stateno = 230





;-------------------------------------------------------------------------------

;stand b
[State -1]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 210
trigger2 = time >= 20
trigger6 = stateno = 250 && movecontact



;stand b2
[State -1]
type = ChangeState
value = 201
triggerall = command = "b"
triggerall = movecontact = 1
trigger1 = stateno = 210 || stateno = 200 || stateno = 202
trigger2 = statetype = S
trigger2 = stateno = 1500

 ;stand b3
 [State -1]
type = ChangeState
value = 250
triggerall = command = "b"
triggerall = movecontact = 1
trigger1 = stateno = 201 || stateno = 200 || stateno = 202
trigger2 = statetype = S
trigger2 = stateno = 1500





;-------------------------------------------------------------------------------

;Stand_c
[State -1]
type = ChangeState
value = 2011
triggerall = var(6) = 0 || var(6) = 1
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 2011
trigger2 = time >= 20
trigger3 = stateno = 202
trigger3 = movecontact = 1
trigger4 = stateno = 200
trigger4 = movecontact =1
trigger5 = stateno = 230
trigger5 = movecontact = 1
trigger6 = stateno = 211
trigger6 = movecontact = 1
trigger7 = stateno = 250
trigger7 = movecontact = 1


;Stand_c2
[State -1]
type = ChangeState
value = 12029
triggerall = var(6) = 0 || var(6) = 1
triggerall = command = "c"
triggerall = stateno = 2011
triggerall = movecontact = 1
triggerall = statetype != A
trigger1 = stateno = 2011 && movecontact
trigger3 = stateno = 201 && movecontact
trigger4 = stateno = 231 && movecontact
trigger5 = stateno = 211 && movecontact
trigger6 = stateno = 250 && movecontact


;-------------------------------------------------------------------------------
 ;Crouching x
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = var(6)= 0 || var(6)= 1
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = time >= 20
trigger3 = stateno = 430
trigger3 = movecontact = 1
trigger4 = stateno = 200
trigger4 = movecontact =1
trigger5 = stateno = 201
trigger5 = movecontact = 1
trigger6 = stateno = 202
trigger6 = movecontact = 1
trigger7 = stateno = 210
trigger7 = movecontact = 1

;Crouching y
[State -1, Crouching Light Punch]
type = ChangeState
value = 430
triggerall = var(6) = 0 || var(6) = 1
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = time >= 20
trigger3 = stateno = 430
trigger3 = movecontact = 1
trigger4 = stateno = 200
trigger4 = movecontact =1
trigger5 = stateno = 201
trigger5 = movecontact = 1
trigger6 = stateno = 202
trigger6 = movecontact = 1
trigger7 = stateno = 210
trigger7 = movecontact = 1

;Crouching z
[State -1, MKU]
type = ChangeState
value = 431
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
triggerall = Vel Y = 0

;-------------------------------------------------------------------------------

;Crouching a
[State -1, Crouching low Kick]
type = ChangeState
value = 440
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;Crouching b
[State -1, Crouching Medium Kick]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;Crouching c
[State -1, Crouching Light Kick]
type = ChangeState
value = 1111
triggerall = var(6)= 0 || var(6)=1
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 430
trigger2 = time >= 20
trigger3 = stateno = 400
trigger3 = movecontact = 1
trigger4 = stateno = 200
trigger4 = movecontact =1
trigger5 = stateno = 201
trigger5 = movecontact = 1
trigger6 = stateno = 202
trigger6 = movecontact = 1
trigger7 = stateno = 210
trigger7 = movecontact = 1

;---------------------------------------------------------------------------
;Jump x
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(6)= 0 || var(6)= 1
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
;trigger2 = time >= 20
trigger3 = stateno = 610
trigger3 = movecontact = 1
trigger4 = stateno = 640
trigger4 = movecontact =1

;Jump y
[State -1, Jump Strong Punch]
type = ChangeState
value = 600
triggerall = var(6)= 0 || var(6)= 1
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610
trigger2 = time >= 20
trigger3 = stateno = 600
trigger3 = movecontact = 1
trigger4 = stateno = 640
trigger4 = movecontact =1

;Jump z
[State -1, Jump Strong Punch]
type = ChangeState
value = 600;650
triggerall = var(6)= 0 || var(6)= 1
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 631
trigger2 = time >= 20
trigger3 = stateno = 600
trigger3 = movecontact = 1
trigger4 = stateno = 640
trigger4 = movecontact =1

;=============stand c  and combo in air nivel===============
;‹ó’†Žã 19
[State -1, Jump Light]
type = ChangeState
value = 630
triggerall = command = "c"
triggerall = stateno != 105
trigger1 = statetype = A && ctrl
trigger2 = stateno = [600,620]
trigger2 = movecontact && stateno % 5 = 0
trigger2 = !var(20)
trigger3 = stateno = 102 && time >= 15
;----------------------------
[State -1, Jump Light]
type = ChangeState
value = 631
triggerall = command = "c" || command = "b" || command = "a"
;triggerall = command != "holddown"
trigger2 = movecontact
trigger1 = statetype = A
trigger2 = stateno = 630
trigger1 = ctrl = 1
triggerall = p2statetype = A

[State -1, Jump Light]
type = ChangeState
value = 635
triggerall = command = "c" || command = "b" || command = "a"
;triggerall = command != "holddown"
trigger2 = movecontact
trigger1 = statetype = A
trigger2 = stateno = 631
trigger1 = ctrl = 1
triggerall = p2statetype = A

[State -1, Jump Light]
type = ChangeState
value = 636
triggerall = command = "c"  || command = "b" || command = "a"
;triggerall = command != "holddown"
trigger2 = movecontact
trigger1 = statetype = A
trigger2 = stateno = 635
trigger1 = ctrl = 1
triggerall = p2statetype = A


;;

[State -1, Jump Light]
type = ChangeState
value = 631
triggerall = command = "z" || command = "y" || command = "z"
;triggerall = command != "holddown"
trigger2 = movecontact
trigger1 = statetype = A
trigger2 = stateno = 630
trigger1 = ctrl = 1
triggerall = p2statetype = A

[State -1, Jump Light]
type = ChangeState
value = 635
triggerall = command = "z"  || command = "y" || command = "z"
;triggerall = command != "holddown"
trigger2 = movecontact
trigger1 = statetype = A
trigger2 = stateno = 631
trigger1 = ctrl = 1
triggerall = p2statetype = A

[State -1, Jump Light]
type = ChangeState
value = 636
triggerall = command = "z" || command = "y" || command = "z"
;triggerall = command != "holddown"
trigger2 = movecontact
trigger1 = statetype = A
trigger2 = stateno = 635
trigger1 = ctrl = 1
triggerall = p2statetype = A



;-------------------------------------------------------------------------------

;Jump a
[State -1, Jump Light Kick]
type = ChangeState
value = 640
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = stateno = 600

;Jump b
[State -1, Jump Light Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = stateno = 1500

;Jump c
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 640
trigger2 = time >= 20
trigger3 = stateno = 600
trigger3 = movecontact = 1
trigger4 = stateno = 620
trigger4 = movecontact =1

;Jump c2
[State -1]
type = changestate
value = 7041
triggerall = command = "c"
triggerall = power >= 1
triggerall = Time > 10
trigger1 = stateno = 7040
trigger2 = stateno = 610
trigger2 = time >= 20
trigger3 = stateno = 600
trigger3 = movecontact = 1
trigger4 = stateno = 640
trigger4 = movecontact =1

;-------------------------------------------------------------------------------

;Fire Ball 2
[State -1]
type = changestate
value = 7040
triggerall = command = "c"
triggerall = power >= 1
triggerall = Time > 10
trigger1 = stateno = 7041
trigger2 = stateno = 610
trigger2 = time >= 20
trigger3 = stateno = 600
trigger3 = movecontact = 1
trigger4 = stateno = 640
trigger4 = movecontact =1

;-------------------------------------------------------------------------------
;Charge
[State -1]
type = ChangeState
value = 733
triggerall = ctrl = 1
triggerall = var(59) != 1
triggerall = power < 4000
trigger1 = command = "hold_c"
trigger1 = command = "hold_z"
trigger1 = statetype = S
;trigger3 = hitdefattr = SC, NA, SA
;trigger3 = movecontact = 1

;-------------------------------------------------------------------------------

[State -1, pose1]
type = ChangeState
value =80005 ;195
triggerall = command = "start"
trigger1 = Var(9) = 0
trigger1 = statetype != A
trigger1 = ctrl

[State -1, pose2]
type = ChangeState
value =180005
trigger1 = Var(9) = 1
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl




;-------------------------------------------------------------------------------

;Air Charge
[State -1]
type = ChangeState
value = 731
trigger1 = ctrl = 0
triggerall = var(59) != 1
triggerall = power < 4000
trigger1 = statetype = A
triggerall = command = "charge"
triggerall= command = "charge 1"
trigger1 = stateno = 1500
trigger2 = stateno = 50
trigger3 = stateno = 52


;KO
[State -1, ]
type            = Helper
triggerall        = Stateno !=3602 &&  Stateno !=36020 &&  Stateno !=250036 &&  Stateno !=502
trigger1        =(enemynear(0),alive=0)
trigger1        =(numhelper(55556)=0)
helpertype      = normal
name            = "die"
ID              = 55556
pos             = 0,500
postype         = p1
stateno         = 55556
keyctrl         = 0
ignorehitpause  = 1
persistent      = 0



;-------------------------------------------------------------------------------
;AI
[State -1]
type = VarSet
Trigger1 = Command = "CPU01"
Trigger2 = Command = "CPU02"
Trigger3 = Command = "CPU03"
Trigger4 = Command = "CPU04"
Trigger5 = Command = "CPU05"
Trigger6 = Command = "CPU06"
Trigger7 = Command = "CPU07"
Trigger8 = Command = "CPU08"
Trigger9 = Command = "CPU09"
Trigger10 = Command = "CPU10"
Trigger11 = Command = "CPU11"
Trigger12 = Command = "CPU12"
Trigger13 = Command = "CPU13"
Trigger14 = Command = "CPU14"
Trigger15 = Command = "CPU15"
Trigger16 = Command = "CPU16"
Trigger17 = Command = "CPU17"
Trigger18 = Command = "CPU18"
Trigger19 = Command = "CPU19"
Trigger20 = Command = "CPU20"
Trigger21 = Command = "CPU21"
Trigger22 = Command = "CPU22"
Trigger23 = Command = "CPU23"
Trigger24 = Command = "CPU24"
Trigger25 = Command = "CPU25"
Trigger26 = Command = "CPU26"
Trigger27 = Command = "CPU27"
Trigger28 = Command = "CPU28"
Trigger29 = Command = "CPU29"
Trigger30 = Command = "CPU30"
Trigger31 = Command = "CPU31"
Trigger32 = Command = "CPU32"
Trigger33 = Command = "CPU33"
Trigger34 = Command = "CPU34"
Trigger35 = Command = "CPU35"
Trigger36 = Command = "CPU36"
Trigger37 = Command = "CPU37"
Trigger38 = Command = "CPU38"
Trigger39 = Command = "CPU39"
Trigger40 = Command = "CPU40"
v = 59
value = 1

[State -1]
type = ChangeState
trigger1 = var(59) != 0
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = P2bodydist X <= 90
trigger1 = P2BodyDist Y = [-160,-30]
trigger1 = P2MoveType = A
trigger1 = random <= 999
value = 8880


[State -1]  ; faz toda hora
type = ChangeState
trigger1 = var(59) != 0
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = P2bodydist X <= 3
trigger1 = random <= 999
value = 200

[State -1]  ; faz toda hora
type = ChangeState
trigger1 = var(59) != 0
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = P2bodydist X <= 10
trigger1 = random <= 999
value = 874777

[State -1]  ; faz toda hora
type = ChangeState
trigger1 = var(59) != 0
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = P2bodydist X <= 2
trigger1 = random <= 999
value = 230

[State -1]  ; faz toda hora
type = ChangeState
trigger1 = var(59) != 0
trigger1 = statetype = S
trigger1 = life <  1000 && power < 3000
trigger1 = ctrl
trigger1 = P2bodydist X <= 10
trigger1 = random <= 99
value = 3300

[State -1, AI1]
type = ChangeState
trigger1 = Ctrl
trigger1 = var(59) != 0
trigger1 = StateType = S
trigger1 = P2BodyDist Y > 50
trigger1 = random < 999
trigger1 = P2StateType = S
value = 17511

[State -1, AI1]
type = ChangeState
trigger1 = Ctrl
trigger1 = var(59) != 0
trigger1 = StateType = S
trigger1 = P2BodyDist Y > 50
trigger1 = random < 999
trigger1 = P2StateType = S
value = 30101


[State -1, AI3]
type = ChangeState
trigger1 = Ctrl
trigger1 = var(59) != 0
trigger1 = StateType = A
trigger1 = P2BodyDist X < 5
trigger1 = random < 700
trigger1 = P2StateType = S
value = 2006

[State -1, AI4]
type = ChangeState
trigger1 = Ctrl
trigger1 = StateType = S
trigger1 = var(59) != 0
trigger1 = random < 400
trigger1 = P2BodyDist X > 10
trigger1 = P2BodyDist X > 0
trigger1 = P2BodyDist X < 160
trigger1 = Stateno != 100
trigger1 = Stateno = 0
value = 2006



[State -1, 6]
type = ChangeState
trigger1 = Ctrl 
trigger1 = RoundState = 2
trigger1 = var(59) != 0 
trigger1 = Random <= 650
trigger1 = P2BodyDist X <= 75
trigger1 = StateType = S
trigger1 = P2MoveType = A 
value = 30102

[State -1, 7]
type = ChangeState
trigger1 = StateNo = 7026
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0 
trigger1 = p2bodydist X >= 140
trigger1 = Random <= 999
trigger1 = statetype = S 
trigger1 = p2statetype != C
value    = 87477

[State -1, 8]
type = ChangeState
trigger1 = StateNo = 8880
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = p2bodydist X >= 140
trigger1 = Random <= 999
trigger1 = statetype = S
trigger1 = p2statetype != C
value    = 7026
;---------------------------------------------------------------------------------------

;golpe
[State -1]
Type = ChangeState
trigger1 = Ctrl
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = StateType = S
trigger1 = P2StateType = S
trigger1 = p2bodydist X <= 3
trigger1 = StateNo = 200
trigger1 = Random <= 999
trigger1 = MoveContact
Value = 222

;golpe
[State -1]
Type = ChangeState
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = StateType = S
trigger1 = P2StateType = S
trigger1 = Random <= 999
trigger1 = StateNo = 222
trigger1 = MoveContact
Value = 200

;golpe
[State -1]
Type = ChangeState
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = StateType = S
trigger1 = P2StateType = S
trigger1 = Random <= 999
trigger1 = StateNo = 200
trigger1 = MoveContact
Value = 220

;golpe
[State -1]
Type = ChangeState
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = StateType = S
trigger1 = P2StateType = S
trigger1 = Random <= 999
trigger1 = StateNo = 220
trigger1 = MoveContact
Value = 230

;golpe
[State -1]
Type = ChangeState
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = StateType = S
trigger1 = P2StateType = S
trigger1 = Random <= 999
trigger1 = StateNo = 230
trigger1 = MoveContact
Value = 210

;golpe
[State -1]
Type = ChangeState
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = StateType = S
trigger1 = P2StateType = S
trigger1 = Random <= 999
trigger1 = StateNo = 210
trigger1 = MoveContact
Value = 231

;golpe
[State -1]
Type = ChangeState
trigger1 = RoundState = 2
trigger1 = var(59) != 0
trigger1 = StateType = S
trigger1 = P2StateType = S
trigger1 = Random <= 999
trigger1 = StateNo = 231
trigger1 = MoveContact
Value = 250



