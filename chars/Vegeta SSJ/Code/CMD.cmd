;===========================================================================
;===========================================================================
;Command File
;===========================================================================
;===========================================================================
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;===========================================================================
;Default Values
;===========================================================================

[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 4



;===========================================================================
;Double Tap
;===========================================================================

[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "DD"
command = D, D
time = 10

[Command]
name = "Long Jump"
command = ~D, UF
time = 10

[Command]
name = "Long Jump"
command = ~D, UB
time = 10

;===========================================================================
;2/3 Button Combination
;===========================================================================

[Command]
name = "charge";Required (do not remove)
command = x+y+a
time = 10

[Command]
name = "Zan";Required (do not remove)
command = x+y
time = 5

[Command]
name = "evade";Required (do not remove)
command = y+b
time = 5

[Command]
name = "Pursuit";Required (do not remove)
command = x+a
time = 5

[Command]
name = "x+y";Required (do not remove)
command = x+y
time = 5


[Command]
name = "Power";Required (do not remove)
command = a+b
time = 5

;-----------------------------------------------------------------------------------Please Edit


;==========================Super Commands========================================
;-| Super Motions |--------------------------------------------------------
;Big Bang Attack--------------------

[Command]
name = "BBA"
command = ~D,DB, D, DF, F,a
time = 30

[Command]
name = "BBA"
command = ~D,DB, D, DF, F,~a
time = 30

[Command]
name = "BBA"
command = ~D,DB, D, DF, F,b
time = 30

[Command]
name = "BBA"
command = ~D,DB, D, DF, F,~b
time = 30

;-----------------------------------
;Final Flash Attack
[Command]
name = "Final Flash Attack"
command = ~30$B, $F, $B, F,x+y
time = 21
[Command]
name = "Final Flash Attack"
command = ~30$B, $F, $B, F,~x+y
time = 21

;Bakuhatsuha-------------------------
[Command]
name = "Bakuhatsuha"
command = ~D, DF, F, D, DB, B, x
time = 30
[Command]
name = "Bakuhatsuha"
command = ~D, DF, F, D, DB, B,~x
time = 30

[Command]
name = "Bakuhatsuha"
command = ~D, DF, F, D, DB, B, y
time = 30

[Command]
name = "Bakuhatsuha"
command = ~D, DF, F, D, DB, B,~y
time = 30


;Million Dollar Renzoku-------------------------
[Command]
name = "MDR"
command = ~30$B, $F, $B, F,x
time = 30
[Command]
name = "MDR"
command = ~30$B, $F, $B, F,~x
time = 30

[Command]
name = "MDR"
command = ~30$B, $F, $B, F,y
time = 30
[Command]
name = "MDR"
command = ~30$B, $F, $B, F,~y
time = 30


;Galic Ho-------------

[Command]
name = "GalicGun"
command = ~D, DF, F, D, DF, F, x
time = 30

[Command]
name = "GalicGun"
command = ~D, DF, F, D, DF, F,~x
time = 30  

[Command]
name = "GalicGun"
command = ~D, DF, F, D, DF, F, y
time = 30

[Command]
name = "GalicGun"
command = ~D, DF, F, D, DF, F,~y
time = 30


;===============================================================================
;Special Commands
;===============================================================================

;-|Zanzouken Attack|-----

  [Command]
name = "Zanzouken"
command =~D,DF,F,x+y
time = 20

  [Command]
name = "Zanzouken"
command =~D,DF,F,~x+y
time = 20


  [Command]
name = "Zanzouken"
command =~D,DB,B,x+y
time = 20

  [Command]
name = "Zanzouken"
command =~D,DB,B,~x+y
time = 20

;-------------------------
;--|Charged Commands|
;-------------------------

[Command]
name = "DU_x"
command = ~30$D, U, x
time = 30

[Command]
name = "DU_y"
command = ~30$D, U, y
time = 30

[Command]
name = "DU_z"
command = ~30$D, U, z
time = 30

[Command]
name = "DU_x"
command = ~30$D, U,~x
time = 30

[Command]
name = "DU_y"
command = ~30$D, U,~y
time = 30

[Command]
name = "DU_z"
command = ~30$D, U,~z
time = 30


[Command]
name = "BF_x"
command = ~45$B, F, x
time = 30

[Command]
name = "BF_y"
command = ~45$B, F, y
time = 30


[Command]
name = "BF_x"
command = ~45$B, F, ~x
time = 30

[Command]
name = "BF_y"
command = ~45$B, F, ~y
time = 30


;----------------------------------
;-|Quarter Circle Commands|
;-----------------------------------

  [Command]
name = "QCF_x"
command =~D,DF,F,x
time = 20

  [Command]
name = "QCF_x"
command =~D,DF,F,~x
time = 20


  [Command]
name = "QCF_y"
command =~D,DF,F,y
time = 20

  [Command]
name = "QCF_y"
command =~D,DF,F,~y
time = 20


  [Command]
name = "QCF_a"
command =~D,DF,F,a
time = 20

  [Command]
name = "QCF_a"
command =~D,DF,F,~a
time = 20

  [Command]
name = "QCF_b"
command =~D,DF,F,b
time = 20

  [Command]
name = "QCF_b"
command =~D,DF,F,~b
time = 20



  [Command]
name = "QCB_a"
command =~D,DB,B,a
time = 20

  [Command]
name = "QCB_a"
command =~D,DB,B,~a
time = 20


  [Command]
name = "QCB_b"
command =~D,DB,B,b
time = 20

  [Command]
name = "QCB_b"
command =~D,DB,B,~b
time = 20


  [Command]
name = "QCB_x"
command =~D,DB,B,x
time = 20

  [Command]
name = "QCB_x"
command =~D,DB,B,~x
time = 20

  [Command]
name = "QCB_y"
command =~D,DB,B,y
time = 20

  [Command]
name = "QCB_y"
command =~D,DB,B,~y
time = 20


;----------------------------------
;-|Dragon punch commands|
;-----------------------------------

 [Command]
name = "RDP_a"
command =~B,D,DB,a
time = 20

 [Command]
name = "RDP_a"
command =~B,D,DB,~a
time = 20


 [Command]
name = "RDP_b"
command =~B,D,DB,b
time = 20

 [Command]
name = "RDP_b"
command =~B,D,DB,~b
time = 20


 [Command]
name = "DP_a"
command =~F,D,DF,a
time = 20

 [Command]
name = "DP_b"
command =~F,D,DF,b
time = 20


 [Command]
name = "DP_a"
command =~F,D,DF,~a
time = 20

 [Command]
name = "DP_b"
command =~F,D,DF,~b
time = 20



;-------------------------------------
;--|Half Circle Commands|
;-------------------------------------
 

  [Command]
name = "HCF_x"
command =~B,DB,D,DF,F,x
time = 30

  [Command]
name = "HCF_x"
command =~B,DB,D,DF,F,~x
time = 30

  [Command]
name = "HCF_x"
command =~B,D,F,x
time = 30

  [Command]
name = "HCF_x"
command =~B,D,F,~x
time = 30

  [Command]
name = "HCF_y"
command =~B,DB,D,DF,F,y
time = 30

  [Command]
name = "HCF_y"
command =~B,DB,D,DF,F,~y
time = 30

  [Command]
name = "HCF_y"
command =~B,D,F,y
time = 30

  [Command]
name = "HCF_y"
command =~B,D,F,~y
time = 30


  [Command]
name = "HCF_z"
command =~B,DB,D,DF,F,z
time = 30

  [Command]
name = "HCF_z"
command =~B,DB,D,DF,F,~z
time = 30
  [Command]
name = "HCF_z"
command =~B,D,F,z
time = 30

  [Command]
name = "HCF_z"
command =~B,D,F,~z
time = 30



  [Command]
name = "HCF_b"
command =~B,DB,D,DF,F,b
time = 30




  [Command]
name = "HCF_b"
command =~B,DB,D,DF,F,~b
time = 30


;===========================================================================
;Dir + Button
;===========================================================================

[Command]
name = "hijump"
command = ~$D, $U
time = 10 

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b

;===========================================================================
;Single Button
;===========================================================================

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

[Command]
name = "charge"
command = /$c
time = 1

;===========================================================================
;Hold Dir 
;===========================================================================

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
name = "holdupandfwd";Required (do not remove)
command = /UF
time = 1

[Command]
name = "holdupandback";Required (do not remove)
command = /UB
time = 1

[Command]
name = "holddownandfwd";Required (do not remove)
command = /DF
time = 1

;===========================================================================
;Hold Single Button
;===========================================================================

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /c
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
name = "holdz"
command = /z
time = 1

[Command]
name = "holds"
command = /s
time = 1

[Command]
name = "recovery";Required (do not remove)
command = b
time = 1

;==========================================================================
;--|Release Button| 
;==========================================================================
[Command]
name = "release_up"
command = ~$U
time = 1
[Command]
name = "release_down"
command = ~$D
time = 1
[Command]
name = "release_back"
command = ~$B
time = 1
[Command]
name = "release_fwd"
command = ~$F
time = 1

[Command]
name = "release_a"
command = ~a
time = 1
[Command]
name = "release_b"
command = ~b
time = 1
[Command]
name = "release_c"
command = ~c
time = 1
[Command]
name = "release_x"
command = ~x
time = 1
[Command]
name = "release_y"
command = ~y
time = 1
[Command]
name = "release_z"
command = ~z
time = 1
[Command]
name = "release_start"
command = ~s
time = 1

;---------------------------------------------------------------------------

;===========================================================================
;===========================================================================
[Statedef -1]
;---------------------------------------------------------------------------
[State -1,Galickgun air]
type = ChangeState
value = 3003
triggerall = (command = "GalicGun") && (Power >= 1000)
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = [600,620]) && (movecontact)
trigger3 = (stateno = [1500,1521]) && (movecontact)
trigger4 = numhelper(1310)
trigger4 = numhelper(1315)
trigger4 = (stateno = 1300) && (helper(1310), numtarget = 1)
trigger5 = numhelper(1330)
trigger5 = numhelper(1350)
trigger5 = (stateno = 1350) && (helper(1330), numtarget = 1)
trigger6 = stateno = 1305 
trigger7 = stateno = 2114 && (movecontact)

;-------------------------------------------------------------------------
[State -1,Final Flash]
type = ChangeState
value = 3400
triggerall = (command = "Final Flash Attack") && (Power >= 2000)
trigger1 = (ctrl) && (statetype != A)
trigger2 = (stateno = [200,219]) && (movecontact)
trigger3 = (stateno = [400,420]) && (movecontact)
trigger4 = numhelper(1310)
trigger4 = numhelper(1315)
trigger4 = (stateno = 1300) && (helper(1310), numtarget = 1)
trigger5 = numhelper(1330)
trigger5 = numhelper(1350)
trigger5 = (stateno = 1350) && (helper(1330), numtarget = 1)
trigger6 = stateno = 1300 
trigger7 = stateno = [100,105]


;-------------------------------------------------------------------------
[State -1,Big Bang Attack]
type = ChangeState
value = 3300
triggerall = (command = "BBA") && (Power >= 1000)
trigger1 = (ctrl) && (statetype != A)
trigger2 = (stateno = [200,219]) && (movecontact)
trigger3 = (stateno = [400,420]) && (movecontact)
trigger4 = numhelper(1310)
trigger4 = numhelper(1315)
trigger4 = (stateno = 1300) && (helper(1310), numtarget = 1)
trigger5 = numhelper(1330)
trigger5 = numhelper(1350)
trigger5 = (stateno = 1350) && (helper(1330), numtarget = 1)
trigger6 = stateno = 1300 
trigger7 = stateno = [100,105]
;-------------------------------------------------------------------------
[State -1,Bakuhatsuha]
type = ChangeState
value = 3200
triggerall = (command = "Bakuhatsuha") && (Power >= 1000)
trigger1 = (ctrl) && (statetype != A)
trigger2 = (stateno = [200,219]) && (movecontact)
trigger3 = (stateno = [400,420]) && (movecontact)
trigger4 = numhelper(1310)
trigger4 = numhelper(1315)
trigger4 = (stateno = 1300) && (helper(1310), numtarget = 1)
trigger5 = numhelper(1330)
trigger5 = numhelper(1350)
trigger5 = (stateno = 1350) && (helper(1330), numtarget = 1)
trigger6 = stateno = 1300 
trigger7 = stateno = [100,105]


;-------------------------------------------------------------------------
[State -1,MDR]
type = ChangeState
value = 3100
triggerall = (command = "MDR") && (Power >= 1000)
trigger1 = (ctrl) && (statetype != A)
trigger2 = (stateno = [200,219]) && (movecontact)
trigger3 = (stateno = [400,420]) && (movecontact)
trigger4 = numhelper(1310)
trigger4 = numhelper(1315)
trigger4 = (stateno = 1300) && (helper(1310), numtarget = 1)
trigger5 = numhelper(1330)
trigger5 = numhelper(1350)
trigger5 = (stateno = 1350) && (helper(1330), numtarget = 1)
trigger6 = stateno = 1300 
trigger7 = stateno = [100,105]


;---------------------------------------------------------------------------
[State -1,Galickgun]
type = ChangeState
value = 3000
triggerall = (command = "GalicGun") && (Power >= 1000) && prevstateno !=3001 
trigger1 = (ctrl) && (statetype != A)
trigger2 = (stateno = [200,219]) && (movecontact)
trigger3 = (stateno = [400,420]) && (movecontact)
trigger4 = numhelper(1310)
trigger4 = numhelper(1315)
trigger4 = (stateno = 1300) && (helper(1310), numtarget = 1)
trigger5 = numhelper(1330)
trigger5 = numhelper(1350)
trigger5 = (stateno = 1350) && (helper(1330), numtarget = 1)
trigger6 = stateno = 1300 
trigger7 = stateno = [100,105]
;-------------------------------------------------------------------------
;===========================================================================
;Ex
;===========================================================================
[State -1, Evade/Boost]
type = ChangeState
value = 1100
trigger1 = (command = "evade") && (statetype != C) && (ctrl)
trigger2 = (command = "evade") && (stateno = 100 && AnimElem = 2,>=1)
trigger3 = (command = "evade") && (stateno = 110 && AnimElem = 2,>=1) && (sysvar(1) != -1)
trigger4 = (command = "evade") && (stateno = [200,219]) && (movecontact) && (Power >= 1000)
trigger5 = (command = "evade") && (stateno = [400,419]) && (movecontact) && (Power >= 1000)
;---------------------------------------------------------------------------
[State -1, Zanzoken Attack]
type = ChangeState
value = 2110
triggerall = (command = "Zanzouken" ) && (power >= 500) && (var(3) < 3)
trigger1 = (ctrl) && (Statetype = S || Statetype = A)
trigger2 = (stateno =  2112) && (AnimElem = 2,> 5) && (movehit)
trigger3 = (stateno =  2113) && (AnimElem = 3,> 5) && (movehit)
trigger4 = (stateno = 220) && (movecontact)
trigger5 = (stateno = [200,219]) && (movecontact)
trigger6 = (stateno = [600,620]) && (movecontact)
trigger7 = (stateno = [400,410]) && (movecontact)
trigger8 = stateno = [100,105]
;---------------------------------------------------

[State -1, Zanzoken]
type = ChangeState
value = 2100
triggerall = (command = "Zan") && (power >= 500) && (var(3) < 3)
trigger1 = (ctrl) && (Statetype != C)
trigger2 = (stateno =  2112) && (AnimElem = 2,> 5) && (movehit)
trigger3 = (stateno =  2113) && (AnimElem = 3,> 5) && (movehit)
trigger4 = stateno = [100,105]

[State -1, Powerup]
type = ChangeState
value = 2000
triggerall = ((command = "holda") && (command = "holdb"))  
triggerall = Power != 5000
trigger1 = (ctrl) && (statetype = S)
;---------------------------------------------------------------------------
; Throw Attempt
[State -1:      Throw Attempt]
type            = ChangeState
value      = 825
triggerall      = ((command = "b") && (Command = "holdback" || Command = "holdfwd")) &&(command != "holddown")  && (P2BodyDist X < 15)
trigger1        = (statetype = S) && (ctrl)
trigger1        = (stateno != 100) && (p2movetype != H)
trigger1        = (p2statetype != A)

;-------------------------------------------------------------------------------
; Throw Attempt
[State -1:      Throw Attempt]
type            = ChangeState
value      = 800
triggerall      = ((command = "y") && (Command = "holdback" || Command = "holdfwd")) &&(command != "holddown")  && (P2BodyDist X < 15)
trigger1        = (statetype = S) && (ctrl)
trigger1        = (stateno != 100) && (p2movetype != H)
trigger1        = (p2statetype != A)

;-------------------------------------------------------------------------------
[State -1,Air Raid]
type = ChangeState
value = 1260
triggerall = (command ="DU_x") || (command = "DU_y")  
trigger1 = statetype = S && ctrl
trigger2 = stateno = 40
trigger3 = (stateno = [200,219]) && (movecontact)
trigger4 = (stateno = 1300)
trigger5 = (stateno = [400,410]) && (movecontact)
trigger6 = stateno = [100,105]
;-------------------------------------------------------------------------
[State -1,Sayajin Strike]
type = ChangeState
value = 1250
triggerall = (command ="RDP_a") || (command = "RDP_b")  
trigger1 = (ctrl) && (statetype != A)
trigger2 = (stateno = [200,219]) && (movecontact)
trigger3 = (stateno = 1300)
trigger4 = (stateno = [400,410]) && (movecontact)

;-------------------------------------------------------------------------
[State -1,Gut Check]
type = ChangeState
value = 1230
triggerall = (command ="QCB_x") || (command ="QCB_y") 
trigger1 = (ctrl) && (statetype != A)
trigger2 = (stateno = [200,219]) && (movecontact)
trigger3 = (stateno = 1300)
trigger4 = (stateno = [400,410]) && (movecontact)
trigger5 = stateno = [100,105]

;---------------------------------------------------------------------------
[State -1,Sayajin Dive 3]
type = ChangeState
value = 1502
triggerall = (command ="QCF_b")
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = [600,620]) && (movecontact)

;-------------------------------------------------------------------------

[State -1,Sayajin Dive]
type = ChangeState
value = 1500
triggerall = (command ="QCF_a")
trigger1 = (ctrl) && (statetype = A)
trigger2 = (stateno = [600,620]) && (movecontact)


;-------------------------------------------------------------------------
[State -1,Sayajin Buster]
type = ChangeState
value = 1252
triggerall = (command ="QCF_a") || (command ="QCF_b")
trigger1 = (ctrl) && (statetype != A)
trigger2 = (stateno = [200,219]) && (movecontact)
trigger3 = (stateno = 1300)
trigger4 = (stateno = [400,410]) && (movecontact)
trigger5 = stateno = [100,105]

;-------------------------------------------------------------------------
[State -1,Sayajin Beatdown Launch]
type = ChangeState
value = 1220
triggerall = (command ="HCF_x") || (command ="HCF_y")
trigger1 = (ctrl) && (statetype != A)
trigger2 = (stateno = [200,219]) && (movecontact)
trigger3 = (stateno = 1300)
trigger4 = (stateno = [400,410]) && (movecontact)
trigger5 = stateno = [100,105]

;-------------------------------------------------------------------------

[State -1,Sayajin Beatdown Low]
type = ChangeState
value = 1200
triggerall = (command ="QCF_y")
trigger1 = (ctrl) && (statetype != A)
trigger2 = (stateno = [200,219]) && (movecontact)
trigger3 = (stateno = 1300)
trigger4 = (stateno = [400,410]) && (movecontact)
trigger5 = stateno = [100,105]

;--------------------------------------------------------------------------
[State -1,Sayajin Beatdown High]
type = ChangeState
value = 1200
triggerall = (command ="QCF_x")
trigger1 = (ctrl) && (statetype != A)
trigger2 = (stateno = [200,219]) && (movecontact)
trigger3 = (stateno = 1300)
trigger4 = (stateno = [400,410]) && (movecontact)
trigger5 = stateno = [100,105]

;---------------------------------------------------------------------------
[State -1, Ki blast weak]
type = ChangeState
value = 1300
triggerall = (command = "QCF_x")  && (var(13) < 8)
trigger1 = (ctrl) && (statetype = S)
trigger2 = (stateno = [200,219]) && (movecontact)
trigger3 = (stateno = [400,410]) && (movecontact)
trigger4 = stateno = [100,105]
;---------------------------------------------------------------------------

;===========================================================================
;Basics/ System
;===========================================================================
; Run Fwd
[State -1:      Run Fwd]
type            = ChangeState
value      = 100
triggerall      = (command = "FF")
trigger1        = (statetype = S) && (ctrl)


;---------------------------------------------------------------------------
; Run Back
[State -1:      Run Back]
type            = ChangeState
value      = 105
triggerall      = (command = "BB")
trigger1        = (statetype = S) && (ctrl)

;---------------------------------------------------------------------------
; Super Jump - Launcher
[State -1:      SJ - Launcher]
type            = ChangeState
value      = 40
triggerall      = (command = "holdup")
triggerall      = (!statetype = A)
trigger1	= (stateno = 204 || stateno = 212) && MoveHit
trigger2 = stateno = [100,105]

;------------------------------------------------------------------------------
;light elbow
[State -1:      light elbow]
type            = ChangeState
value      = 201
triggerall      = (p2bodydist X < 10) && command != "holddown" && (command = "x")
trigger1        = (statetype = S) && (ctrl)
Trigger2        = (StateNo = 201) && AnimElem = 3 && MoveContact
Trigger2        = (StateNo = 200) && AnimElem = 2
Trigger4        = (StateNo = 400) && AnimElem = 2, < 4 && MoveContact
trigger5 = stateno = [100,105]

;---------------------------------------------------------------------------
[State -1, Stand  Lp]
type = ChangeState
value = 200
triggerall = (command != "holddown") && (command = "x") 
trigger1 = (ctrl) && (statetype != A)
trigger2		= (StateNo = 200) && (AnimElem = 2, > 5 || MoveContact && AnimElem = 2)
Trigger3        = (StateNo = 201) && AnimElem = 3, < 4 && MoveContact
Trigger4        = (StateNo = 400) && AnimElem = 2, < 4 && MoveContact
trigger5 = stateno = [100,105]
;------------------------------------------------------------------------
[State -1, Hp]
type = ChangeState
value = 205
triggerall = (p2bodydist X < 10) && (command = "y") && command != "holddown" 
trigger1 = (ctrl) && (statetype != A) 
trigger2 = stateno = [100,105]
;---------------------------------------------------------------------------
; Standing Hard Punch
[State -1:      Hard Punch]
type            = ChangeState
value      = 202
triggerall      = (command = "y") && command != "holddown" 
trigger1        = (statetype = S) && (ctrl)
Trigger2        = (StateNo = 200) && AnimElem = 3, < 4 && MoveContact
Trigger3        = (StateNo = 201) && AnimElem = 3, < 4 && MoveContact
Trigger4        = (StateNo = 400) && AnimElem = 2, < 4 && MoveContact
Trigger5        = (StateNo = 209) && AnimElem = 3, < 4 && MoveContact
Trigger6        = (StateNo = 208) && AnimElem = 4, < 4 && MoveContact
Trigger7        = (StateNo = 207) && AnimElem = 4, < 4 && MoveContact
trigger8 = stateno = [100,105]

;-------------------------------------------------------------
; Standing Uppercut
[State -1:      Standing Uppercut]
type            = ChangeState
value      = 204
triggerall      = (Command = "holddownandfwd") && (command = "y")
trigger1        = (!statetype = A) && (ctrl)
Trigger2        = (StateNo = 200) && AnimElem = 2
Trigger3        = (StateNo = 201) && AnimElem = 3, < 4 && MoveContact
Trigger4        = (StateNo = 203) && AnimElem = 3, < 4 && MoveContact
Trigger5        = (StateNo = 206) && AnimElem = 2, < 4 && MoveContact
Trigger6        = (StateNo = 207) && AnimElem = 2, < 4 && MoveContact
Trigger7        = (StateNo = 209) && AnimElem = 2, < 4 && MoveContact
Trigger8        = (StateNo = 208) && AnimElem = 2, < 4 && MoveContact
Trigger9        = (StateNo = 400) && AnimElem = 3, < 4 && MoveContact
Trigger10       = (StateNo = 401) && AnimElem = 3, < 4 && MoveContact
Trigger11       = (StateNo = 402) && AnimElem = 3, < 4 && MoveContact
Trigger12       = (StateNo = 403) && AnimElem = 3, < 4 && MoveContact
trigger13 = stateno = [100,105]

;-----------------------------------------------------------------------

; Standing Close Kick
[State -1:      Close kick]
type            = ChangeState
value      = 208
triggerall      = (p2bodydist X < 10) && (command = "a") && command != "holddown" 
trigger1        = (statetype = S) && (ctrl)
trigger2 = stateno = [100,105]

;---------------------------------------------------------------------------
; Standing Light Kick
[State -1:      Light Kick]
type            = ChangeState
value      = 207
triggerall      = (command = "a") && command != "holddown" 
trigger1        = (statetype = S) && (ctrl)
Trigger2        = (StateNo = 200) && AnimElem = 3, < 4 && MoveContact
Trigger3        = (StateNo = 201) && AnimElem = 3, < 4 && MoveContact
Trigger4        = (StateNo = 400) && AnimElem = 2, < 4 && MoveContact
Trigger5        = (StateNo = 402) && AnimElem = 2, < 4 && MoveContact
trigger6 = stateno = [100,105]

;---------------------------------------------------------------------------
; Kick Launcher
[State -1:      Kick Launcher]
type            = ChangeState
value      = 212
triggerall      = (Command = "holddownandfwd") && (command = "b")
trigger1        = (!statetype = A) && (ctrl)
Trigger2        = (StateNo = 200) && AnimElem = 3, < 4 && MoveContact
Trigger3        = (StateNo = 201) && AnimElem = 3, < 4 && MoveContact
Trigger4        = (StateNo = 202) && AnimElem = 3, < 4 && MoveContact
Trigger5        = (StateNo = 207) && AnimElem = 3, < 4 && MoveContact
Trigger6        = (StateNo = 208) && AnimElem = 3, < 4 && MoveContact
Trigger7        = (StateNo = 209) && AnimElem = 4, < 4 && MoveContact
Trigger8        = (StateNo = 210) && AnimElem = 4, < 4 && MoveContact
Trigger9        = (StateNo = 400) && AnimElem = 3, < 4 && MoveContact
Trigger10       = (StateNo = 402) && AnimElem = 3, < 4 && MoveContact
Trigger11       = (StateNo = 403) && AnimElem = 3, < 4 && MoveContact
trigger12 = stateno = [100,105]

;---------------------------------------------------------------------------
;  Spin Kick
[State -1:       Spinning Kick]
type            = ChangeState
value      = 211
triggerall      = command = "b" && command != "holddown" 
triggerall      = command = "holdback"
trigger1        = (statetype = S) && (ctrl)
Trigger2        = (StateNo = 200) && AnimElem = 3, < 4 && MoveContact
Trigger3        = (StateNo = 201) && AnimElem = 3, < 4 && MoveContact
Trigger4        = (StateNo = 400) && AnimElem = 3, < 4 && MoveContact
Trigger5        = (StateNo = 402) && AnimElem = 3, < 4 && MoveContact
Trigger6        = (StateNo = 207) && AnimElem = 4, < 4 && MoveContact
Trigger7        = (StateNo = 208) && AnimElem = 4, < 4 && MoveContact
Trigger8        = (StateNo = 202) && AnimElem = 3, < 4 && MoveContact
trigger9 = stateno = [100,105]

;---------------------------------------------------------------------------
; Knee
[State -1:           Knee]
type            = ChangeState
value      = 210
triggerall      = (p2bodydist X < 7) && (command = "b") && command != "holddown" 
trigger1        = (statetype = S) && (ctrl)
trigger2 = stateno = [100,105]

;---------------------------------------------------------------------------
; Standing Hard Kick
[State -1:      Hard Kick]
type            = ChangeState
value      = 209
triggerall      = (P2BodyDist Y > -8) && (command = "b") && command != "holddown" 
trigger1        = (statetype = S) && (ctrl)
Trigger2        = (StateNo = 200) && AnimElem = 2, < 4 && MoveContact
Trigger3        = (StateNo = 201) && AnimElem = 3, < 4 && MoveContact
Trigger4        = (StateNo = 400) && AnimElem = 2, < 4 && MoveContact
Trigger5        = (StateNo = 402) && AnimElem = 2, < 4 && MoveContact
Trigger6        = (StateNo = 210) && AnimElem = 4, < 4 && MoveContact
Trigger7        = (StateNo = 208) && AnimElem = 4, < 4 && MoveContact
Trigger8        = (StateNo = 207) && AnimElem = 4, < 4 && MoveContact
trigger9 = stateno = [100,105]

;---------------------------------------------------------------------------
[State -1:      Pursuit Buster]
type            = ChangeState
value      = 220
triggerall      = (command = "Pursuit")  
Trigger1        = (StateNo = [200,211]) && MoveContact

;--------------------------------------------------------------------------
[State -1, Meteor Attack 2]
type = ChangeState
value = 304
triggerall = (command = "Pursuit")  && (power >= 250)
trigger1 = (stateno = 303) && (Movehit) && numtarget
;---------------------------------------------------------------------------
[State -1, Meteor Attack 2]
type = ChangeState
value = 302
triggerall = (command = "Pursuit")  && (power >= 250)
trigger1 = (stateno = 301) && (Movehit) && numtarget
;---------------------------------------------------------------------------
[State -1, Meteor Attack 1]
type = ChangeState
value = 300
triggerall = (command = "Pursuit") && (power >= 250) 
trigger1 = (stateno = 220) && (Movehit) && numtarget
trigger2 = (stateno = 826) && (Movehit) && animelem = 5,> 1 && numtarget
;--------------------------------------------------------------------------
; Crouching Light Punch
[State -1:      Crouch Light Punch]
type            = ChangeState
value      = 400
triggerall      = (command = "holddown") && (command = "x")
trigger1        = (statetype = C) && (ctrl)
Trigger2        = (StateNo = 200) && (AnimElem = 3, > 5 || MoveContact && AnimElem = 3)
Trigger3        = (StateNo = 200) && AnimElem = 3, < 4 && MoveContact
Trigger4        = (StateNo = 201) && AnimElem = 3, < 4 && MoveContact
Trigger5        = (StateNo = 208) && AnimElem = 4, < 4 && MoveContact
Trigger6        = (StateNo = 203) && AnimElem = 3, < 4 && MoveContact
trigger7 = stateno = [100,105]

;---------------------------------------------------------------------------
; Crouching Hard Punch
[State -1:          Crouching Hard Punch]
type            = ChangeState
value      = 401
triggerall      = (command = "holddown") && (command = "y")
trigger1        = (statetype = C) && (ctrl)
Trigger2        = (StateNo = 402) && AnimElem = 3, < 4 && MoveContact
Trigger3        = (StateNo = 200) && AnimElem = 3, < 4 && MoveContact
Trigger4        = (StateNo = 201) && AnimElem = 3, < 4 && MoveContact
Trigger5        = (StateNo = 208) && AnimElem = 4, < 4 && MoveContact
Trigger6        = (StateNo = 203) && AnimElem = 3, < 4 && MoveContact
Trigger7        = (StateNo = 209) && AnimElem = 3, < 4 && MoveContact
Trigger8        = (StateNo = 400) && AnimElem = 3, < 4 && MoveContact
trigger9        = stateno = [100,105]

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1:      Crouch Light Kick]
type            = ChangeState
value      = 402
triggerall      = (command = "holddown") && (command = "a")
trigger1        = (statetype = C) && (ctrl)
Trigger2        = (StateNo = 400) && AnimElem = 3, < 4 && MoveContact
Trigger3        = (StateNo = 200) && AnimElem = 3, < 4 && MoveContact
Trigger4        = (StateNo = 201) && AnimElem = 3, < 4 && MoveContact
Trigger5        = (StateNo = 207) && AnimElem = 3, < 4 && MoveContact
Trigger6        = (StateNo = 209) && AnimElem = 3, < 4 && MoveContact
Trigger7        = (StateNo = 203) && AnimElem = 3, < 4 && MoveContact
trigger8        = stateno = [100,105]

;---------------------------------------------------------------------------
; Crouching Hard Kick
[State -1:      Crouch Hard Kick]
type            = ChangeState
value      = 403
triggerall      = (command = "holddown") && (command = "b")
trigger1        = (statetype = C) && (ctrl)
Trigger2        = (StateNo = 402) && AnimElem = 3, < 4 && MoveContact
Trigger3        = (StateNo = 200) && AnimElem = 3, < 4 && MoveContact
Trigger4        = (StateNo = 201) && AnimElem = 3, < 4 && MoveContact
Trigger5        = (StateNo = 207) && AnimElem = 3, < 4 && MoveContact
Trigger6        = (StateNo = 203) && AnimElem = 3, < 4 && MoveContact
Trigger7        = (StateNo = 209) && AnimElem = 3, < 4 && MoveContact
Trigger8        = (StateNo = 400) && AnimElem = 3, < 4 && MoveContact
trigger9        = stateno = [100,105]

;---------------------------------------------------------------------------
; Air Light Punch
[State -1:      Air Light Punch]
type            = ChangeState
value      = 600
triggerall      = (command = "x")
trigger1        = (statetype = A) && (ctrl)

;---------------------------------------------------------------------------
; Air Hard Punch
[State -1:      Air Hard Punch]
type            = ChangeState
value      = 601
triggerall      = (command = "y")
trigger1        = (statetype = A) && (ctrl)
trigger2        = (stateno = 600) && AnimElem = 3, < 6 && MoveContact
trigger3        = (stateno = 602) && AnimElem = 3, < 6 && MoveContact
trigger4        = (stateno = 603) && AnimElem = 3, < 6 && MoveContact

;---------------------------------------------------------------------------
; Air Light Kick
[State -1:      Air Light Kick]
type            = ChangeState
value      = 602
triggerall      = (command = "a")
trigger1        = (statetype = A) && (ctrl)
trigger2        = (stateno = 600) && AnimElem = 2, < 6 && MoveContact

;---------------------------------------------------------------------------
; Air Hard Kick
[State -1:      Air Hard Kick]
type            = ChangeState
value      = 603
triggerall      = (command = "b")
trigger1        = (statetype = A) && (ctrl)
trigger2        = (stateno = 600) && AnimElem = 2, < 6 && MoveContact
trigger3        = (stateno = 602) && AnimElem = 3, < 6 && MoveContact

;---------------------------------------------------------------------------
[State -1, Standing light attack]
type = ChangeState
value = 198
triggerall = (command = "s") 
trigger1 = (ctrl) && (statetype != A)

;---------------------------------------------------------------------------
[State -1, AIR Dash]
type = ChangeState
value = 110
triggerall = var(59) = 0
trigger1 = (command = "FF" || command = "BB") && (statetype = A) && (ctrl)

;---------------------------------------------------------------------------
