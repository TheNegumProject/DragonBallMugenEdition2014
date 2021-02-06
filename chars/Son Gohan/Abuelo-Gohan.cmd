
[Command]
name = "superkame"
command = D, F, y+x
time = 25

[Command]
name = "rayo"
command = D, F,c+z
time = 25

[Command]
name = "super"
command = D, F,a+b
time = 25

[Command]
name = "kame1"
command = D, F, y
time = 25

[Command]
name = "kame3"
command = D, F, b
time = 25

[Command]
name = "viento"
command = ~50$B, F,x
time = 50

[Command]
name = "SuperJump"
command = $D, $U

[Command]
name = "kame2"
command = D, F, b
time = 25

[Command]
name = "patado1"
command = D, F,a
time = 25

[Command]
name = "patadon"
command = D, B,b
time = 25
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
name = "recovery" ;Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "recovery"
command = b+c
time = 1

[Command]
name = "recovery"
command = a+c
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "back_x"
command = /$B,x
time = 1

[Command]
name = "back_y"
command = /$B,y
time = 1

[Command]
name = "back_z"
command = /$B,z
time = 1

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

[Command]
name = "fwd_x"
command = /$F,x
time = 1

[Command]
name = "fwd_y"
command = /$F,y
time = 1

[Command]
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "up_x"
command = /$U,x
time = 1

[Command]
name = "up_y"
command = /$U,y
time = 1

[Command]
name = "up_z"
command = /$U,z
time = 1

[Command]
name = "back_a"
command = /$B,a
time = 1

[Command]
name = "back_b"
command = /$B,b
time = 1

[Command]
name = "back_c"
command = /$B,c
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
name = "fwd_a"
command = /$F,a
time = 1

[Command]
name = "fwd_b"
command = /$F,b
time = 1

[Command]
name = "fwd_c"
command = /$F,c
time = 1

[Command]
name = "up_a"
command = /$U,a
time = 1

[Command]
name = "up_b"
command = /$U,b
time = 1

[Command]
name = "up_c"
command = /$U,c
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
name = "kk"
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

;-| Hold Button |--------------------------------------------------------------
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
command = /z
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_start"
command = /s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd" ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holddownfwd"
command = /$DF
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

[Command]
name = "holddownback"
command = /$DB
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdupback"
command = /$UB
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holdupfwd"
command = /$UF
time = 1

;----------------------------------------------------------------------------------------
[Statedef -1]

; Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "y" 
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;---------------------------------------------------------------------------
[State -1, ]
type = ChangeState
value = 9500
triggerall = command = "rayo" && statetype = S 
trigger1=ctrl
trigger1= power>=3000
trigger1=pos X<-120

[State -1, ]
type = ChangeState
value = 9459
triggerall = command = "rayo" && statetype = S 
trigger1=ctrl
trigger1= power>=3000
trigger1=pos X>-119
trigger1=facing=1

[State -1, ]
type = ChangeState
value = 9460
triggerall = command = "rayo" && statetype = S 
trigger1=ctrl
trigger1= power>=3000
trigger1=pos X>-119
trigger1=facing=-1


;---------------------------------------------------------------------------

[State -1, ]
type = ChangeState
value = 1020
triggerall = command = "superkame" && statetype = S 
trigger1=power>1000
trigger1=ctrl

;---------------------------------------------------------------------------

[State -1, ]
type = ChangeState
value = 2700
triggerall= Command ="super"
triggerall = command != "holddown"
trigger1= (StateType = S) && (Ctrl)
trigger1=power>1000





;---------------------------------------------------------------------------
[State -1, ]
type = ChangeState
value = 8007
triggerall = command = "patadon" && statetype = S 
trigger1=ctrl
trigger1=power>=500

;---------------------------------------------------------------------------


[State -1, ]
type = ChangeState
value = 1069
triggerall = command = "viento" && statetype = S 
trigger1=ctrl
trigger2 = stateno=270
trigger2 = movecontact
trigger3 = stateno=205
trigger3 = movecontact
trigger3 = movecontact
trigger4 = stateno=205
trigger4 = movecontact
trigger5 = stateno=240
trigger5 = movecontact
trigger6 = stateno=220
trigger6 = movecontact
trigger7 = stateno=260
trigger7 = movecontact
trigger8 = stateno=200
trigger8 = movecontact

;---------------------------------------------------------------------------

[State -1, ]
type = ChangeState
value = 3007
trigger1 = command = "b" && stateno=3006
trigger1=p2statetype =A
trigger1=p2bodydist Y <10

;---------------------------------------------------------------------------

[State -1, ]
type = ChangeState
value = 3008
trigger1 = command = "y" && stateno=3007 &  movecontact



;---------------------------------------------------------------------------

[State -1, ]
type = ChangeState
value = 3006
triggerall = command = "patado1" && statetype = S 
trigger1=ctrl
trigger2 = stateno=270
trigger2 = movecontact
trigger3 = stateno=205
trigger3 = movecontact
trigger3 = movecontact
trigger4 = stateno=205
trigger4 = movecontact
trigger5 = stateno=240
trigger5 = movecontact
trigger6 = stateno=220
trigger6 = movecontact
trigger7 = stateno=260
trigger7 = movecontact
trigger8 = stateno=200
trigger8 = movecontact

;---------------------------------------------------------------------------
[State -1, ]
type = ChangeState
value = 976
triggerall = command = "kame2" && statetype = S 
trigger1=ctrl
trigger2 = stateno=270
trigger2 = movecontact
trigger3 = stateno=205
trigger3 = movecontact
trigger3 = movecontact
trigger4 = stateno=205
trigger4 = movecontact
trigger5 = stateno=240
trigger5 = movecontact
trigger6 = stateno=220
trigger6 = movecontact
trigger7 = stateno=260
trigger7 = movecontact
trigger8 = stateno=200
trigger8 = movecontact


;---------------------------------------------------------------------------
[State -1, ]
type = ChangeState
value = 970
triggerall = command = "kame1" && statetype = S 
trigger1=ctrl
trigger2 = stateno=270
trigger2 = movecontact
trigger3 = stateno=205
trigger3 = movecontact
trigger3 = movecontact
trigger4 = stateno=205
trigger4 = movecontact
trigger5 = stateno=240
trigger5 = movecontact
trigger6 = stateno=220
trigger6 = movecontact
trigger7 = stateno=260
trigger7 = movecontact
trigger8 = stateno=200
trigger8 = movecontact


;---------------------------------------------------------------------------
[State -1, ]
type = ChangeState
value = 971
triggerall = command = "kame1" && statetype = A
trigger1=ctrl

;---------------------------------------------------------------------------
[State -1, ]
type = ChangeState
value = 975
triggerall = command = "kame3" && statetype = A
trigger1=ctrl

;---------------------------------------------------------------------------

[State -1, ]
type = ChangeState
value = 0
trigger1 = command = "holddown" 
trigger1 = statetype = S
trigger1 = ctrl




;---------------------------------------------------------------------------
; Run Fwd
[State -1, ]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------

; charge
[State -1, ]
type = ChangeState
value = 30
trigger1 = command = "z"
trigger1 = statetype = S
trigger1 = ctrl
trigger1= power<3000

[State -1, 220]
type = ChangeState
value = 220
triggerall = command = "z"  && p2bodydist X <= 25 && statetype = S
trigger1 = ctrl
trigger2 = stateno=200
trigger2 = movecontact & time >12
trigger3 = stateno=240
trigger3 = movecontact& time>12
trigger4 = stateno=220
trigger4 = movecontact & time>6

[State -1, 260]
type = ChangeState
value = 260
triggerall = command = "z" && p2bodydist X > 25 && statetype = S
trigger1 = ctrl
trigger2 = stateno=200
trigger2 = movecontact & time >12
trigger3 = stateno=240
trigger3 = movecontact& time>12
trigger4 = stateno=220
trigger4 = movecontact & time>6

;---------------------------------------------------------------------------

[State -1, 205]
type = ChangeState
value = 205
triggerall = command = "c" &&  p2bodydist X <= 25 && statetype = S
trigger1 = ctrl
trigger2 = stateno=200
trigger2 = movecontact & time >2
trigger3 = stateno=240
trigger3 = movecontact& time>2
trigger4 = stateno=220
trigger4 = movecontact & time>3
trigger5 = stateno=260
trigger5 = movecontact& time>3



[State -1, 245]
type = ChangeState
value = 245
triggerall = command = "c" &&  p2bodydist X > 25 && statetype = S
trigger1 = ctrl
trigger2 = stateno=200
trigger2 = movecontact & time >2
trigger3 = stateno=240
trigger3 = movecontact& time>2
trigger4 = stateno=220
trigger4 = movecontact & time>3
trigger5 = stateno=260
trigger5 = movecontact& time>3


;---------------------------------------------------------------------------

[State -1, ]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl



;---------------------------------------------------------------------------


[State -1,t]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;--------------------------------------------------------------------------
[State -1, 200]
type = ChangeState
value = 200
triggerall = command = "x" &&  p2bodydist X <= 25 && statetype = S
trigger1 = ctrl
trigger2 = stateno=200
trigger2 = movecontact & time >6
trigger3 = stateno=240
trigger3 = movecontact& time>6
trigger4 = stateno=220
trigger4 = movecontact & time >12
trigger5 = stateno=260
trigger5 = movecontact& time>12



[State -1, 240]
type = ChangeState
value = 240
triggerall = command = "x" &&  p2bodydist X > 25 && statetype = S
trigger1 = ctrl
trigger2 = stateno=200
trigger2 = movecontact & time >6
trigger3 = stateno=240
trigger3 = movecontact& time>6
trigger4 = stateno=220
trigger4 = movecontact & time >12
trigger5 = stateno=260
trigger5 = movecontact& time>12



;--------------------------------------------------------------------------

[State -1, 205]
type = ChangeState
value = 205
triggerall = command = "y" &&  p2bodydist X <= 25 && statetype = S
trigger1 = ctrl
trigger2 = stateno=200
trigger2 = movecontact & time >2
trigger3 = stateno=240
trigger3 = movecontact& time>2
trigger4 = stateno=220
trigger4 = movecontact & time>3
trigger5 = stateno=260
trigger5 = movecontact& time>3



[State -1, 245]
type = ChangeState
value = 245
triggerall = command = "y" &&  p2bodydist X > 25 && statetype = S
trigger1 = ctrl
trigger2 = stateno=200
trigger2 = movecontact & time >2
trigger3 = stateno=240
trigger3 = movecontact& time>2
trigger4 = stateno=220
trigger4 = movecontact & time>3
trigger5 = stateno=260
trigger5 = movecontact& time>3

;==========================================================================================
;F/B JUMP LIGHT PUNCH
[State -1, 340]
type = ChangeState
value = 340
triggerall = command = "x" && statetype = A && vel X != 0
trigger1 = ctrl

;JUMP LIGHT PUNCH
[State -1, 370]
type = ChangeState
value = 370
triggerall = command = "x" && statetype = A && vel X = 0
trigger1 = ctrl
;==========================================================================================

;F/B JUMP LIGHT K
[State -1, 355]
type = ChangeState
value = 355
triggerall = command = "a" && statetype = A && vel X != 0
trigger1 = ctrl


;F/B JUMP HK
[State -1, 365]
type = ChangeState
value = 365
triggerall = command = "b" && statetype = A && vel X != 0
trigger1 = ctrl


;==========================================================================================

;NEAR STAND LK
[State -1, 220]
type = ChangeState
value = 220
triggerall = command = "a"  && p2bodydist X <= 25 && statetype = S
trigger1 = ctrl
trigger2 = stateno=200
trigger2 = movecontact & time >12
trigger3 = stateno=240
trigger3 = movecontact& time>12
trigger4 = stateno=220
trigger4 = movecontact & time>6




;FAR STAND LK
[State -1, 260]
type = ChangeState
value = 260
triggerall = command = "a" && p2bodydist X > 25 && statetype = S
trigger1 = ctrl
trigger2 = stateno=200
trigger2 = movecontact & time >12
trigger3 = stateno=240
trigger3 = movecontact& time>12
trigger4 = stateno=220
trigger4 = movecontact & time>6


;==========================================================================================
[State -1,]
type = ChangeState
value = 270
triggerall = command = "b" && command != "holddown" && statetype = S
trigger1 = ctrl
trigger2 = stateno=200
trigger2 = movecontact & time >12
trigger3 = stateno=240
trigger3 = movecontact& time>12
trigger4 = stateno=220
trigger4 = movecontact & time>3
trigger5 = stateno=260
trigger5 = movecontact& time>3


;==========================================================================================
; JUMP LIGHT K
[State -1, 385]
type = ChangeState
value = 385
triggerall = command = "a" && statetype = A && vel X = 0
trigger1 = ctrl


; JUMP HK
[State -1, 395]
type = ChangeState
value = 395
triggerall = command = "b" && statetype = A && vel X = 0
trigger1 = ctrl


;==========================================================================================
;F/B JUMP M PUNCH
[State -1, 345]
type = ChangeState
value = 345
triggerall = command = "y" && statetype = A && vel X != 0
trigger1 = ctrl
;JUMP M PUNCH
[State -1, 375]
type = ChangeState
value = 375
triggerall = command = "y" && statetype = A && vel X = 0
trigger1 = ctrl

;==========================================================================================


[State -1, Superjump]
type = ChangeState
value = 660
triggerall = StateType = S || StateType = C
triggerall = ctrl
trigger1 = command = "SuperJump"

;==========================================================================================
