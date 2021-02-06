;-| Super Motions |--------------------------------------------------------

;-| Special Motions |------------------------------------------------------
[Command]
name = "KamikazeGhost"
command = ~D,DB,B, b

[Command]
name = "GalacticDonut"
command = x+y+z

[Command]
name = "RenzokuShine"
command = ~D,DF,F, c

[Command]
name = "ShineMissile"
command = ~F,B, c

[Command]
name = "GreatFightingTop"
command = ~D,DB,B, x

[Command]
name = "Dynamite"
command = ~D,DB,B, y

[Command]
name = "kamehameha"
command = ~D,DF,F, a

[Command]
name = "PunchCombo"
command = ~D,DF,F, z

[Command]
name = "I_move"
command = b+c
time = 1

[Command]
name = "combo2"
command = ~D,DF,F, y

[Command]
name = "multishot"
command = ~B,F, c

[Command]
name = "fly"
command = a+x
time = 1

[Command]
name = "fatherscall"
command = ~D, DF, F, D, DB, B, z
time = 30

[Command]
name = "ssjcombo"
command = ~D, DF, F, D, DB, B, c
time = 30

[Command]
name = "bigball"
command = ~D,DF,F, x

[Command]
name = "multiblast"
command = ~D,DF,F, b

[Command]
name = "downmultiblast"
command = ~D,DF,F, b

[Command]
name = "Throw"
command = /F,a

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF";Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB";Required (do not remove)
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
;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery"
command = a+b
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_c"
command = /F,c
time = 1

[Command]
name = "fwd_x"
command = /F,x
time = 1

[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "fwd_z"
command = /F,z
time = 1

[Command]
name = "back_a"
command = /B,a
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "back_c"
command = /B,c
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
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "fwd_ab"
command = /F, a+b
time = 1

[Command]
name = "back_ab"
command = /B, a+b
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
name = "s"
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
name = "holdup";Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1]                  ;Don't change this
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = "command_name"
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

;===========================================================================


;---------------------------------------------------------------------------
; Galactic Donut
[State -1]
type = ChangeState
value = 1101
trigger1 = command = "GalacticDonut"
trigger1 = p2stateno != 1103
trigger1 = statetype = S
trigger1 = ctrl = 1

;Dynamite Kick
[State -1]
type = ChangeState
value = 3020
triggerall = (command = "Dynamite" && power>=2000) 
trigger1 = ctrl = 1
trigger1 = statetype = S

;SSJ Combo (level 3)
[State -1]
type = ChangeState
value = 4010
triggerall = command = "ssjcombo"
triggerall = power >= 3000
triggerall = numproj = 0
trigger1 = ctrl = 1
trigger1 = statetype != A

;Renzoku Shine
[State -1]
type = ChangeState
value = 222
triggerall = command = "RenzokuShine"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500
trigger3 = stateno = 430
trigger3 = MoveContact = 1
trigger3 = Time >= 10
trigger4 = stateno = 220
trigger4 = MoveContact = 1
trigger5 = stateno = 1050
trigger5 = time >= 4

;Great Fighting Top Attack
[State -1]
type = ChangeState
value = 333
triggerall = command = "GreatFightingTop"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1510

; Throw
[State -1]
type = ChangeState
value = 800
trigger1 = command = "Throw"
trigger1 = statetype = S
trigger1 = stateno != 100
trigger1 = p2movetype != H
trigger1 = p2statetype != A
trigger1 = ctrl = 1
trigger1 = P2bodydist X <= 10
;----------------------------------------------------------------------------
; Punch Combo
[State -1]
type = ChangeState
value = 999
triggerall = command = "PunchCombo"
triggerall = numproj = 0
trigger1 = statetype = S
trigger1 = ctrl = 1

; CHARGE
[State -1]
type = ChangeState
value = 730
triggerall = Power < 3000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = command = "holda"
trigger1 = command = "holdb"
trigger2 = stateno = 1500
trigger2 = command = "holda"
trigger2 = command = "holdb"

; Fly 
[State -1]
type = ChangeState
value = 1510
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger1 = command = "fly"

;Combo2
[State -1]
type = ChangeState
value = 1050
triggerall = command = "combo2"
triggerall = numproj = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
; Fathers Call
;[State -1]
;type = ChangeState
;value = 5656
;triggerall = Pos Y = 0
;triggerall = command = "fatherscall"
;triggerall = power >= 3000
;triggerall = stateno != 5656 
;trigger1 = statetype != A
;trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Shine Missile
[State -1]
type = ChangeState
value = 1000
trigger1 = command = "ShineMissile"
trigger1 = statetype = S
trigger1 = power >= 100
trigger1 = ctrl = 1

; Multi Shot
[State -1]
type = ChangeState
value = 1001
trigger1 = command = "multishot"
trigger1 = statetype = S
trigger1 = power >=500
trigger1 = ctrl = 1

;I_Move
[State -1]
type = ChangeState
value = 2001
triggerall = command = "I_move"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500

[State -1]
type = ChangeState
value = 2001
triggerall = command = "I_move"
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
;---------------------------------------------------------------------------
;Super Kamikaze Ghost Attack
[State -1]
type = ChangeState
value = 750
triggerall = command = "KamikazeGhost"
triggerall = Power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500

[State -1]
type = ChangeState
value = 1900
triggerall = command = "bigball";-------
triggerall = numproj = 0
triggerall = power >= 1500 ;Level 2 Super
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500
trigger3 = stateno = 200        ;Stand_a
trigger4 = stateno = 300        ;Stand_fwd_a
trigger4 = movecontact = 1
trigger5 = stateno = 500        ;Crouch_fwd_a
trigger5 = time <= 2
trigger6 = stateno = 410        ;Crouch_b
trigger6 = movecontact = 1
trigger7 = stateno = 210        ;stand_b
trigger7 = movecontact = 1

;Super Fireball Animation
[State -1]
type = null;ChangeState
value = 1905
trigger1 = command = "bigball";-------
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = command = "bigball";-------
trigger2 = stateno = 600        ;jump_a
trigger3 = command = "bigball";-------
trigger3 = stateno = 610        ;jump_b
trigger3 = movecontact = 1
trigger4 = command = "bigball";-------
trigger4 = stateno = 800        ;jump_fwd_a
trigger4 = movecontact = 1
;-------------------------------------------------------------------------
;Multiblast
[State -1]
type = ChangeState
value = 777
triggerall = command = "multiblast"
triggerall = power >= 1000
triggerall = statetype = S
trigger1 = ctrl

;Down Multiblast
[State -1]
type = ChangeState
value = 9876
triggerall = command = "downmultiblast"
triggerall = power >= 1000
triggerall = Pos Y < 0
trigger1 = statetype = A
trigger1 = ctrl

;Kamehameha
[State -1]
type = ChangeState
value = 888
triggerall = command = "kamehameha"
triggerall = power >= 1500
triggerall = power <= 2499
triggerall = statetype = S
trigger1 = ctrl

;Chou Kamehameha
[State -1]
type = ChangeState
value = 889
triggerall = command = "kamehameha"
triggerall = power >= 2500
triggerall = statetype = S
trigger1 = ctrl

;Small Kamehameha
[State -1]
type = ChangeState
value = 9696
triggerall = command = "kamehameha"
triggerall = power >= 500
triggerall = power <= 1499
triggerall = statetype = S
trigger1 = ctrl

;RunFwd
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;RunBack
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1
;===========================================================================
[State -1]
type = SuperPause
trigger1 = name != "N-Gotenks"
time = 10000000000000000000000
;---------------------------------------------------------------------------
;Stand_c
[State -1]
type = ChangeState
value = 202
triggerall = command = "c";Place name of command here
triggerall = command != "holddown";Standing moves should have this line
 ;The following is true if Player is in stand state, and has control
trigger1 = statetype = S
trigger1 = ctrl = 1
 ;Uncomment the following if you want to be able to do a Stand_A rapidly
trigger2 = stateno = 240
trigger2 = time >= 7
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 220
trigger4 = movecontact = 1
trigger5 = stateno = 210
trigger5 = movecontact = 1
trigger6 = stateno = 250
trigger6 = movecontact = 1
trigger7 = stateno = 200
trigger7 = movecontact = 1
trigger8 = stateno = 400
trigger8 = movecontact = 1
trigger9 = stateno = 420
trigger9 = movecontact = 1
trigger10 = stateno = 600
trigger10 = movecontact = 1
trigger11 = stateno = 610
trigger11 = movecontact = 1
trigger12 = stateno = 1500

;---------------------------------------------------------------------------
;Stand_b
[State -1]
type = ChangeState
value = 201
triggerall = command = "b";Place name of command here
triggerall = command != "holddown";Standing moves should have this line
 ;The following is true if Player is in stand state, and has control
trigger1 = statetype = S
trigger1 = ctrl = 1
 ;Uncomment the following if you want to be able to do a Stand_A rapidly
trigger2 = stateno = 240
trigger2 = time >= 7
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 220
trigger4 = movecontact = 1
trigger5 = stateno = 210
trigger5 = movecontact = 1
trigger6 = stateno = 240
trigger6 = movecontact = 1
trigger7 = stateno = 200
trigger7 = movecontact = 1
trigger8 = stateno = 400
trigger8 = movecontact = 1
trigger9 = stateno = 420
trigger9 = movecontact = 1
trigger10 = stateno = 600
trigger10 = movecontact = 1
trigger11 = stateno = 610
trigger11 = movecontact = 1
trigger12 = stateno = 1500
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 200
triggerall = command = "a"
;triggerall = p2bodydist X > 20
;triggerall = p2bodydist Y >= 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = command != "holddown"
trigger2 = stateno = 1500

;---------------------------------------------------------------------------
;Stand_y
[State -1]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500

;--------------------------------------------------------------------------

;Stand_x
[State -1]
type = ChangeState
value = 211
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500

;---------------------------------------------------------------------------
;Stand_z
[State -1]
type = ChangeState
value = 212
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500

;---------------------------------------------------------------------------
;Crouch_a
[State -1]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 220
trigger4 = movecontact = 1
trigger5 = stateno = 210
trigger5 = movecontact = 1
trigger6 = stateno = 250
trigger6 = movecontact = 1
trigger7 = stateno = 200
trigger7 = movecontact = 1
trigger8 = stateno = 240
trigger8 = movecontact = 1
trigger9 = stateno = 420
trigger9 = movecontact = 1
trigger10 = stateno = 600
trigger10 = movecontact = 1
trigger11 = stateno = 610
trigger11 = movecontact = 1

;---------------------------------------------------------------------------
;Crouch_b
[State -1]
type = ChangeState
value = 400
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 220
trigger4 = movecontact = 1
trigger5 = stateno = 210
trigger5 = movecontact = 1
trigger6 = stateno = 250
trigger6 = movecontact = 1
trigger7 = stateno = 200
trigger7 = movecontact = 1
trigger8 = stateno = 400
trigger8 = movecontact = 1
trigger9 = stateno = 240
trigger9 = movecontact = 1
trigger10 = stateno = 600
trigger10 = movecontact = 1
trigger11 = stateno = 610
trigger11 = movecontact = 1

;---------------------------------------------------------------------------
;Crouch_c
[State -1]
type = ChangeState
value = 400
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Crouch_x
[State -1]
type = ChangeState
value = 410
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 220
trigger4 = movecontact = 1
trigger5 = stateno = 210
trigger5 = movecontact = 1
trigger6 = stateno = 250
trigger6 = movecontact = 1
trigger7 = stateno = 200
trigger7 = movecontact = 1
trigger8 = stateno = 400
trigger8 = movecontact = 1
trigger9 = stateno = 420
trigger9 = movecontact = 1
trigger10 = stateno = 600
trigger10 = movecontact = 1
trigger11 = stateno = 610
trigger11 = movecontact = 1
;---------------------------------------------------------------------------
;Crouch_y
[State -1]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 220
trigger4 = movecontact = 1
trigger5 = stateno = 210
trigger5 = movecontact = 1
trigger6 = stateno = 250
trigger6 = movecontact = 1
trigger7 = stateno = 200
trigger7 = movecontact = 1
trigger8 = stateno = 400
trigger8 = movecontact = 1
trigger9 = stateno = 420
trigger9 = movecontact = 1
trigger10 = stateno = 600
trigger10 = movecontact = 1
trigger11 = stateno = 610
trigger11 = movecontact = 1
;---------------------------------------------------------------------------
;Crouch_z
[State -1]
type = ChangeState
value = 410
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 220
trigger4 = movecontact = 1
trigger5 = stateno = 210
trigger5 = movecontact = 1
trigger6 = stateno = 250
trigger6 = movecontact = 1
trigger7 = stateno = 200
trigger7 = movecontact = 1
trigger8 = stateno = 400
trigger8 = movecontact = 1
trigger9 = stateno = 420
trigger9 = movecontact = 1
trigger10 = stateno = 600
trigger10 = movecontact = 1
trigger11 = stateno = 610
trigger11 = movecontact = 1
;---------------------------------------------------------------------------

;Jump_a
[State -1]
type = ChangeState
value = 602
trigger1 = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Jump_b
[State -1]
type = ChangeState
value = 602
trigger1 = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Jump_c
[State -1]
type = ChangeState
value = 6666
trigger1 = command = "c"
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Jump_x
[State -1]
type = ChangeState
value = 610
trigger1 = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Jump_y
[State -1]
type = ChangeState
value = 610
trigger1 = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Jump_z
[State -1]
type = ChangeState
value = 610
trigger1 = command = "z"
trigger1 = statetype = A
trigger1 = ctrl = 1
;------------------------------------------------------------------------------
;Donut
[State -2]
type = RemoveExplod
trigger1 = p2stateno != 1103
ID = 1103
;------------------------------------------------------------------------------
Intro Sound
[State -1]
type = StopSnd
trigger1 = stateno != 190
value = 190,0
channel = 6