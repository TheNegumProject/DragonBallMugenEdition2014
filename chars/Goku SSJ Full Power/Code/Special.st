;------------------------------------------------------------------------
[Statedef 1010,Shunkan Idou ]
type    = S
movetype= I
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1010
poweradd = 0
sprpriority = 1


[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 40
value = S190,1


[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 240
value = S190,3


[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 620
value = S190,0


[State 0, ChangeState]
type = ChangeState
trigger1 =  command = "a" || command = "b" 
value = 0
ctrl = 1

[State 0, ChangeState]
type = ChangeState
trigger1 =  command != "holdx" && command != "holdy"
value = 1013
ctrl = 0


;-------------------------------------------------------------------------------
[Statedef 1013,Shunkan Idou,Straight ]
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
ctrl = 0
anim = 1013
poweradd = 0
sprpriority = 1


[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 3
x = 7


;-------------------
[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S190,8


[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S50,1


[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S210,1

;--------------------------

[State 1200,6	Fading Afterimage]
type		= helper
trigger1 		= !time
stateno 		= 1003
ID 		= 1003
pos 		= 0,0
ownpal 		= 1
keyctrl		= 0
pausemovetime 	= 99
ignorehitpause	= 1

;--------------------------


[State 200, 1]
type = HitDef
trigger1 = !time
attr = S, SA
damage = 50
animtype = Hard
guardflag  = HA
hitflag    = MAF
priority = 3, Hit
pausetime = 9, 12
sparkno = S7034
sparkxy = -17,-58
hitsound = S301, 4
guardsound = S400, 1
guard.sparkno = S8022+(random%2)
ground.type = High
ground.slidetime = 5
ground.hittime  = 10
ground.velocity = -12.5
airguard.velocity = 1.9,2.8
air.type = High
air.velocity = -9.5, -4.6
air.hittime = 12
fall = 0
fall.recover = 0
envshake.time           = 10
envshake.freq           = 100
envshake.ampl           = -4
envshake.phase          = 10



[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 2
x = floor(p2dist X) -8

[State 0, ChangeState]
type = ChangeState
triggerall = (Command = "QCB_x") || (Command = "QCB_y")  
trigger1 = movehit
value = 1014
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = !animtime || movehit
value = 0
ctrl = 1
;------------------------------------------------------------------------------
[Statedef 1014,Shunkan Idou,Low Attack ]
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
ctrl = 0
anim = 1012
poweradd = 0
sprpriority = 1


[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S190,8


[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S200,3


[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S210,4

;--------------------------

[State 1200,6	Fading Afterimage]
type		= helper
trigger1 		= !time
stateno 		= 1003
ID 		= 1003
pos 		= 0,0
ownpal 		= 1
keyctrl		= 0
pausemovetime 	= 99
ignorehitpause	= 1

;--------------------------

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 2
x = floor(p2dist X) -14

;------------------


[State 200, 1]
type = HitDef
trigger1 = !time
attr = S, SA
damage = 45
animtype = back
guardflag  = L
hitflag    = MAF
priority = 3, Hit
pausetime = 7,12
sparkno = S7034
sparkxy = -23,-58
hitsound = S300, 3
guardsound = S400, 1
guard.sparkno           = S8022+(random%2)
ground.type = low
ground.slidetime = 5
ground.hittime  = 10
ground.velocity = -2.5, -7.9
airguard.velocity = 1.9,2.8
air.type = High
air.velocity = -5.5, -3.6
air.hittime = 12
fall = 1
fall.recover = 0
envshake.time           = 10
envshake.freq           = 100
envshake.ampl           = -4
envshake.phase          = 10

[State 0, ChangeState]
type = ChangeState
triggerall = (Command = "QCB_x") || (Command = "QCB_y")  
trigger1 = movehit
value = 1015
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = !animtime 
value = 0
ctrl = 1

;-------------------------------------------------------------------------
[Statedef 1015,Shunkan Idou,high Attack ]
type    = S
movetype= I
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1014
poweradd = 0
sprpriority = 4



[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 2
statetype = A       ;S,A,C,L
movetype = A        ;I,A,H
physics = N         ;A,C,S,N
;ignorehitpause =
;persistent =

[State 0, Turn]
type = null;  Turn
trigger1 = animelem = 2

[State 0, Pause]
type = Pause
trigger1 = !time
time = 9
movetime = 9

 
;-------------------
[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S190,8


[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S50,1


[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S210,1

;--------------------------

[State 1200,6	Fading Afterimage]
type		= helper
trigger1 		= !time
stateno 		= 1003
ID 		= 1003
pos 		= 0,0
ownpal 		= 1
keyctrl		= 0
pausemovetime 	= 99
ignorehitpause	= 1

;----------------
[State 0, PosSet]
type = PosSet
trigger1 = animelem = 2 
y = floor(enemynear, const(size.head.pos.y)+25)


[State 0, PosAdd]
type = Posadd
trigger1 = animelem = 2
x = (p2dist x)-15
;--------------------------------------


[State 0, VelSet]
type = VelSet
trigger1 = animelem = 2
x = 1
y = -2


[State 0, VelSet]
type = VelSet
trigger1 = animelem = 3
y = 2

;--------------------------

[State 200, 1]
type = HitDef
trigger1 = !time
attr = A, NA
damage = 45
animtype = back
guardflag  = HA
hitflag    = HAF
priority = 3, Hit
pausetime = 8,8
sparkno = S7034
sparkxy = -27,-18
hitsound = S301, 4
guardsound = S400, 1
guard.sparkno           = S8022+(random%2)
ground.slidetime = 5
ground.hittime  = 10
ground.velocity = 5,6.6
airguard.velocity = 1.9,2.8
air.type = High
air.velocity = 6.5, 7.6
air.hittime = 12
fall = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.bounce = 1
envshake.time           = 10
envshake.freq           = 100
envshake.ampl           = -4
envshake.phase          = 10


[State 0, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 50
ctrl = 1
;-------------------------------------------------------------------------------
[Statedef 1020,Hammer Kick ]
type     = S
movetype = A  
physics  = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1020
poweradd = 0
sprpriority = 1

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 2
statetype = A       ;S,A,C,L
movetype = A        ;I,A,H
physics = N        ;A,C,S,N
;ignorehitpause = 
;persistent = 


[state 1040]
type = velset
trigger1 = animelem = 2
x = 3
y = -5

[state 1040]
type = gravity
trigger1 = 1


[State 200]
type = PlaySnd
trigger1 = animelem= 2
value = S200,4

[State 200]
type = PlaySnd
trigger1 = animelem= 1
value = S210,1


[State 0, ]
type                    = HitDef
trigger1                = !time
attr                    = A, SA
damage                  = 155,10
animtype                = back
guardflag               = H
hitflag                 = MAF
priority                = 3, Hit
pausetime               = 8, 9
sparkno                 = S8000+(random%2)
guard.sparkno           = S8022+(random%2)
sparkxy                 = -8, -69
hitsound                = S301, 4
guardsound              = S400, 0
ground.type             = High
ground.slidetime        = 12
ground.hittime          = 12
ground.velocity         = -3
airguard.velocity       = -3.9,-1
air.type                = High
air.velocity            = -5,3
air.hittime             = 12
getpower                = 95
givepower		= 0
yaccel		        = 0.5
fall                    =  1



[State 0, ChangeState]
type = ChangeState
trigger1 = movehit && Pos Y >= 0 && animelem = 6,>0
value = stateno+3
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = !movehit && Pos Y >= 0 && animelem = 6,>0
value = stateno+3
ctrl = 0

;-------------------------------------------------------------------------------
[Statedef 1021,Hammer Kick -- Super Drill ]
type     = S
movetype = A  
physics  = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1021
poweradd = 0
sprpriority = 1

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 2
statetype = A       ;S,A,C,L
movetype = A        ;I,A,H
physics = N        ;A,C,S,N
;ignorehitpause = 
;persistent = 


[state 1040]
type = velset
trigger1 = animelem = 2
x = 5
y = -4

[state 1040]
type = gravity
trigger1 = 1



[State 200]
type = PlaySnd
trigger1 = animelem= 2
value = S200,4

[State 200]
type = PlaySnd
trigger1 = animelem= 1
value = S210,1


[State 0, ]
type                    = HitDef
trigger1                = !time
attr                    = A, SA
damage                  = 55,12
animtype                = Heavy
guardflag               = H
hitflag                 = MA
priority                = 3, Hit
pausetime               = 8, 12
sparkno                 = S8001
guard.sparkno           = S8022+(random%2)
sparkxy                 = -8, -69
hitsound                = S301, 3
guardsound              = S400, 0
ground.type             = High
ground.slidetime        = 12
ground.hittime          = 12
ground.velocity         = 0,0
airguard.velocity       = -3.9,-1
air.type                = High
air.velocity            = -5,-3
air.hittime             = 12
getpower                = 95
givepower		= 0
yaccel		        = 0.5
fall                    =  0
snap                    = 1


[State 0, ChangeState]
type = ChangeState
trigger1 = movehit && Pos Y >= 0 && animelem = 7,>0
value = stateno+3
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = !movehit && Pos Y >= 0 && animelem = 7,>0
value = 52
ctrl = 1
;-------------------------------------------------------------------------------
[Statedef 1022,Hammer Kick - Super Drill - Cat's Paw ]
type     = S
movetype = A  
physics  = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1020
poweradd = 0
sprpriority = 1

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 2
statetype = A       ;S,A,C,L
movetype = A        ;I,A,H
physics = N        ;A,C,S,N
;ignorehitpause = 
;persistent = 


[state 1040]
type = velset
trigger1 = animelem = 2
x = 5
y = -4

[state 1040]
type = gravity
trigger1 = 1



[State 200]
type = PlaySnd
trigger1 = animelem= 2
value = S200,4

[State 200]
type = PlaySnd
trigger1 = animelem= 1
value = S210,1


[State 0, ]
type                    = HitDef
trigger1                = !time
attr                    = A, SA
damage                  = 15,12
animtype                = Heavy
guardflag               = H
hitflag                 = MA
priority                = 3, Hit
pausetime               = 10, 12
sparkno                 = S8001
guard.sparkno           = S8022+(random%2)
sparkxy                 = -8, -69
hitsound                = S301, 3
guardsound              = S400, 0
ground.type             = High
ground.slidetime        = 12
ground.hittime          = 12
ground.velocity         = 0,0
airguard.velocity       = -3.9,-1
air.type                = High
air.velocity            = -5,-3
air.hittime             = 12
getpower                = 95
givepower		= 0
yaccel		        = 0.5
fall                    =  0
snap                    = 1


[State 0, ChangeState]
type = ChangeState
trigger1 = movehit && Pos Y >= 0 && animelem = 7,>0
value = stateno+2
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = !movehit && Pos Y >= 0 && animelem = 7,>0
value = 52
ctrl = 1
;-------------------------------------------------------------------------------
[Statedef 1023,idleness (light)]
type    = S
movetype= I
physics = S
juggle  = 2
velset = 0,0
ctrl = 0
anim = 1022
poweradd = 0
sprpriority = 1


[State 52, 2]
type                    = PosSet
trigger1                = (Time = 0)
y                       = 0

[State 52, 1]
type                    = VelSet
trigger1                = (Time = 0)
y                       = 0


[State 0, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 0
ctrl = 1

;------------------------------------------------------------------
[Statedef 1024,idleness]
type    = S
movetype= I
physics = S
juggle  = 2
velset = 0,0
ctrl = 0
anim = 1023
poweradd = 0
sprpriority = 1


[State 52, 2]
type                    = PosSet
trigger1                = (Time = 0)
y                       = 0

[State 52, 1]
type                    = VelSet
trigger1                = (Time = 0)
y                       = 0


[State 0, ChangeState]
type = ChangeState
trigger1 = !animtime
value = stateno + 1
ctrl = 0

;------------------------------------------------------------------
[Statedef 1025, Super Drill ---]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1024
poweradd = 0
sprpriority = 1


;--------------------
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S200,1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = S200,1


[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S210,7



[State 200, 1]
type = HitDef
trigger1 = animelem = 4
attr = S, SA
damage = 35
animtype = back
guardflag  = MA
hitflag    = MA
priority = 3, Hit
pausetime = 4, 7
sparkno                 = S8001
guard.sparkno           = S8022+(random%2)
sparkxy = -22,-56
hitsound = S301, 1
guardsound = S400, 0
guard.sparkno = S6005
ground.type = low
ground.slidetime = 5
ground.hittime  = 10
ground.velocity = -2.5,0
airguard.velocity = 1.9,2.8
air.type = High
air.velocity = -6.5, 2.6
air.hittime = 12
fall = 0
kill = 0

[State 200, 1]
type = HitDef
trigger1 = animelem = 6
attr = S, SA
damage = 39
animtype = back
guardflag  = MA
hitflag    = MA
priority = 3, Hit
pausetime = 7, 8
sparkno                 = S7034
guard.sparkno           = S8022+(random%2)
sparkxy = -16,-64
hitsound = S301, 4
guardsound = S400, 0
guard.sparkno = S6005
ground.type = low
ground.slidetime = 5
ground.hittime  = 10
ground.velocity = -8.5,-4
airguard.velocity = 1.9,2.8
air.type = High
air.velocity = -6.5, 2.6
air.hittime = 12
fall = 1



[State 310, End]
type = ChangeState
trigger1 = movehit && animelem = 7
value = 0
ctrl = 1

[State 310, End]
type = ChangeState
trigger1 = !movehit && animelem = 7
value = 0
ctrl = 1
;----------------------------------------------------------------------
[Statedef 1026, Super Drill ---- Cat's Paw]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1022
poweradd = 0
sprpriority = 1


;--------------------
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S200,3

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = S200,3

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 7
value = S200,3

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S215,1



[State 200, 1]
type = HitDef
trigger1 = animelem = 4
trigger2 = animelem = 6
trigger3 = animelem = 8
attr = S, SA
damage = ifelse(hitcount > 1, 20,30),5
animtype = back
guardflag  = MA
hitflag    = MA
priority = 3, Hit
pausetime = 4, 7
sparkno                 = S8030+(random%5)
guard.sparkno           = S8022+(random%2)
sparkxy = -16,-54
hitsound = S301, 1
guardsound = S400, 0
guard.sparkno = S6005
ground.type = low
ground.slidetime = 5
ground.hittime  = 10
ground.velocity = 2.5
airguard.velocity = 1.9,2.8
air.type = High
air.velocity = -6.5, 2.6
air.hittime = 12
fall = 0



[State 310, End]
type = ChangeState
trigger1 = movehit && !animtime
value = 1027
ctrl = 0

[State 310, End]
type = ChangeState
trigger1 = !movehit && (!animtime)
value = 0
ctrl = 1
;----------------------------------------------------------------------
[Statedef 1027,Cat's Paw]
type    = A
movetype= A
physics = N
juggle  = 2
velset = 0,0
ctrl = 0
anim = 1024
poweradd = 0
sprpriority = 1


[State InitVel]
Type 		= VelAdd
Trigger1 	= AnimElemTime(2) = 1
X 	= 2.9
Y 	= -7.9


[State AirFriction]
Type 		= VelMul
Trigger1 	= AnimElemTime(2) > 1
X 	= .96


[State Accel]
Type 		= VelAdd
Trigger1 	= AnimElemTime(3) > 1
Y 			= .72

;------------
;snds
;------------


[State 0, PlaySnd]
type = PlaySnd
trigger1 =  animelem = 2
value = S25,1



;---------------
;hit description
;---------------

[State 200, 1]
type = HitDef
trigger1 = !time
attr = A, NA
damage = ifelse(hitcount > 1, 30,40),5
animtype = Light
guardflag  = HA
hitflag    = HAF
priority = 3, Hit
pausetime = 12, 12
sparkno                 = S7034
guard.sparkno           = S8022+(random%2)
sparkxy = -16,-76
hitsound = S301, 4
guardsound = S400, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 10
ground.velocity = -2.63655, -8.96969
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -2.63655, -8.96969
air.hittime = 12
fall = 1

[State Proper]
Type 		= StateTypeSet
Trigger1 	= Pos Y < 0
stateType 		= A
moveType 		= A
physics 		= N

[State 0, ChangeState]
type = ChangeState
trigger1 = movehit && animtime = 0
value = 50
ctrl = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = !movehit && animtime = 0
value = 50
ctrl = 1
;-------------------------------------------------------------------------
[Statedef 1030,Shunkan Idou Clones]
type    = S
movetype= I
physics = S
juggle  = 1
;velset = 0,0
ctrl = 0
;anim = 100  
poweradd = 0
sprpriority = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S100,3

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S2,3

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = (8) ||  time = (16) || time = (29)
value = S200,3
channel = -1

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = Pos y !=0
statetype = A       ;S,A,C,L


[State 1200,6	 Afterimage]
type		= helper
trigger1 		= !time
stateno 		= 1005
ID 		= 1005
pos 		= 5,0
ownpal 		= 1
keyctrl		= 0
pausemovetime 	= 99
ignorehitpause	= 1



[State 0, ChangeState]
type = ChangeState
trigger1 = statetype = A && time = 5
value = 50
ctrl = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = statetype != A && time = 5 
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
;Melee Gut Punches
[Statedef 1040]
type 		= S
movetype		= A
physics		= N
juggle	    	= 1
anim    	          = 1040
velset		= 0,0
ctrl		= 0
poweradd		= 69
facep2		= 0
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority         = 2

[State 0: VelSet]
type                    = VelSet
trigger1                = AnimElem = 2
x                       = 5.5

[State 0: VelSet]
type                    = VelSet
trigger1                = AnimElemtime(6) = 7
x                       = 0

[State 0, ]
type                    = PlaySnd
trigger1                = AnimElem = 3
trigger2                = AnimElem = 5
value                   = 200, 0

[State 0, ]
type                    = PlaySnd
trigger1                = AnimElem = 7
value                   = 200, 4

[State 0, ]
type                    = PlaySnd
trigger1                = AnimElem = 3
trigger2                = AnimElem = 5
value                   = 210, 5

[State 0, ]
type                    = PlaySnd
trigger1                = AnimElem = 7
value                   = 210, 1




[State 0: Explod]
type                    = Explod
trigger1                = AnimElem = 6
anim                    = 7030
ID                      = 7030
pos                     = 0,-10
bindtime                = -1
scale                   = 1,1
sprpriority             = 3
ownpal                  = 1
removeongethit          = 1
ignorehitpause          = 0

[State 0, ]
type                    = HitDef
trigger1                = AnimElem = 3
trigger2                = AnimElem = 5
attr                    = S, SA
damage                  = 45,5
animtype                = Heavy
guardflag               = M
hitflag                 = MA
priority                = 5, Hit
pausetime               = 5, 17
sparkno                 = S8000+(random%2)
guard.sparkno           = S8022+(random%2)
sparkxy                 = -8, -50
hitsound                = S300, 0
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 1, 2))
ground.type             = low
ground.slidetime        = 20
ground.hittime          = 20
ground.velocity         = -0.5
airguard.velocity       = -3.9,-1
air.type                = low
air.velocity            = -4
air.hittime             = 12
getpower                = 27
givepower		        = 0
envshake.time           = 10
envshake.freq           = 100
envshake.ampl           = -4
envshake.phase          = 10
yaccel		            = 0.5
snap                   = 10,0
kill = 0

[State 0, ]
type                    = HitDef
trigger1                = AnimElem = 7
attr                    = S, SA
damage                  = 40,5
animtype                = Heavy
guardflag               = M
hitflag                 = MA
priority                = 5, Hit
pausetime               = 11, 12
sparkno                 = S8000+(random%2)
guard.sparkno           = S8022+(random%2)
sparkxy                 = -8, -50
hitsound                = S300, 3
guardsound              = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 1, 2))
ground.type             = low
ground.slidetime        = 20
ground.hittime          = 20
ground.velocity         = -8, -5
airguard.velocity       = -3.9,-1
air.type                = low
air.velocity            = -8, -5
air.hittime             = 12
getpower                = 27
givepower		        = 0
Fall                    = 1
Fall.recover            = 0
envshake.time           = 10
envshake.freq           = 100
envshake.ampl           = -4
envshake.phase          = 10
yaccel		            = 0.5

[State 0, ]
type                    = ChangeState
trigger1                = !AnimTime
value                   = 0
ctrl                    = 1

;---------------------------------------------------------------------------
;Melee Gut Punches 2
[Statedef 1043]
type 		= S
movetype		= A
physics		= N
juggle	    	= 1
anim    	          = 1041
velset		= 0,0
ctrl		= 0
poweradd		= 69
facep2		= 0
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority         = 2

[State 0: VelSet]
type                    = VelSet
trigger1                = AnimElem = 2
x                       = 5.5

[State 0: VelSet]
type                    = VelSet
trigger1                = AnimElem = 11
x                       = 0

[State 0, ]
type                    = PlaySnd
trigger1                = AnimElem = 3
trigger2                = AnimElem = 5
trigger3                = AnimElem = 7
trigger4                = AnimElem = 9
trigger5                = AnimElem = 11
value                   = 200, 0

[State 0, ]
type                    = PlaySnd
trigger1                = AnimElem = 11
value                   = 200, 4

[State 0, ]
type                    = PlaySnd
trigger1                = AnimElem = 3
trigger2                = AnimElem = 5
trigger3                = AnimElem = 7
trigger4                = AnimElem = 9
value                   = 210, 5


[State 0, ]
type                    = PlaySnd
trigger1                = AnimElem = 11
value                   = 210, 1




[State 0: Explod]
type                    = Explod
trigger1                = AnimElem = 10
anim                    = 7030
ID                      = 7030
pos                     = 0,-10
bindtime                = -1
scale                   = 1,1
sprpriority             = 3
ownpal                  = 1
removeongethit          = 1
ignorehitpause          = 0

[State 0, ]
type                    = HitDef
trigger1                = AnimElem = 3
attr                    = S, SA
damage                  = 25,2
animtype                = Heavy
guardflag               = M
hitflag                 = MA
priority                = 5, Hit
pausetime               = 2, 12
sparkno                 = S8000+(random%2)
guard.sparkno           = S8022+(random%2)
sparkxy                 = -8, -50
hitsound                = S300, 0
guardsound              = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 1, 2))
ground.type             = low
ground.slidetime        = 20
ground.hittime          = 20
ground.velocity         = -.5
airguard.velocity       = -3.9,-1
air.type                = low
air.velocity            = -4
snap                    = 10,0
air.hittime             = 12
getpower                = 27
givepower		        = 0
yaccel		            = 0.5

[State 0, ]
type                    = HitDef
trigger1                = AnimElem = 5
trigger2                = AnimElem = 7
trigger3                = AnimElem = 9
attr                    = S, SA
damage                  = 25,1
animtype                = Heavy
guardflag               = M
hitflag                 = MAF
priority                = 5, Hit
pausetime               = 3, 17
sparkno                 = S8000+(random%2)
guard.sparkno           = S8022+(random%2)
sparkxy                 = -8, -50
hitsound                = S300, 1
guardsound              = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 1, 2))
ground.type             = low
ground.slidetime        = 20
ground.hittime          = 20
ground.velocity         = -2
airguard.velocity       = -3.9,-1
air.type                = low
air.velocity            = -4
air.hittime             = 12
getpower                = 27
givepower		        = 0
envshake.time           = 10
envshake.freq           = 100
envshake.ampl           = -4
envshake.phase          = 10
yaccel		            = 0.5


[State 0, ]
type                    = HitDef
trigger1                = AnimElem = 11
attr                    = S, SA
damage                  = 25,2
animtype                = Heavy
guardflag               = M
hitflag                 = MAF
priority                = 5, Hit
pausetime               = 11, 12
sparkno                 = S8001
guard.sparkno           = S7113
sparkxy                 = -8, -40
hitsound                = S300, 3
guardsound              = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 1, 2))
ground.type             = low
ground.slidetime        = 20
ground.hittime          = 20
ground.velocity         = -8, -5
airguard.velocity       = -3.9,-1
air.type                = low
air.velocity            = -8, -5
air.hittime             = 12
getpower                = 27
givepower		        = 0
Fall                    = 1
Fall.recover            = 0
envshake.time           = 10
envshake.freq           = 100
envshake.ampl           = -4
envshake.phase          = 10
yaccel		            = 0.5

[State 0, ]
type                    = ChangeState
trigger1                = !AnimTime
value                   = 0
ctrl                    = 1

;---------------------------------------------------------------------------
;Melee Gut Punches - Knee Attack
[Statedef 1041]
type 		= S
movetype		= A
physics		= S
juggle	    	= 1
anim    	          = 1042
velset		= 0,0
ctrl		= 0
poweradd		= 69
facep2		= 0
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority	= 2

[State 0: RemoveExplod]
type                    = RemoveExplod
trigger1                = 1
ID                      = 7030
ignorehitpause          = 1

[State 0, ScreenBound]
type                    = ScreenBound
trigger1                = AnimElem = 3, > 0
value			        = 0
movecamera		        = 0,1

[State 0, ]
type                    = HitDef
trigger1                = !Time
attr                    = S, SA
damage                  = ifelse(prevstateno = 1040,60,35),5
animtype                = Heavy
guardflag               = M
hitflag                 = MA
priority                = 5, Hit
pausetime               = 11, 12
sparkno                 = S7034
guard.sparkno           = S7113
sparkxy                 = -15, -65
hitsound                = S301, 4
guardsound              = S400, 0
ground.type             = High
ground.slidetime        = 20
ground.hittime          = 20
ground.velocity         = -13, -6
airguard.velocity       = -3.9,-1
air.type                = High
air.velocity            = -13, -6
air.hittime             = 12
getpower                = 27
givepower		        = 0
Fall                    = 1
Fall.recover            = 0
envshake.time           = 10
envshake.freq           = 100
envshake.ampl           = -4
envshake.phase          = 10
yaccel		            = 0.5

[State 0, ]
type                    = ChangeState
triggerall              = MoveHit
trigger1                = !AnimTime
value                   = 1042
ctrl                    = 1

[State 0, ]
type                    = ChangeState
triggerall              = !MoveHit
trigger1                = !AnimTime
value                   = 1042
ctrl                    = 1

;---------------------------------------------------------------------------
; Knee Attack End
[Statedef 1042]
type                    = S
physics                 = N
anim                    = 100
sprpriority             = 2
velset                  = 0,0

[State 100, 0]
type                    = VelSet
trigger1                = animelem = 3
x                       = const(velocity.run.fwd.x)

[State 105, 0]
type                    = VelAdd
trigger1                = animelem = 3
x                       = -.5

[State 100, 0]
type                    = VelAdd
trigger1                = AnimElem = 4
x                       = -5

[State 100, 0]
type                    = AssertSpecial
trigger1                = 1
flag                    = NoWalk
flag2                   = NoAutoTurn

[State 100, ScreenBound]
type                    = ScreenBound
trigger1                = (BackEdgeBodyDist <= -5)
value                   = 0
movecamera              = 0,0

[State 100, 0]
type                    = MakeDust
trigger1                = Anim = 100
pos                     = -5,-2
spacing                 = 4

[State 100, CtrlSet]
type                    = CtrlSet
trigger1                = 1
value                   = IfElse(BackEdgeBodyDist <= -5,0,1)

[State 100, 0]
type                    = VelSet
trigger1                = anim = 102
x                       = 0

;-----------------------------

[State 100, 0]
type                    = PlaySnd
trigger1                = AnimElem = 2
value                   = 100,0

;-----------------------------

[State 0: ChangeAnim]
type                    = ChangeAnim
trigger1                = BackEdgeBodyDist >= 55
value                   = 102
persistent              = 0

[State 100, 0]
type                    = ChangeState
triggerall              = Anim = 102 
trigger1                = !AnimTime && BackEdgeBodyDist >= 55
value                   = 0
ctrl                    = 1

;---------------------------------------------------------------------------
;Melee Gut Punches - Double Knee > Wall Bounce
[Statedef 1044]
type 		= S
movetype		= A
physics		= S
juggle	          = 1
anim    	          = 1043
velset		= 0,0
ctrl	          = 0
poweradd		= 69
facep2		= 0
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority	= 2

[State 0: RemoveExplod]
type                    = RemoveExplod
trigger1                = 1
ID                      = 7030
ignorehitpause          = 1

[State 0, ]
type                    = HitDef
trigger1                = AnimElem = 3
trigger2                = AnimElem = 6
attr                    = S, SA
damage                  = ifelse(prevstateno = 1040,27,15),5
animtype                = Heavy
guardflag               = M
hitflag                 = MAF
priority                = 5, Hit
pausetime               = 11, 32
sparkno                 = S7034
guard.sparkno           = S7113
sparkxy                 = -20, -75
hitsound                = S301, 4
guardsound              = S400, 0
ground.type             = High
ground.slidetime        = 20
ground.hittime          = 20
ground.velocity         = -4
airguard.velocity       = -3.9,-1
air.type                = High
air.velocity            = -4
air.hittime             = 12
getpower                = 27
givepower		        = 0
envshake.time           = 10
envshake.freq           = 100
envshake.ampl           = -4
envshake.phase          = 10
yaccel		            = 0.5
snap                    = 20, 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff   = 0
down.cornerpush.veloff  = 0
kill                    = 0

[State 0, ]
type                    = HitDef
trigger1                = AnimElem = 9
attr                    = S, SA
damage                  = ifelse(prevstateno = 1040,15,10),5
animtype                = Heavy
guardflag               = M
hitflag                 = MAF
priority                = 5, Hit
pausetime               = 22, 22
sparkno                 = S7034
guard.sparkno           = S7113
sparkxy                 = -15, -85
hitsound                = S301, 4
guardsound              = S400, 0
ground.type             = High
ground.slidetime        = 20
ground.hittime          = 20
ground.velocity         = -13, -6
airguard.velocity       = -3.9,-1
air.type                = High
air.velocity            = -13, -6
air.hittime             = 12
getpower                = 27
givepower		        = 0
envshake.time           = 22
envshake.freq           = 100
envshake.ampl           = -4
envshake.phase          = 10
yaccel		            = 0.5
id                      = 1014
p2stateno               = 1045
p2facing                = 1
snap                    = 25,-70

[State 0, ]
type                    = ChangeState
trigger1                = !AnimTime
value                   = 0
ctrl                    = 1

;---------------------------------------------------------------------------
; Double Knee  WB - shaking from the hit
[Statedef 1045]
type                    = A
movetype                = H
physics                 = N
velset                  = 0,0

[State 0, Anim]
type                    = ChangeAnim2
trigger1                = !Time
value                   = 1044

[State 0, State]
type                    = ChangeState
trigger1                = AnimElem = 2
value                   = 1046

;---------------------------------------------------------------------------
; Double Knee  WB - flying through the air
[Statedef 1046]
type                    = A
movetype                = H
physics                 = N

[State 0, Velocity]
type                    = HitVelSet
trigger1                = Time = 0
x                       = 1
y                       = 1

[State 0, Gravity]
type                    = VelAdd
trigger1                = 1
y                       = .45

[State 0, No scroll]
type                    = ScreenBound
triggerall              = Pos y < -15
trigger1                = BackEdgeBodyDist < 65
trigger2                = FrontEdgeBodyDist < 65
value                   = 1
movecamera              = 0,1

[State 0, Hit wall]
type                    = ChangeState
triggerall              = Pos y < -15
trigger1                = BackEdgeBodyDist <= 20
trigger2                = FrontEdgeBodyDist <= 20
value                   = 1047

[State 0, Hit ground]
type                    = SelfState
trigger1                = (Vel y > 0) && (Pos y >= 0)
value                   = 5100

;---------------------------------------------------------------------------
; Double Knee  WB - hit wall
[Statedef 1047]
type                    = A
movetype                = H
physics                 = N

[State 0, Turn]
type                    = Turn
trigger1                = (!Time) && (FrontEdgeBodyDist <= 30)

[State 0, Pos]
type                    = PosAdd
trigger1                = !Time
x                       = 15 - BackEdgeBodyDist

[State 0, Stop moving]
type                    = PosFreeze
trigger1                = 1
x                       = 1
y                       = 1

[State 0, No scroll]
type                    = ScreenBound
trigger1                = 1
value                   = 1
movecamera              = 0,1

[State 0, Spark]
type                    = Explod
trigger1                = !Time
anim                    = F72
pos                     = 0, floor (screenpos y) - 50
postype                 = back
sprpriority             = 3

[State 0, Anim]
type                    = ChangeAnim2
trigger1                = !Time
value                   = 1045

[State 0, Sound]
type                    = PlaySnd
trigger1                = !Time
value                   = 815,0

[State 0, State]
type                    = ChangeState
trigger1                = !AnimTime
value                   = 1070
ctrl                    =1

;---------------------------------------------------------------------------
; Dashing Elbow
[Statedef 1066]
type 		= S
movetype		= A
physics		= N
juggle	    	= 1
anim    	          = 1066
velset		= 0,0
ctrl	          = 0
poweradd		= 69
facep2		= 0
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority         = 2

[State 0, ScreenBound]
type                    = ScreenBound
Triggerall              = !NumTarget = 1066
trigger1                = 1
value			        = 0
movecamera		        = 0,1

[State InitVel]
type                    = VelSet
trigger1                = animelem = 2
X                       = 22

[State 0: PlayerPush]
type                    = PlayerPush
trigger1                = animelem = 2,>  0
value                   = 0
ignorehitpause          = 1

[State 0: VelAdd]
type                    = VelAdd
trigger1                = AnimElem = 2, > 0
x                       = 1

[State 0: VelAdd]
type                    = VelAdd
trigger1                = AnimElem = 2, > 0
y                       = -1.4

[State 0: StateTypeSet]
type                    = StateTypeSet
trigger1                = AnimElem = 2
statetype               = A

[State 0, ]
type                    = PlaySnd
trigger1                = AnimElem = 2
value                   = 25,0

[State 0:       Dust Right]
type                    = Explod
trigger1                = AnimElem = 2
anim                    = 7011
ID                      = 7011
bindtime                = 1
pos                     = -7,3
removetime              = -2
sprpriority             = 2
ownpal                  = 1
removeongethit          = 0

[State 0:       The Punch]
type                    = Explod
trigger1                = AnimElem = 2
anim                    = 7045
ID                      = 7045
bindtime                = -1
pos                     = 45,-36
removetime              = -1
scale                   = .75,1
sprpriority             = 3
ownpal                  = 1
removeongethit          = 1

[State 0, ]
type                    = HitDef
trigger1                = !Time
attr                    = S, SA
damage                  = 20
animtype                = Heavy
guardflag               = M
hitflag                 = MAF
priority                = 5, Hit
pausetime               = 0, 12
sparkno                 = S7034
guard.sparkno           = S7113
sparkxy                 = 15, -66
hitsound                = S301, 4
guardsound              = S400, 0
ground.type             = High
ground.slidetime        = 20
ground.hittime          = 20
ground.velocity         = -3, -3
airguard.velocity       = -3, -3
air.type                = High
air.velocity            = -3, -3
air.hittime             = 12
getpower                = 27
givepower		        = 0
Fall                    = 1
Fall.recover            = 0
yaccel		            = 0.5
envshake.time           = 20
envshake.freq           = 100
envshake.ampl           = 5
envshake.phase          = 10
id                      = 1066

[State 0: RemoveExplod]
type                    = RemoveExplod
trigger1                = !AnimTime
ID                      = 7045
ignorehitpause          = 1

[State 0, ]
type                    = ChangeState
trigger1                = MoveHit
value                   = 1067
ctrl                    = 0

[State 0, ]
type                    = ChangeState
trigger1                = !AnimTime
value                   = 1068
ctrl                    = 0

;---------------------------------------------------------------------------
; Dashing Elbow - hit
[Statedef 1067]
type 		= A
movetype		= I
physics		= N
juggle	    	= 1
anim    	          = 1067
velset		= 8,-4
ctrl	          = 0
poweradd		= 00
facep2		= 0
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority	= 2

[State 0: RemoveExplod]
type                    = RemoveExplod
trigger1                = !Time
ID                      = 7045
ignorehitpause          = 1

[State 0: PlayerPush]
type                    = PlayerPush
trigger1                = animelem = 1,>  0 && animelem = 5,<  0
value                   = 0
ignorehitpause          = 1

[State 0: Pause]
type                    = Pause
triggerall              = AnimElem = 1,>  0 && AnimElem = 3,<  0
trigger1                = gametime%1 = 0
time                    = 1
movetime                = 1

[State 0: VelAdd]
type                    = VelAdd
trigger1                = animelem = 2,>  0 && animelem = 5,<  0
y                       = -.5

[State Accel]
type                    = VelAdd
trigger1                = animelem = 1,>  0
Y                       = 0.22

[State Accel]
type                    = VelAdd
trigger1                = animelem = 2,>  0
Y                       = 0.44

[State 0:       The Punch fades]
type                    = Explod
trigger1                = !Time
anim                    = 7046
ID                      = 7046
bindtime                = -1
pos                     = 45,-36
removetime              = -2
scale                   = .75,1
sprpriority             = 3
ownpal                  = 1
removeongethit          = 1

[State 0, ]
type                    = ChangeState
trigger1                = (AnimElem = 7, > 0 && Pos Y >= 0)
value                   = 52
ctrl                    = 0

;---------------------------------------------------------------------------
; Dashing Elbow - Miss
[Statedef 1068]
type 		= A
movetype		= I
physics		= N
juggle	    	= 1
anim    	          = 1068
velset		= 5,-2
ctrl	          = 0
poweradd		= 00
facep2		= 0
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority         = 2

[State 0: RemoveExplod]
type                    = RemoveExplod
trigger1                = !Time
ID                      = 7045
ignorehitpause          = 1

[State 0: VelAdd]
type                    = VelAdd
trigger1                = animelem = 1,>  0 && animelem = 4,<  0
y                       = -.5
x                       = -.2

[State Accel]
type                    = VelAdd
trigger1                = animelem = 1,>  0
Y                       = 0.44

[State 0, ]
type                    = ChangeState
trigger1                = (AnimElem = 6, > 0 && Pos Y >= 0)
value                   = 52
ctrl                    = 0

;---------------------------------------------------------------------------
; Double Knee  WB - bounce off wall
[Statedef 1070]
type                    = A
movetype                = H
physics                 = N

[State 0:       SelfState]
type                    = Selfstate
trigger1                = command = "recovery"
value                   = 5200

[State 0, Vel Y]
type                    = VelSet
trigger1                = Time = 0
y                       = -6

[State 0, Vel X]
type                    = VelSet
trigger1                = Time = 0
x                       = 1

[State 0, Turn]
type                    = Turn
trigger1                = (!Time) && (BackEdgeDist < 30)

[State 0, Gravity]
type                    = VelAdd
trigger1                = 1
y                       = .35

[State 0, Break Fall Air]
Type                    = SelfState
TriggerAll              = Alive && CanRecover
Trigger1                = Command = "recovery"
Value                   = 5210

[State 0, Anim 5050] ;Self falling animation
type                    = ChangeAnim
trigger1                = !Time
trigger1                = !SelfAnimExist(5052)
value                   = 5050

[State 0, Anim 5052] ;Self falling animation (diagup type)
type                    = ChangeAnim
trigger1                = !Time
trigger1                = SelfAnimExist(5052)
value                   = 5052

[State 0, Anim 5060] ;Coming down - normal
type                    = ChangeAnim
trigger1                = Vel Y > -2
trigger1                = Anim = 5050
trigger1                = SelfAnimExist(5060)
persistent              = 0
value                   = 5060

[State 0, Anim 5062] ;Coming down - diagup type
type                    = ChangeAnim
trigger1                = Vel Y > -2
trigger1                = Anim = 5052
trigger1                = SelfAnimExist(5062)
persistent              = 0
value                   = 5062

[State 0, Hit ground]
type                    = SelfState
trigger1                = (Vel y > 0) && (Pos y >= 0)
value                   = 5100

;---------------------------------------------------------------------------
; Rising Knee
[StateDef 1080]
type    = S
movetype= A
physics = N
juggle  = 2
velset = 0,0
ctrl = 0
anim = 1080
poweradd = 0
sprpriority = 1

;----------------
; air mechanics
;----------------

[State InitVel]
Type 		= VelAdd
Trigger1 	= AnimElemTime(5) = 1
X 			= 5.9
Y 			= -12.7


[State ]
Type 		= VelMul
Trigger1 	= AnimElemTime(5) > 1
X 			= .96

[State Accel]
Type 		= VelAdd
Trigger1 	= AnimElemTime(5) > 1
Y 			= .72

[State going to air]
Type 		= StateTypeSet
Trigger1 	= Pos Y < 0
stateType 		= A
moveType 		= A
physics 		= N

;------------
;snds
;------------

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S210,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 =  animelem = 4
value = S50,1


;---------------
;hit description
;---------------

[State 200, 1]
type = HitDef
trigger1 = !time
attr = A, NA
damage = 75
animtype = Light
guardflag  = HA
hitflag    = MA
priority = 3, Hit
pausetime = 5, 3
sparkno                 = S8000+(random%2)
guard.sparkno           = S8022+(random%2)
sparkxy = -15,-78
hitsound = S300, 3
guardsound = S400, 0
guard.sparkno = S6005
ground.type = High
ground.slidetime = 5
ground.hittime  = 10
ground.velocity = -2.63655, -9.96969
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -2.63655, -8.96969
air.hittime = 20
envshake.time = 13
envshake.freq = 180
envshake.ampl = 5
fall.envshake.time = 10
fall.envshake.freq = 190
fall.envshake.ampl = 6
envshake.ampl           = -4
envshake.phase          = 10
fall = 1
fall.recover = 0


[State ground]
Type 		= PosSet
Trigger1 	= Pos Y >= 0 && AnimElemTime(11) > 1
Y 			= 0

[State 0, ChangeState]
type = ChangeState
trigger1 = movehit && Pos Y >= 0 && AnimElemTime(11) > 1
value = stateno+1
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = !movehit && Pos Y >= 0 && AnimElemTime(11) > 1
value = stateno+1
ctrl = 0


;------------------------------------------------------------------
[Statedef 1081,idleness]
type    = S
movetype= I
physics = S
juggle  = 2
velset = 0,0
ctrl = 0
anim = 1081
poweradd = 0
sprpriority = 1

;----------------
; air mechanics
;----------------

[State 0, VelSet]
type = VelSet
trigger1 = (!time)
x = 0.9

[State 0, ChangeState]
type = ChangeState
trigger1 = (command ="DP_a") || (command ="DP_b") 
value = stateno + 1
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
;--------------------------
;Flip Kick
[StateDef 1082]
type    = S
movetype= A
physics = N
juggle  = 2
velset = 0,0
ctrl = 0
anim = 1082
poweradd = 0
sprpriority = 1


[State InitVel]
Type 		= VelAdd
Trigger1 	= AnimElemTime(3) = 1
X 			= 3.9
Y 			= -9.7


[State AirFriction]
Type 		= VelMul
Trigger1 	= AnimElemTime(3) > 1
X 			= .96
[State Accel]
Type 		= VelAdd
Trigger1 	= AnimElemTime(4) > 1
Y 			= .72

;------------
;snds
;------------

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S210,2

[State 0, PlaySnd]
type = PlaySnd
trigger1 =  animelem = 4
value = S25,1

;---------------
;hit description
;---------------

[State 200, 1]
type = HitDef
trigger1 = !time
attr = A, NA
damage = 65
animtype = Light
guardflag  = HA
hitflag    = HAF
priority = 3, Hit
pausetime = 0, 7
sparkno                 = S8000+(random%2)
guard.sparkno           = S8022+(random%2)
sparkxy = -8,-48
hitsound = S301, 4
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 1, 2))
guard.sparkno = S6005
ground.type = High
ground.slidetime = 5
ground.hittime  = 10
ground.velocity = -2.63655, -8.96969
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -2.63655, -8.96969
air.hittime = 12
envshake.time = 13
envshake.freq = 180
envshake.ampl = 5
fall.envshake.time = 10
fall.envshake.freq = 190
fall.envshake.ampl = 6
envshake.ampl           = -4
envshake.phase          = 10
fall = 1

[State Proper]
Type 		= StateTypeSet
Trigger1 	= Pos Y < 0
stateType 		= A
moveType 		= A
physics 		= N

[State 0, ChangeState]
type = ChangeState
trigger1 = movehit && animtime = 0
value = 50
ctrl = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = !movehit && animtime = 0
value = 50
ctrl = 1
;-------------------------------------------------------------------------
[Statedef 1084, Kamehameha ]
type    = S
movetype= I
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1084
poweradd = 0
sprpriority = 1

[State 0, Explod]
type =null; Explod
trigger1 = !time
anim = 6070
ID = 6070
pos = -12,-45
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -1
scale = .6,.6
sprpriority = 3
removeongethit = -1


[State 0, PlaySnd]
type =PlaySnd
trigger1 = animelem = 3
value = S1080,0
channel = 5




[State 0, Explod]
type = Explod
trigger1 = animelem = 3 
anim = 8314
ID = 8313
pos = -10,-52
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 0
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 = animelem = 3 
anim = 8302
ID = 8313
pos = -10,-52
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 0
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1


[State 0, PlaySnd]
type = PlaySnd
trigger1 = (Command != "holdx") && (Command != "holdy")
trigger1 = time >= 100
value = S190,8
channel = 6

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S1080,2
channel = 6


[State 0, ChangeState]
type = ChangeState
trigger1 = (Command != "holdx") && (Command != "holdy")
trigger1 = time < 100
value = stateno+1
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 =(Command != "holdx" ) || (Command != "holdy")
trigger1 = time >= 100
value = stateno+2
ctrl = 0

;-------------------------------------------------------------------------
;Double shot
[Statedef 1085] 
type                    = S
movetype                = A
physics                 = S
anim                    = 1085
ctrl                    = 0
poweradd                = 69
juggle                  = 4
facep2                  = 0
hitdefpersist           = 1
movehitpersist          = 1
hitcountpersist         = 1
sprpriority             = 2

;---------------



;---------------

[State 0: PlaySnd]
type                    = PlaySnd
trigger1                = !Time
value                   = 1080, 3

[State 0: PlaySnd]
type                    = PlaySnd
trigger1                = AnimElem = 2
value                   = 1000, 0

[State 0: PlaySnd]
type                    = PlaySnd
trigger1                = AnimElem = 5
value                   = 1000, 0

;---------------

[State 0: MakeDust]
type                    = MakeDust
trigger1                = AnimElem = 2,>  0 && AnimElem = 2,<  12
pos                     = 0,7
spacing                 = 1

[State 0, VarAdd]
type = VarAdd
trigger1 = Anim = 1085 && AnimElem = 3
trigger2 = Anim = 1085 && AnimElem = 6
v = 13    ;fv =
value = 1
ignorehitpause = 1

[State 0: Explod]
type                    = Explod
trigger1                = AnimElem = 1
anim                    = 8315
ID                      = 7031
pos                     = -8,-50
bindtime                = -1
removetime              = -1
scale                   = .35,.35
sprpriority             = 3
ownpal                  = 1
removeongethit          = 1

[State 0: Explod]
type                    = Explod
trigger1                = AnimElem = 2
anim                    = 8315
ID                      = 7032
pos                     = 3,-73
bindtime                = -1
removetime              = -1
scale                   = .35,.35
sprpriority             = 3
ownpal                  = 1
removeongethit          = 1

[State 0, ]
type = Explod
trigger1 = AnimElem = 3
anim = 8100
ID = 8100
pos = -20,0
facing = 1
scale = 1,1
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 1



[State 0, ]
type = Explod
trigger1 = AnimElem = 6
anim = 8100
ID = 8100
pos = -20,0
facing = 1
scale = 1,1
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 1


[State 0: RemoveExplod]
type                    = RemoveExplod
trigger1                = AnimElem = 2
ID                      = 7031


[State 0: RemoveExplod]
type                    = RemoveExplod
trigger1                = AnimElem = 3
ID                      = 7032



[State 0: Helper]
type                    = Helper
trigger1                = AnimElem = 3
helpertype              = normal
ID                      = 70312
pos                     = 60, -70
stateno                 = 70313
ownpal                  = 1
size.xscale             = .3
size.yscale             = .3

[State 0: Helper]
type                    = Helper
trigger1                = AnimElem = 6
helpertype              = normal
ID                      = 70312
pos                     = 60, -70
stateno                 = 70313
ownpal                  = 1
size.xscale             = .3
size.yscale             = .3

;---------------

[State 0: ChangeState]
type			        = ChangeState
trigger1		        = !AnimTime
value			        = 0
Ctrl                    = 1

;---------------------------------------------------------------------------
;Khh Projectile
[Statedef 1086] 
type                    = S
movetype                = A
physics                 = S
anim                    = 1086
ctrl                    = 0
poweradd                = 69
juggle                  = 4
facep2                  = 0
hitdefpersist           = 1
movehitpersist          = 1
hitcountpersist         = 1
sprpriority             = 2

;---------------

[State 0: VelSet]
type                    = VelSet
trigger1                = AnimElem = 2
x                       = -3

;---------------

[State 0: PlaySnd]
type                    = PlaySnd
trigger1                = !Time
value                   = 1080, 3

[State 0: PlaySnd]
type                    = PlaySnd
trigger1                = AnimElem = 2
value                   = 1090, 1

;---------------

[State 0: MakeDust]
type                    = MakeDust
trigger1                = AnimElem = 2,>  0 && AnimElem = 2,<  12
pos                     = 0,7
spacing                 = 1

[State 0, Explod]
type = Explod
trigger1 = animelem = 1 
anim = 8314
ID = 7031
pos = -10,-52
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 0
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1

[State 0, ]
type = Explod
trigger1 = AnimElem = 2
anim = 8100
ID = 8100
pos = -20,0
facing = 1
scale = 1,1
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 1

[State 0, VarAdd]
type = VarAdd
trigger1 = Anim = 1086 && AnimElem = 2
v = 13    ;fv =
value = 1
ignorehitpause = 1



[State 0: RemoveExplod]
type                    = RemoveExplod
trigger1                = AnimElem = 2
ID                      = 7031





[State 0: Helper]
type                    = Helper
trigger1                = AnimElem = 2
helpertype              = normal
ID                      = 70312
pos                     = 74, -67
stateno                 = 70312
ownpal                  = 1
size.xscale             = .6
size.yscale             = .75

;---------------

[State 0: ChangeState]
type			        = ChangeState
trigger1		        = !AnimTime
value			        = 0
Ctrl                    = 1

;---------------------------------------------------------------------------
;Shokan Idou Assault - Dash Kick (SIA)
[Statedef 1090]
type = S
movetype= A
physics = S
juggle = 4
velset = 0
ctrl = 0
anim = 1090
poweradd = 0;20
sprpriority =2


[State 0, ]
type = PlaySnd
trigger1 = AnimElem = 6
value = 25,0
volume = 255

[State 0, ]
type = PlaySnd
trigger1 = AnimElem = 6 
value = 210,0
volume = 255



[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 3 || animelem = 4 || animelem = 5
x = 3
y = -3


[State 0, VelSet]
type = VelSet
trigger1 = animelem = 6
x = 8.5
y = -.25
;ignorehitpause = 
;persistent = 

[State 0, VelSet]
type = VelSet
trigger1 = movecontact
x = 0


[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = pos y < 0
statetype = A       ;S,A,C,L
movetype = A        ;I,A,H
physics = N        ;A,C,S,N
;ignorehitpause = 
;persistent = 



[State 0, ]
type = Explod
trigger1 = AnimElem = 6 
anim = 8100
ID = 8100
pos = -20,0
facing = 1
scale = 1,1
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 1


[State 0, ]
type = HitDef
trigger1 = !time
attr = A, NA
damage = 75
animtype = Hard
guardflag = MA
hitflag = MA
priority = 3, Hit
pausetime = 8, 10
sparkno = S8001
guard.sparkno = S8020+(random%2)
sparkxy = -20, -66
hitsound = S301, 3
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 0, 1))
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -3
snap = 5,-10
Air.Fall = 0
fall = 0
air.type = High
air.hittime = 15
air.velocity = -6,-3
airguard.velocity = -4,-2
envshake.time           = 10
envshake.freq           = 100
envshake.ampl           = -4
envshake.phase          = 10
kill = 0


[State 0, ChangeAnim]
type = Changestate
trigger1 = movehit
value = 1091
ctrl = 0

[State 0, ]
type = ChangeState
trigger1 = !animtime
value = 50
ctrl = 1

;--------------------------------------------------------------------------
;Shokan Idou Assault - Follow Up Kick (SIA)
[Statedef 1091]
type = S
movetype= A
physics = S
juggle = 4
velset = 0
ctrl = 0
anim = 1091
poweradd = 0;20
sprpriority =2

;-------------------
[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S190,8


[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S50,1


[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S210,6

;--------------------------

[State 1200,6	Fading Afterimage]
type		= helper
trigger1 		= !time
stateno 		= 1003
ID 		= 1003
pos 		= 0,0
ownpal 		= 1
keyctrl		= 0
pausemovetime 	= 99
ignorehitpause	= 1

;--------------------------

[State 0, Turn]
type = Turn
trigger1 = !time



[State 0, PosAdd]
type = PosAdd
trigger1 = !time
x = -99
y = -40

[State 0, Pause]
type = Pause
trigger1 =!time 
time = 7
movetime = 7


[State 0, VelSet]
type = VelSet
trigger1 = animelem = 4
x = 6.5


[State 0, VelSet]
type = VelSet
trigger1 = animelem = 2
x = 3.9
y = .0005

[State 0, VelSet]
type = VelSet
trigger1 = movehit
x = 0
y = .5


[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = pos y < 0
statetype = A       ;S,A,C,L
movetype = A        ;I,A,H
physics = N        ;A,C,S,N
;ignorehitpause = 
;persistent = 

[State 0: BGPalFX]
type                    = BGPalFX
trigger1                = AnimElem = 1, 2
time                    = 2
add                     = 0,0,0
mul                     = 350,256,360
sinadd                  = 0, 0, 0, 1
color                   = 0
invertall               = 1


[State 0, ]
type = HitDef
trigger1 = !time
attr = A, NA
damage = 65
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 12, 9
sparkno = S7034
guard.sparkno = S8020+(random%2)
sparkxy = -15, -46
hitsound = S301, 4
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 0, 1))
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -7,-5
Air.Fall = 1
fall = 1
air.type = High
air.hittime = 15
air.velocity = -6,-3
airguard.velocity = -4,-2
envshake.time           = 10
envshake.freq           = 100
envshake.ampl           = -4
envshake.phase          = 10
down.bounce = 1 
fall.envshake.time = 10
fall.envshake.freq = 190
fall.envshake.ampl = 6


[State 0, ]
type = ChangeState
trigger1 = !animtime
value = 50
ctrl = 1

;--------------------------------------------------------------------------
;Shokan Idou Assault II - Dash Kick (SIAII)
[Statedef 1092]
type = S
movetype= A
physics = S
juggle = 4
velset = 0
ctrl = 0
anim = 1092
poweradd = 0;20
sprpriority =2


[State 0, ]
type = PlaySnd
trigger1 = AnimElem = 6
value = 25,0
volume = 255

[State 0, ]
type = PlaySnd
trigger1 = AnimElem = 6 
value = 210,0
volume = 255



[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 3 || animelem = 4 || animelem = 5
x = 3
y = -3


[State 0, VelSet]
type = VelSet
trigger1 = animelem = 6
x = 8.5
y = -.25
;ignorehitpause = 
;persistent = 


[State 0, VelSet]
type = VelSet
trigger1 = movecontact
x = 0


[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = pos y < 0
statetype = A       ;S,A,C,L
movetype = A        ;I,A,H
physics = N        ;A,C,S,N
;ignorehitpause = 
;persistent = 



[State 0, ]
type = Explod
trigger1 = AnimElem = 6 
anim = 8100
ID = 8100
pos = -20,0
facing = 1
scale = 1,1
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 1


[State 0, ]
type = HitDef
trigger1 = !time
attr = A, NA
damage = 25
animtype = Hard
guardflag = MA
hitflag = MA
priority = 3, Hit
pausetime = 8, 10
sparkno = S8001
guard.sparkno = S8020+(random%2)
sparkxy = -20, -66
hitsound = S301, 3
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 0, 1))
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -3
snap = 5,-2
Air.Fall = 0
fall = 0
air.type = High
air.hittime = 15
air.velocity = -6,-3
airguard.velocity = -4,-2
envshake.time           = 10
envshake.freq           = 100
envshake.ampl           = -4
envshake.phase          = 10
kill = 0

[State 0, ChangeAnim]
type = Changestate
trigger1 = movehit
value = 1093
ctrl = 0

[State 0, ]
type = ChangeState
trigger1 = !animtime
value = 50
ctrl = 1

;--------------------------------------------------------------------------
;Super Spin Kick
[Statedef 1093]
type = S
movetype= A
physics = S
juggle = 4
velset = 0
ctrl = 0
anim = 1093
poweradd = 0;20
sprpriority =2

;-------------------
[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S190,8


[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S50,1


[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S210,6

;--------------------------

[State 1200,6	Fading Afterimage]
type		= helper
trigger1 		= !time
stateno 		= 1003
ID 		= 1003
pos 		= 0,0
ownpal 		= 1
keyctrl		= 0
pausemovetime 	= 99
ignorehitpause	= 1

;--------------------------

[State 0, Turn]
type = Turn
trigger1 = !time



[State 0, PosAdd]
type = PosAdd
trigger1 = !time
x = -99
y = -40

[State 0, Pause]
type = Pause
trigger1 =!time 
time = 7
movetime = 7


[State 0, VelSet]
type = VelSet
trigger1 = animelem = 4
x = 6.5


[State 0, VelSet]
type = VelSet
trigger1 = animelem = 2
x = 3.9
y = .0005

[State 0, VelSet]
type = VelSet
trigger1 = movehit
x = 0
y = .5


[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = pos y < 0
statetype = A       ;S,A,C,L
movetype = A        ;I,A,H
physics = N        ;A,C,S,N
;ignorehitpause = 
;persistent = 

[State 0: BGPalFX]
type                    = BGPalFX
trigger1                = AnimElem = 1, 2
time                    = 2
add                     = 0,0,0
mul                     = 350,256,360
sinadd                  = 0, 0, 0, 1
color                   = 0
invertall               = 1


[State 0, ]
type = HitDef
trigger1 = !time
attr = A, NA
damage = 55
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 9, 9
sparkno = S7034
guard.sparkno = S8020+(random%2)
sparkxy = -15, -46
hitsound = S301, 4
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 0, 1))
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -7,-5
Air.Fall = 1
fall = 1
air.type = High
air.hittime = 15
air.velocity = -6,-3
airguard.velocity = -4,-2
envshake.time           = 10
envshake.freq           = 100
envshake.ampl           = -4
envshake.phase          = 10
down.bounce = 1 
fall.envshake.time = 10
fall.envshake.freq = 190
fall.envshake.ampl = 6


[State 0, ChangeAnim]
type = Changestate
trigger1 = movehit && !animtime
value = stateno+1
ctrl = 0


[State 0, ]
type = ChangeState
trigger1 = !animtime && !movehit
value = 50
ctrl = 1
;----------------------------------------------------------------------------------
;Shokan Idou Assault II - Punch down
[Statedef 1094]
type = S
movetype= A
physics = S
juggle = 4
velset = 0
ctrl = 0
anim = 1094
poweradd = 0;20
sprpriority =2

;-------------------
[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S190,8


[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S50,1


[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S210,4

;--------------------------

[State 1200,6	Fading Afterimage]
type		= helper
trigger1 		= !time
stateno 		= 1003
ID 		= 1003
pos 		= 0,0
ownpal 		= 1
keyctrl		= 0
pausemovetime 	= 99
ignorehitpause	= 1

;--------------------------

[State 0, Turn]
type = Turn
trigger1 = !time



[State 0, PosAdd]
type = PosAdd
trigger1 = !time
x = -105
y = -30

[State 0, Pause]
type = Pause
trigger1 =!time 
time = 7
movetime = 7

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 4
x = 6.5


[State 0, VelSet]
type = VelSet
trigger1 = animelem = 2
x = 2.9
y = 1

[State 0, VelSet]
type = VelSet
trigger1 = movehit
x = 0
y = .5


[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = pos y < 0
statetype = A       ;S,A,C,L
movetype = A        ;I,A,H
physics = N        ;A,C,S,N
;ignorehitpause = 
;persistent = 

[State 0: BGPalFX]
type                    = BGPalFX
trigger1                = AnimElem = 1, 2
time                    = 2
add                     = 0,0,0
mul                     = 350,256,360
sinadd                  = 0, 0, 0, 1
color                   = 0
invertall               = 1


[State 0, ]
type = HitDef
trigger1 = !time
attr = A, NA
damage = 50
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 12, 9
sparkno = S7034
guard.sparkno = S8020+(random%2)
sparkxy = 25, -26
hitsound = S301, 4
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 0, 1))
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -7,-5
Air.Fall = 1
fall = 1
air.type = High
air.hittime = 15
air.velocity = -6,6
airguard.velocity = -4,-2
envshake.time           = 10
envshake.freq           = 100
envshake.ampl           = -4
envshake.phase          = 10
down.bounce = 1 
fall.envshake.time = 10
fall.envshake.freq = 190
fall.envshake.ampl = 6



[State 0, ]
type = ChangeState
trigger1 = !animtime 
value = 50
ctrl = 1
;----------------------------------------------------------------------------------
;Dash Burst
[Statedef 1100]
type    = S
movetype= I
physics = S
anim = 100
ctrl = 0
poweradd = 0
sprpriority = -1

[State 0, PowerAdd]
type = PowerAdd
triggerall = !time
trigger1 = Prevstateno = [200,219]
trigger2 = Prevstateno = [400,419]
trigger2 = Prevstateno = 1300
value = -1000

[State 0, PalFXWiz]
type = PalFX
triggerall = !time
trigger1 = Prevstateno = [200,219]
trigger2 = Prevstateno = [400,419]
trigger2 = Prevstateno = 1300
time = 10
add = 256,0,0
mul = 256,256,256
sinadd = -256,0,0,40
invertall = 0
color = 256
;ignorehitpause = 0
;persistent = 1


[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = pos Y < 0
statetype = A       ;S,A,C,L
movetype = I        ;I,A,H
physics = A         ;A,C,S,N
;ignorehitpause =
;persistent =


[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = prevstateno = 100 && !Time
value = 100
elem = 2
;ignorehitpause =
;persistent =

[State 0, AfterImage]
type = AfterImage
trigger1 = !time
time = 20
length = 5
palbright = 10,10,10
palcontrast = 120,120,120
paladd = 0,0,0
palmul = 1,1,1
timegap = 1
framegap = 1
trans = Add

;-------------------------
[State 0, Explod]
type = Explod
trigger1 = (time%4)=0
anim =8221
ID = 8100
pos = -15,-15
bindtime = 99
random = 5,15
scale = .5-((random%5)/10),1
sprpriority = 0
removetime = 5
ownpal = 1
removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 = (time%6)=0
anim =8221
ID = 8101
pos = -5,-30
bindtime = 99
random = 5,15
scale = .5-((random%5)/10),1
sprpriority = 0
removetime = 5
ownpal = 1
removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 = (time%3)=0
anim =8221
ID = 8102
pos = 5,-45
bindtime = 99
random = 5,15
scale = .5-((random%5)/10),1
sprpriority = 0
removetime = 5
ownpal = 1
removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 = (time%5)=0
anim =8221
ID = 8103
pos = 15,-60
bindtime = 99
random = 5,15
scale = .5-((random%5)/10),1
sprpriority = 0
removetime = 5
ownpal = 1
removeongethit = 1
;--------------------------

[State 0, Helper]
type = Helper
trigger1 = !time
helpertype = normal ;player
name = "flamesside"
ID = 8301
stateno = 8001
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999
pausemovetime = 999

[State 0, ]
type = Explod
triggerall = pos Y >= 0
trigger1 = AnimElem = 2
anim = 8100
ID = 8100
pos = -20,0
facing = 1
scale = 1.3,1.3
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 1

[State 0, ]
type = PlaySnd
trigger1 = !time
value = 2000,0
channel = 0

[State 0, ]
type = PlaySnd
trigger1 = !time
value = 100,0
channel = 1

[State 0, PlayerPush]
type = PlayerPush
trigger1 =AnimElem = 2,>=1
value = 0
ignorehitpause = 1
;persistent =

[State 0, ]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
;ignorehitpause = 0
;persistent = 1

[State ****: VelSet]
type = VelSet
trigger1 = AnimELem = 2,>1
x = const(velocity.run.fwd.x)*2
;y = 0

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = Pos Y < 0
statetype = A       ;S,A,C,L
physics = A         ;A,C,S,N
;ignorehitpause =
;persistent =

[State 100, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk
ignorehitpause = 1

[State 100, 3] ;Prevent from turning
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn
ignorehitpause = 1

[State 100, 4]
type = ChangeState
trigger1 = time = 15
value = ifelse(statetype = S,1101,1102)
ctrl = 0

;---------------------------------------------------------------------------
;  Dash Burst End
[Statedef 1101]
type    = S
physics = S
anim = 1101
sprpriority = 1

[State 0, Turn]
type = Turn
trigger1 = P2Dist X <0

[State 0, VelMul]
type = VelMul
trigger1 = 1
x = .8
y = 1

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1
ignorehitpause = 1
;persistent =

[State 0, ]
type = Explod
trigger1 = AnimElem = 1
anim = 8100
ID = 8100
pos = 25-(vel X<0)*50,0
facing = -1+(vel X<0)*2
scale = 1,1
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 1

[State 0, ]
type = PlaySnd
trigger1 = !time
value = 52,0

[State 0, PosSet]
type = PosSet
trigger1 = !time
y = 0

[State 100, 4]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
;---------------------------------------------------------------------------


; Dash Burst End AIR
[Statedef 1102]
type    = A
physics = A
anim = 1102
sprpriority = 1
ctrl = 1


[State 0, VelMul]
type = VelMul
trigger1 = 1
x = .8
y = 1


[State 0, Turn]
type = Turn
trigger1 = P2Dist X <0
;ignorehitpause =
;persistent =

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1
ignorehitpause = 1
;persistent =

;-------------------------------------------------------------------------
;ki blast weak
[StateDef 1300]
type = S
movetype= A
physics = N
juggle = 6
velset = 0,0
ctrl = 0
anim = 1300
poweradd = 0
sprpriority = 2

[State 0, PowerAdd]
type = PowerAdd
trigger1 = AnimElem = 3
value = -150
ignorehitpause =  1
;persistent =

[State 0, VarAdd]
type = VarAdd
trigger1 = Anim = 1300 && AnimElem = 3
trigger2 = Anim = 1301 && AnimElem = 3
v = 13    ;fv =
value = 1
ignorehitpause = 1
;persistent =

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S1000,1
volume = 255
channel = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S210,1+(random%3)
volume = 255
channel = 2

[State 0, ]
type = Explod
trigger1 = AnimElem = 2
anim = 8100
ID = 8100
pos = -20,0
facing = 1
scale = 1,1
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 1

[State 0, PalFX]
type = PalFX
trigger1 = AnimElem = 3,1
time = 10
add = 128,128,128
mul = 256,256,456
sinadd = -128,-128,-128,40

[State 0, Helper]
type = Helper
trigger1 = anim = 1300 && AnimElem = 3
helpertype = normal
name = "Kiblast weak"
ID = 1310
stateno = 1310
pos = 78,-76
postype = p1
facing = 1
ownpal = 1
size.xscale = .15
size.yscale = .15

[State 0, Helper]
type = Helper
trigger1 = anim = 1301 && AnimElem = 4
helpertype = normal
name = "Kiblast weak"
ID = 1310
stateno = 1310
pos = 74,-76
postype = p1
facing = 1
ownpal = 1
size.xscale = .15
size.yscale = .15



[State 0, ChangeAnim]
type = ChangeAnim
triggerall = command = "x" && var(13) < 4
trigger1 = anim = 1300 && AnimElem = 3,>7
value = 1301
elem = 2
ignorehitpause = 1

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = command = "x" && var(13) < 4
trigger1 = anim = 1301 && AnimElem = 4,>7
value = 1300
elem = 1
ignorehitpause = 1


[State 0, ChangeState]
type = ChangeState
trigger1 =!AnimTime
value = ifelse(power <= 0,9020,0)
ctrl = ifelse(power <= 0,0,1)

;--------------------------------------------------------------------------
;ki blast weak AIR
[StateDef 1305]
type = A
movetype= A
physics = A
juggle = 2
;velset = 0,0
ctrl = 0
anim = 1320
poweradd = 0
sprpriority = 2

[State 0, VelMul]
type = VelMul
trigger1 = time < 12
x = .8
y = .8
;ignorehitpause =
;persistent =

[State 0, VelSet]
type = VelSet
trigger1 = AnimElem = 2, 1
y = -3.5
;ignorehitpause =
;persistent =

[State 0, PowerAdd]
type = PowerAdd
trigger1 = AnimElem = 2
value = -150
ignorehitpause =  1
;persistent =

[State 0, VarAdd]
type = VarAdd
trigger1 = Anim = 1320 && AnimElem = 2
trigger2 = Anim = 1321 && AnimElem = 2
v = 13    ;fv =
value = 1
ignorehitpause = 1
;persistent =

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S1000,1
volume = 255
channel = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S210,1+(random%3)
volume = 255
channel = 2

[State 0, BGPalFX]
type = PalFX
trigger1 = AnimElem = 2,1
time = 10
add = 128,128,128
mul = 256,256,456
sinadd = -128,-128,-128,40

[State 0, Helper]
type = Helper
trigger1 = anim = 1320 && AnimElem = 2
helpertype = normal
name = "Kiblast weak AIR"
ID = 1315
stateno = 1315
pos = 39,-59
postype = p1
facing = 1
ownpal = 1
size.xscale = .15
size.yscale = .15

[State 0, Helper]
type = Helper
trigger1 = anim = 1321 && AnimElem = 2
helpertype = normal
name = "Kiblast weak AIR"
ID = 1315
stateno = 1315
pos = 19,-47
postype = p1
facing = 1
ownpal = 1
size.xscale = .20
size.yscale = .20

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = Power > 0 && command = "b" && var(13) < 7
trigger1 = anim = 1320 && AnimElem = 2,>5
value = 1321
elem = 1
ignorehitpause = 1

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = Power > 0 && command = "b" && var(13) < 7
trigger1 = anim = 1321 && AnimElem = 2,>5
value = 1320
elem = 1
ignorehitpause = 1


[State 0, ChangeState]
type = ChangeState
trigger1 =!AnimTime
value = 50
ctrl = 0
;--------------------------------------------------------------------------
;ki blast - hard
[StateDef 1350]
type = S
movetype= A
physics = S
juggle = 2
velset = 0,0
ctrl = 0
anim = 1350
poweradd = -250
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = (Anim = 1350 && AnimElem = 1)
value = S210,8
volume = 255
channel = 3

[State 40, 5]
type = VelSet
trigger1 = (var(5) = 0) && (!AnimTime) && (prevstateno = 100) && (sysvar(1) = 1)
x = const(velocity.runjump.fwd.x)

;Generated by Fighter Factory PalFX Editor
[State 0, PalFXWiz]
type = PalFX
triggerall = Anim = 1350
trigger1 = (time%5)=0
time = 5
add = -50,-50,-50
mul = 300,300,300
sinadd = 50,50,50,5
invertall = 0
color = 256
;ignorehitpause = 0
;persistent = 1

[State 0, VarSet]
type = VarSet
trigger1 = !time
v = 20
value = 0

[State 0, ]
type = Explod
trigger1 = (Anim = 1351) && (AnimElem = 2)
anim = 8100
ID = 8100
pos = -20,0
facing = 1
scale = 1,1
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = Anim = 1350
trigger1 = (time%15)=0
anim = 8140
ID =   8140
pos = 0,10
facing = -1+(random%2)*2
scale = 1, 1
postype = p1
bindtime = 1
sprpriority = -1
ownpal = 1
removetime = -2
supermovetime = 999
pausemovetime = 999
ontop = 0

[State 0, Explod]
type = Explod
trigger1 = Anim = 1350
trigger1 = (time%30)=0
anim = 8141
ID =   8141
pos = 0,0
facing = -1+(random%2)*2
scale = .7, .7
postype = p1
bindtime = 1
sprpriority = 4
ownpal = 1
removetime = -2
supermovetime = 999
pausemovetime = 999
ontop = 0


[State 0, VarAdd]
type = VarAdd
trigger1 = (Anim = 1350) && (AnimElem = 2,>=20) && (command = "holdy")
v = 20
value = 1

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = Anim = 1350 && AnimElemTime(2) >= 20-(prevstateno = 1300)*5
trigger1 = command != "holdy"
trigger2 = var(20) >= 35
value = 1351

[State 0, PowerAdd]
type = PowerAdd
triggerall = var(20)
trigger1 = (Anim = 1350) && (AnimElem = 2,>=20) && (command = "holdy")
value = -10


[State 0, Helper]
type = Helper
trigger1 = Anim = 1350 && AnimElem = 1
helpertype = normal
name = "electriccharge"
ID = 1320
stateno = 1320
pos = -10,-110
postype = p1
facing = 1
ownpal = 1
size.xscale = 1
size.yscale = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = (Anim = 1351 && AnimElem = 1)
value = S210,6
volume = 255
channel = 3

[State 0, PalFX]
type = PalFX
trigger1 = (Anim = 1351 && AnimElem = 2)
time = 10
add = 128,128,128
mul = 256,256,456
sinadd = -128,-128,-128,40


[State 0, Helper]
type = Helper
trigger1 = (Anim = 1351 && AnimElem = 2)
helpertype = normal
name = "Kiblast Strong"
ID = 1330
stateno = 1330
pos = 55,-64
postype = p1
facing = 1
ownpal = 1
size.xscale = .35
size.yscale = .35

[State 0, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = ifelse(power <= 0,9020,0)
ctrl = ifelse(power <= 0,0,1)

;--------------------------------------------------------------------------
;Power up start
[StateDef 2000]
type = S
movetype= I
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 2000
poweradd = 0;0
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2,1
value = S2000,0
volume = 255
channel = 1


[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1,1
value = S210,6
volume = 255
channel = 3

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 2,1
anim = 8140
ID =   8140
pos = 0,0
scale = 1, 1
postype = p1
bindtime = 1
sprpriority = -1
ownpal = 1
removetime = -2
supermovetime = 999
pausemovetime = 999
ontop = 0

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 2,1
anim = 8141
ID =   8141
pos = 0,0
scale = 1.3, 1.3
postype = p1
bindtime = 1
sprpriority = 4
ownpal = 1
removetime = -2
supermovetime = 999
pausemovetime = 999
ontop = 0

[State 0, Helper]
type = Helper
trigger1 = AnimElem = 2,1
helpertype = normal ;player
name = "Shockwave"
ID = 8200
stateno = 8200
pos = 0,-40
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999
pausemovetime = 999



[State 0, ChangeState]
type = ChangeState
trigger1 = AnimElem = 2,5
value = 2001
ctrl = 0

;--------------------------------------------------------------------------
;Powering up
[StateDef 2001]
type = S
movetype= I
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 2002
poweradd = 0;0
sprpriority = 2

[State 0, BGPalFX]
type = BGPalFX
triggerall = PalNo = [1,6]
trigger1 = (time%10)=0
time = 10
add = -32,-32,-16
mul = 256,256,192
sinadd = 32,32,16,5

[State 0, BGPalFX]
type = PalFX
triggerall = PalNo = [1,6]
trigger1 = (time%10)=0
time = 10
add = 64,64,0
mul = 256,256,256
sinadd = 128,128,64,5

[State 0, BGPalFX]
type = BGPalFX
triggerall = PalNo = [7,9]
trigger1 = (time%10)=0
time = 10
sinadd = 32,32,32,5

[State 0, BGPalFX]
type = PalFX
triggerall = PalNo = [1,9]
trigger1 = (time%10)=0
time = 10
add = 0,0,0
mul = 256,256,256
sinadd = 64,64,64,5

[State 0, Explod]
type = Explod
trigger1 = (time%15)=0
anim = 8140
ID =   8140
pos = 0,10
facing = -1+(random%2)*2
scale = 1, 1
postype = p1
bindtime = 1
sprpriority = -1
ownpal = 1
removetime = -2
supermovetime = 999
pausemovetime = 999
ontop = 0

[State 0, Explod]
type = null; Explod
triggerall = random = [1,333]
trigger1 = (time%20)=0
anim = 8141
ID =   8141
pos = 0,0
facing = -1+(random%2)*2
scale = 1,1
postype = p1
bindtime = 1
sprpriority = 4
ownpal = 1
removetime = -2
supermovetime = 999
pausemovetime = 999
ontop = 0

[State 0, Explod]
type = null; Explod
triggerall = random = [334,666]
trigger1 = (time%20)=0
anim = 8141
ID =   8141
pos = 0,0
facing = -1+(random%2)*2
scale = .8,.8
postype = p1
bindtime = 1
sprpriority = 4
ownpal = 1
removetime = -2
supermovetime = 999
pausemovetime = 999
ontop = 0

[State 0:		Helper]
type			        = Helper
Triggerall              = Power >= 200
trigger1		        = (Time > 20) && ((GameTime%10) = 0) && (Random < 249) && (NumHelper(8300) < 5)
helpertype		        = Normal
name			        = "Rock000"
id			            = 8300
pos			            = 0,0
postype		            = p1
facing		            = 0
stateno		            = 8201
ownpal		            = 1
size.xscale		        = (IfElse(Random <= 799,0.75,3))
size.yscale		        = (IfElse(Random <= 799,0.75,3))

[State 0:		Helper]
type			        = Helper
Triggerall              = Power >= 200
trigger1		        = (Time > 20) && ((GameTime%20) = 0) && (Random > 749) && (NumHelper(8310) < 5)
helpertype		        = Normal
name			        = "Rock001"
id			            = 8310
pos			            = 0,0
postype		            = p1
facing		            = 0
stateno		            = 8202
ownpal		            = 1
size.xscale		        = (IfElse(Random <= 499,0.75,0.50))
size.yscale		        = (IfElse(Random <= 499,0.75,0.50))

[State 0:		Helper]
type			        = Helper
Triggerall                           = Power >= 200
trigger1		        = (Time > 20) && ((GameTime%30) = 0) && (Random = [249,749]) && (NumHelper(8320) < 5)
helpertype		        = Normal
name			        = "Rock002"
id			            = 8320
pos			            = 0,0
postype		            = p1
facing		            = 0
stateno		            = 8220
ownpal		            = 1
size.xscale		        = (IfElse(Random <= 499,0.50,0.75))
size.yscale		        = (IfElse(Random <= 499,0.50,0.75))

[State 0, Explod]
type = Explod
triggerall = random = [667,999]
trigger1 = (time%20)=0
anim = 8141
ID =   8141
pos = 0,0
facing = -1+(random%2)*2
scale = .6,.6
postype = p1
bindtime = 1
sprpriority = 4
ownpal = 1
removetime = -2
supermovetime = 999
pausemovetime = 999
ontop = 0

[State 0, PowerAdd]
type = PowerAdd
trigger1 = time < 60
value = 13

[State 0, PowerAdd]
type = PowerAdd
trigger1 = time = [60,119]
value = 15

[State 0, PowerAdd]
type = PowerAdd
trigger1 = time  = [120,179]
value = 18

[State 0, PowerAdd]
type = PowerAdd
trigger1 = time >= 180
value = 24



[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 120
value = S2001,2
volume = 255
channel = 3



[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S700,1
volume = 255
channel = 7
loop = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S700,2
volume = 255
channel = 11
loop = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S700,3
volume = 255
channel = 12
loop = 1



[State 0: Helper]
type                    = Helper
trigger1                = time = 0
helpertype              = normal
ID                      = 8000
pos                     = ifelse(random>500,3,ifelse(random>500,-5,15)),0
postype                 = p1
facing                  = 1
stateno                 = 8000
ownpal                  = 1
size.xscale             = .7
size.yscale             = .7
supermovetime = 999
pausemovetime = 999




[State 0:       EnvShake]
type 			        = EnvShake
trigger1 		        = (TimeMod = 10, 0)
time 			        = 10
freq 			        = 70
ampl 			        = 7

[State 0, ChangeState]
type = ChangeState
triggerall = time > 20
trigger1 = (command != "holda") && (command != "holdb") || (Power >= 5000)
Value = 0
ctrl = 1

;--------------------------------------------------------------------------
;Zanzoken - Start
[StateDef 2100]
type = S
movetype= I
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 100
poweradd = ifelse((prevstateno =[200,212]),-1000,-500)
sprpriority = 2

[State 0, VarAdd]
type = VarAdd
trigger1 = !time && var(3) <= 2
v = 3
value = 2

[State 0, Helper]
type = Helper
trigger1 = !time
helpertype = normal ;player
name = "afterimage"
ID =8211
stateno = 8211
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999
pausemovetime = 999

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = !time
flag = invisible
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S2100,0
volume = 255


[State 0, ChangeState]
type = ChangeState
trigger1 = time = 1
value =  2101
ctrl = 0

;--------------------------------------------------------------------------
;zanzoken dissapear!
[StateDef 2101]
type = S
movetype= I
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 2101
poweradd = 0;0
sprpriority = 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 0, Helper]
type = Helper
trigger1 = !time
helpertype = normal ;player
name = "linezanzouken"
ID =8210
stateno = 8210
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999
pausemovetime = 999

[State 0, PosSet]
type = PosSet
trigger1 = Pos Y >= 0
y = 0

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 0, Pause]
type = Pause
trigger1 = P2MoveType = H
time = 5
movetime = 5

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 =Pos Y < 0
statetype = A
movetype = A
physics = N

[State 0, PosSet]
type = PosSet
trigger1 = !time && numtarget
x = ifelse(  facing = -1,(target, pos X-20), (target, pos X+20)  )
y = target, pos Y

[State 0, PosSet]
type = PosSet
trigger1 = !time && !numtarget
x = ifelse(  facing = -1,(enemynear, pos X-20), (enemynear, pos X+20)  )
y = enemynear, pos Y

[State 0, VelSet]
type = VelSet
trigger1 = 1
x = 1
y = 0

[State 0, ChangeState - idle]
type = ChangeState
trigger1 = !AnimTime; && command = "holddown"
value =  2105
ctrl = 1


;--------------------------------------------------------------------------
;Zanzoken attack - Start
[StateDef 2110]
type = S
movetype= I
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 100
poweradd = -500
sprpriority = 2

[State 0, VarAdd]
type = VarAdd
trigger1 = !time && var(3) <= 2
v = 3
value = 1

[State 0, Helper]
type = Helper
trigger1 = !time
helpertype = normal ;player
name = "afterimage"
ID =8211
stateno = 8211
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999
pausemovetime = 999

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = !time
flag = invisible
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S2100,0
volume = 255
channel = 6

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 1
value =  2111
ctrl = 0

;--------------------------------------------------------------------------
;zanzoken attack - dissapear!
[StateDef 2111]
type = S
movetype= I
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 2101
poweradd = 0;0
sprpriority = 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 0, Helper]
type = Helper
trigger1 = !time
helpertype = normal ;player
name = "linezanzouken"
ID =8210
stateno = 8210
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999
pausemovetime = 999

[State 0, PosSet]
type = PosSet
trigger1 = Pos Y >= 0
y = 0

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 0, Pause]
type = Pause
trigger1 = P2MoveType = H
time = 15
movetime = 15

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 =Pos Y < 0
statetype = A
movetype = A
physics = N

[State 0, PosSet]
type = PosSet
trigger1 = !time && numtarget
x = ifelse(  facing = -1,(target, pos X-20), (target, pos X+20)  )
y = target, pos Y

[State 0, PosSet]
type = PosSet
trigger1 = !time && !numtarget
x = ifelse(  facing = -1,(enemynear, pos X-20), (enemynear, pos X+20)  )
y = enemynear, pos Y

[State 0, VelSet]
type = VelSet
trigger1 = 1
x = 1
y = 0

[State 0, ChangeState - Attack]
type = ChangeState
trigger1 = !AnimTime
value =  2112+(var(3)-1)
ctrl = 0

;--------------------------------------------------------------------------
;Zanzoken Attack 1
[StateDef 2112]
type = U
movetype= A
physics = U
juggle = 1
velset = 0,0
ctrl = 0
anim = 2112
poweradd = 0;0
sprpriority = 2

[State 0, Turn]
type = Turn
trigger1 = !time

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 0, ]
type = PlaySnd
trigger1 = !time
value = 2100,1
volume = 255
channel = 1



[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = 200,3
volume = 255
channel = 2


[State 0, Helper]
type = Helper
trigger1 = movehit = 1
helpertype = normal ;player
name = "Shockwave"
ID = 8200
stateno = 8200
pos = 0,-55
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent = 0

[State 0, ]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage = 48, 9
animtype = Hard
guardflag = MA
hitflag = MAFD
priority = 3, Hit
pausetime = 15, 15
sparkno = S8030+(random%5)
guard.sparkno = S8020+(random%2)
sparkxy = -10, -55
hitsound = S203, 1
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 1, 2))
ground.type = Low
ground.slidetime = 35
ground.hittime  = 35
ground.velocity = -14,-7
p2stateno = 6000
Fall = 1
air.type = Low
air.hittime = 35
air.velocity = -14,-7
airguard.velocity = -4.5,0
getpower = 0;30
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6
yaccel = .4

[State 0, ]
type = ChangeState
trigger1 = !AnimTime
value = 0+(statetype=A)*50
ctrl = 1

;--------------------------------------------------------------------------
;Zanzoken Attack 2
[StateDef 2113]
type = U
movetype= A
physics = U
juggle = 0
velset = 0,0
ctrl = 0
anim = 2113
poweradd = 0;0
sprpriority = 2

[State 0, Turn]
type = Turn
trigger1 = !time

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 0, ]
type = PlaySnd
trigger1 = !time
value = 2100,3
volume = 255
channel = 1

[State 0, ]
type = PlaySnd
trigger1 = !time && random < 800
value = 4,16
volume = 255
channel = 2

[State 0, Helper]
type = Helper
trigger1 = movehit = 1
helpertype = normal ;player
name = "Shockwave"
ID = 8200
stateno = 8200
pos = 0,-66
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent = 0

[State 0, ]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
damage = 48, 9
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 15, 15
sparkno = S8030+(random%5)
guard.sparkno = S8020+(random%2)
sparkxy = -10, -66
hitsound = S203, 1
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 1, 2))
ground.type = High
ground.slidetime = 35
ground.hittime  = 35
ground.velocity = -14,-14
p2stateno = 6000
Fall = 1
air.type = High
air.hittime = 35
air.velocity = -14,-14
airguard.velocity = -4.5,0
getpower = 0;30
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6
yaccel = .4

[State 0, ]
type = ChangeState
trigger1 = !AnimTime
value = 0+(statetype=A)*50
ctrl = 1

;--------------------------------------------------------------------------
;Zanzoken Attack 3
[StateDef 2114]
type = U
movetype= A
physics = U
juggle = 0
velset = 0,0
ctrl = 0
anim = 2114
poweradd = 0;0
sprpriority = 2

[State 0, Turn]
type = Turn
trigger1 = !time

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 0, ]
type = PlaySnd
trigger1 = !time
value = 2100,2
volume = 255
channel = 1

[State 0, ]
type = PlaySnd
trigger1 = !time && random < 800
value = 4,16
volume = 255
channel = 2

[State 0, Helper]
type = Helper
trigger1 = movehit = 1
helpertype = normal ;player
name = "Shockwave"
ID = 8200
stateno = 8200
pos = 0,-40
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent = 0

[State 0, ]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage = 55, 11
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 15
sparkno = S8030+(random%5)
guard.sparkno = S8020+(random%2)
sparkxy = -10, -40
hitsound = S203, 1
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 1, 2))
ground.type = High
ground.slidetime = 35
ground.hittime  = 35
ground.velocity = -7,14
p2stateno = 6000
Fall = 1
air.type = High
air.hittime = 35
air.velocity = -7,14
airguard.velocity = -4.5,0
getpower = 0;30
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6
yaccel = .4

[State 0, ]
type = ChangeState
trigger1 = !AnimTime
value = 0+(statetype=A)*50
ctrl = 1


;--------------------------------------------------------------------------
;Zanzoken - Reappear AIR
[StateDef 2105]
type = A
movetype= A
physics = A
juggle = 0
velset = 0,-3
ctrl = 1
anim = 2105
poweradd = 0;0
sprpriority = 2

[State 0, Turn]
type = Turn
trigger1 = !time

[State 0, ChangeState]
type = ChangeState
trigger1 = movetype = H 
value = 50
ctrl = 1


[State 0, ]
type = ChangeState
trigger1 = Pos Y >= 0 
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;Tired
[Statedef 9020]
type = S
physics = S
movetype = H
ctrl = 0

[State 9000, Change Animation]
type = ChangeAnim
trigger1 = !time
value = 5300

[State 0, VarSet]
type = VarSet
trigger1 = !time
v = 2
value = 0

[State 0, VarAdd]
type = VarAdd
trigger1 = 1
v = 2
value = 1

[State 0, VarAdd]
type = VarAdd
trigger1 = command = "x" || command = "y" || command = "z"
v = 2
value = 5

[State 9003, Flash]
type = PalFX
trigger1 =  command = "x" || command = "y" || command = "z"
time = 2
add = 50,50,50
mul = 300,300,300

[State 9000, Next]
type = SelfState
trigger1 = var(2)>= 120
value = 0
ctrl = 1
