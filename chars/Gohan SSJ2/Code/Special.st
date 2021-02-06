;Super Fist - Light
;-----------------
[StateDef 1000]
type = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 1079
sprpriority = 2
poweradd = 20

[state 1020]
type = playsnd
trigger1 = !time
value = 1030,2
volume = 255

[State 0, ]
type = PlaySnd
trigger1 = !time 
value = 1002,0
volume = 255

[state 1020]
type = velset
trigger1 = animelem = 5
x = 5.5
y = -5.1

[state 1020]
type = veladd
trigger1 = animelemtime(5) > 10
y = 0.49
X = 0.9

[State 0: Explod]
type                    = Explod
trigger1                = AnimElem = 5
anim                    = 8440
ID                      = 8440
pos                     = 10,0
bindtime                = 1
scale                   = .5,.7
sprpriority             = 3
ownpal                  = 1
removeongethit          = 1

[State 0:       Dust Right]
type                    = Explod
trigger1                = AnimElem = 5
anim                    = 8100
ID                      = 8100
bindtime                = 1
pos                     = -7,3
removetime              = -2
sprpriority             = 3
ownpal                  = 1
removeongethit          = 0

[State 0, Explod]
type = Explod
trigger1 = Animelem = 5
anim = 7108
ID = 7107
pos = 20,-28
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
supermove=999
pausemove=999
scale = .8,.8
sprpriority = 3
removeongethit = -1

[State 0, ]
type                    = HitDef
trigger1                = !Time
attr                    = A, SA
damage                  = 90
animtype                = up
guardflag               = MA
hitflag                 = MAF
priority                = 5, Hit
pausetime               = 8, 12
sparkno                 = S8000+(random%3)
guard.sparkno           = S8020+(random%2)
sparkxy                 = -12,-70
hitsound                = S301, 3
guardsound              = S400, 0
ground.type             = low
ground.slidetime        = 15
ground.hittime          = 15
ground.velocity         = -1, -9.3
airguard.velocity       = -5, 0
air.type                = low
air.velocity            = -1, -9.3
air.hittime             = 12
getpower                = 20
givepower		      = 0
Fall                    = 1
yaccel		      = 0.5
envshake.time           = 10
envshake.freq           = 100
envshake.ampl           = -4
envshake.phase          = 10

[State 0, ChangeState]
type = ChangeState
triggerall = (Command = "QCF_x") || (Command = "QCF_y")
trigger1 = (AnimElem = 5,> 9 && AnimElem = 6, < 0) && MoveHit
value = 1001
ctrl = 0

[State 0: ChangeState]
type			        = ChangeState
trigger1		        = animelemtime(5) > 0 && Pos y >= 0 
value			        = 52

;-----------------------------------------------------------------
;Super Elbow (Rising Fist second hit)
[statedef 1001]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1081
velset = 0,0

[state 1020]
type = velset
trigger1 = !time
x = 0
y = 0

[state 1020]
type = veladd
trigger1 = animelemtime(4) > 0
y = 0.4

[State 0, PlaySnd]
type = PlaySnd
trigger1 =!time
value = S200,3
volume = 255


[State 0, PlaySnd]
type = PlaySnd
trigger1 =animelem = 2
value = S450,1
volume = 255


[State 0, Explod]
type = Explod
trigger1 = Animelem = 1
anim = 7110
ID = 6196
pos = 15,-48
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
supermove=999
pausemove=999
scale = .5,.5
sprpriority = 3
removeongethit = -1

[State 0, Helper]
type = Helper
trigger1 = movehit
helpertype = normal ;player
name = "Shockwave"
ID = 8200
stateno = 8200
pos = 17,-66
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999
pausemovetime = 999
persistent = 0



[State 0, ]
type                    = HitDef
trigger1                = !Time
attr                    = A, SA
damage                  = 25
animtype                = back
guardflag               = HA
hitflag                 = HAF
priority                = 5, Hit
pausetime               = 8, 12
sparkno                 = S8000+(random%3)
guard.sparkno           = S8020+(random%2)
sparkxy                 = -12,-60
hitsound                = S300, 3
guardsound              = S400, 0
ground.type             = high
ground.slidetime        = 15
ground.hittime          = 15
ground.velocity         = -1.2, 8
airguard.velocity       = -5, 0
air.type                = high
air.velocity            = -19.2, 4
air.hittime             = 22
;p2stateno = 6000
down.bounce = 1
getpower                = 20
givepower		      = 0
Fall                    = 1
yaccel		      = 0.2
envshake.time           = 10
envshake.freq           = 100
envshake.ampl           = -4
envshake.phase          = 10
fall.envshake.time = 10
fall.envshake.freq = 190
fall.envshake.ampl = 6

[State 0: ChangeState]
type			        = ChangeState
trigger1		        = animelemtime(3) > 0 && Pos y >= 0 
value			        = 52
;-------------------------------------------------------------------------------------
;Super Fist - Med
;-----------------
[StateDef 1002]
type = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 1079
sprpriority = 2
poweradd = 20


[state 1020]
type = playsnd
trigger1 = time = 0
value = 1030,3
volume = 255

[State 0, ]
type = PlaySnd
trigger1 = !time && random < 300
value = 1010,0
volume = 255
channel = 2


[state 1020]
type = velset
trigger1 = animelem = 5
x = 7.5
y = -6.3

[state 1020]
type = veladd
trigger1 = animelemtime(5) > 10
y = 0.4556
X = 0.9

[State 0: Explod]
type                    = Explod
trigger1                = AnimElem = 5
anim                    = 8440
ID                      = 8440
pos                     = 10,0
bindtime                = 1
scale                   = .5,.7
sprpriority             = 3
ownpal                  = 1
removeongethit          = 1

[State 0:       Dust Right]
type                    = Explod 
trigger1                = AnimElem = 5
anim                    = 8100
ID                      = 8100
bindtime                = 1
pos                     = -7,3
removetime              = -2
sprpriority             = 3
ownpal                  = 1
removeongethit          = 1

[State 0, Explod]
type = Explod
trigger1 = Animelem = 5
anim = 7108
ID = 7107
pos = 20,-28
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
supermove=999
pausemove=999
scale = .8,.8
sprpriority = 3
removeongethit = -1

[State 0, ]
type                    = HitDef
trigger1                = !Time
attr                    = A, SA
damage                  = 80
animtype                = up
guardflag               = MA
hitflag                 = MA
priority                = 5, Hit
pausetime               = 11, 12
sparkno                 = S8000+(random%3)
guard.sparkno           = S8022+(random%2)
sparkxy                 = -12,-60
hitsound                = S300, 3
guardsound              = S400, 0
ground.type             = low
ground.slidetime        = 15
ground.hittime          = 15
ground.velocity         = -1, -9.3
airguard.velocity       = -5, 0
air.type                = low
air.velocity            = -1, -7.3
air.hittime             = 12
getpower                = 20
givepower		      = 0
Fall                    = 1
yaccel		      = 0.5
envshake.time           = 10
envshake.freq           = 100
envshake.ampl           = -4
envshake.phase          = 10

[State 0, ChangeState]
type = ChangeState
triggerall = (Command = "QCF_x") || (Command = "QCF_y") 
trigger1 = (AnimElem = 5,> 8 && AnimElem = 6, < 0) && MoveHit
value = 1001
ctrl = 0

[State 0: ChangeState]
type			        = ChangeState
trigger1		        = animelemtime(5) > 0 && Pos y >= 0 
value			        = 52

;---------------------------------------------------------------------------
;Super Fist - Hard
;-----------------
[StateDef 1003]
type = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 1079
sprpriority = 2
poweradd = 20


[state 1020]
type = playsnd
trigger1 = time = 0
value = 1030,3
volume = 255

[State 0, ]
type = PlaySnd
trigger1 = !time && random < 300
value = 1011,0
volume = 255
channel = 2


[state 1020]
type = velset
trigger1 = animelem = 5
x = 7.5
y = -9

[state 1020]
type = veladd
trigger1 = animelemtime(5) > 10
y = 0.5
X = .5

[State 0: Explod]
type                    = Explod
trigger1                = AnimElem = 5
anim                    = 8440
ID                      = 8440
pos                     = 10,0
bindtime                = 1
scale                   = .5,.7
sprpriority             = 3
ownpal                  = 1
removeongethit          = 1

[State 0, Explod]
type = Explod
trigger1 = Animelem = 5
anim = 7108
ID = 7107
pos = 20,-28
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
supermove=999
pausemove=999
scale = .8,.8
sprpriority = 3
removeongethit = -1

[State 0:       Dust Right]
type                    = Explod
trigger1                = AnimElem = 5
anim                    = 8100
ID                      = 8100
bindtime                = 1
pos                     = -7,3
removetime              = -2
sprpriority             = 3
ownpal                  = 1
removeongethit          = 1

[State 0, ]
type                    = HitDef
trigger1                = !Time
attr                    = A, SA
damage                  = 115
animtype                = up
guardflag               = MA
hitflag                 = MAF
priority                = 5, Hit
pausetime               = 11, 12
sparkno                 = S8030+(random%5)
guard.sparkno           = S8022+(random%2)
sparkxy                 = -12,-80
hitsound                = S301, 3
guardsound              = S400, 0
ground.type             = low
ground.slidetime        = 15
ground.hittime          = 15
ground.velocity         = -1.8, -10.9
airguard.velocity       = -5, 0
air.type                = low
air.velocity            = -1, -9.3
air.hittime             = 12
getpower                = 20
givepower		      = 0
Fall                    = 1
yaccel		      = 0.5
envshake.time           = 10
envshake.freq           = 100
envshake.ampl           = -4
envshake.phase          = 10
fall.envshake.time = 10
fall.envshake.freq = 190
fall.envshake.ampl = 6

[State 0, ChangeState]
type = ChangeState
triggerall = (Command = "QCF_x") || (Command = "QCF_y")
trigger1 = (AnimElem = 5,> 0 && AnimElem = 6, < 0) && MoveHit
value = 1001
ctrl = 0

[State 0: ChangeState]
type			        = ChangeState
trigger1		        = animelemtime(5) > 0 && Pos y >= 0 
value			        = 52
;---------------------------------------------------------------------------
;Double Phoenix (Light)
;-----------------
[StateDef 1010]
type = A
movetype= A
physics = N
velset = 0,0
ctrl = 0
anim = 1077
sprpriority = 2
poweradd = 20


[State InitVel]
type                    = VelAdd 
trigger1                = animelem = 1
Y                       = -1
X                       = 1.5


[State Accel]
type                    = VelAdd 
trigger1                = animelem = 2,>  8
Y                       = .16


[State 0: StateTypeSet]
type                    = StateTypeSet
trigger1                = AnimElem = 1
statetype               = A

[State 0, ]
type = PlaySnd
trigger1 = animelem = 6 
value = 210,0
volume = 255

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2 
value = 210,2
volume = 255


[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S200,3

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 7
value = S200,4


[State 271, 1]
type = HitDef
trigger1 = animelem = 3
attr = S, SA
damage = 45,1
animtype =  back
guardflag = MA
hitflag = MA
priority = 3, Hit
pausetime = 7, 12
sparkxy = -12, -55
sparkno                 = S8000+(random%3)
guard.sparkno           = S8020+(random%2)
sparkxy                 = -12,-80
hitsound                = S301, 3
guardsound              = S400, 0
ground.type = high
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -2
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -2,-3
air.hittime = 12
envshake.time = 3
envshake.ampl = 4
kill = 0
snap = 20

[State 271, 1]
type = HitDef
trigger1 = animelem = 7
attr = S, SA
damage = 45,1
animtype =  up
guardflag = MA
hitflag = MA
priority = 3, Hit
pausetime = 8, 12
sparkno                 = S8000+(random%3)
guard.sparkno           = S8022+(random%2)
sparkxy                 = -25,-70
hitsound                = S301, 2
guardsound              = S400, 0
ground.slidetime = 5
ground.hittime  = 12
ground.type = high
ground.velocity = -1,-10
airguard.velocity = -1.9,-8
air.type = High
air.velocity = -1,-11
air.hittime = 12
envshake.time = 2
envshake.ampl = 4
kill = 0
fall = 1



[State 0, ]
type                    = ChangeState
trigger1                = !Animtime || animelem = 4,> 0 && Pos Y >= 0
value                   = 50
ctrl                    = 0
;---------------------------------------------------------------------------
;Double Phoenix (Med)
;-----------------
[StateDef 1011]
type = A
movetype= A
physics = N
velset = 0,0
ctrl = 0
anim = 1077
sprpriority = 2
poweradd = 20


[State InitVel]
type                    = VelAdd 
trigger1                = animelem = 1
Y                       = -1.8
X                       = 1.7


[State Accel]
type                    = VelAdd 
trigger1                = animelem = 2,>  8
Y                       = .27


[State 0: StateTypeSet]
type                    = StateTypeSet
trigger1                = AnimElem = 1
statetype               = A

[State 0, ]
type = PlaySnd
trigger1 = animelem = 6 
value = 210,0
volume = 255

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2 
value = 210,2
volume = 255


[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S200,3

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 7
value = S200,4


[State 271, 1]
type = HitDef
trigger1 = animelem = 3
attr = S, SA
damage = 45,5
animtype =  back
guardflag = MA
hitflag = MA
priority = 3, Hit
pausetime = 8, 14
sparkno                 = S8000+(random%3)
guard.sparkno           = S8022+(random%2)
sparkxy                 = -12,-80
hitsound                = S301, 3
guardsound              = S400, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -2
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -2,-2
air.hittime = 12
envshake.time = 3
envshake.ampl = 4
kill = 0
snap = 20

[State 271, 1]
type = HitDef
trigger1 = animelem = 7
attr = S, SA
damage = 45,9
animtype =  up
guardflag = MA
hitflag = MA
priority = 3, Hit
pausetime = 10, 12
sparkno                 = S8000+(random%3)
guard.sparkno           = S8022+(random%2)
sparkxy                 = -12,-80
hitsound                = S301, 3
guardsound              = S400, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -1,-10
airguard.velocity = -1.9,-8
air.type = High
air.velocity = -1.9,-9
air.hittime = 12
envshake.time = 2
envshake.ampl = 4
kill = 0
fall = 1



[State 0, ]
type                    = ChangeState
trigger1                = !Animtime || animelem = 4,> 0 && Pos Y >= 0
value                   = 50
ctrl                    = 0
;---------------------------------------------------------------------------
;Double Phoenix (Heavy)  
;-----------------
[StateDef 1012]
type = A
movetype= A
physics = N
velset = 0,0
ctrl = 0
anim = 1077
sprpriority = 2
poweradd = 20


[State InitVel]
type                    = VelAdd 
trigger1                = animelem = 1
Y                       = -2.4
X                       = 1.2


[State Accel]
type                    = VelAdd 
trigger1                = animelem = 2,>  8
Y                       = .29


[State 0: StateTypeSet]
type                    = StateTypeSet
trigger1                = AnimElem = 1
statetype               = A


[State 0, ]
type = PlaySnd
trigger1 = animelem = 6 
value = 210,0
volume = 255

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2 
value = 210,2
volume = 255


[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S200,3

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 7
value = S200,4


[State 271, 1]
type = HitDef
trigger1 = animelem = 3
attr = S, SA
damage = 65,5
animtype =  back
guardflag = MA
hitflag = MA
priority = 3, Hit
pausetime = 8, 14
sparkxy = -12, -55
sparkno                 = S8030+(random%5)
guard.sparkno           = S8022+(random%2)
sparkxy                 = -12,-80
hitsound                = S301, 3
guardsound              = S400, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -2
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
envshake.time = 10
envshake.ampl = 10
kill = 0
snap = 20

[State 271, 1]
type = HitDef
trigger1 = animelem = 7
attr = S, SA
damage = 65,9
animtype =  back
guardflag = MA
hitflag = MA
priority = 3, Hit
pausetime = 10, 12
sparkno                 = S8030+(random%5)
guard.sparkno           = S8022+(random%2)
sparkxy                 = -25,-70
hitsound                = S301, 2
guardsound              = S400, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -1,-12
airguard.velocity = -1.9,-8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
envshake.time = 10
envshake.ampl = 10
kill = 1
fall = 1


[State 0, ]
type                    = ChangeState
trigger1                = !Animtime || animelem = 4,> 0 && Pos Y >= 0
value                   = 50
ctrl                    = 0
;-------------------------------------------------------------------------
;Super Strike 
[Statedef 1025] 
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


[State 0: PlaySnd]
type                    = PlaySnd
trigger1                = AnimElem = 8
value                   = 1030, 7

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
trigger1 = AnimElem = 6 || animelem = 9
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
ID                      = 70313
pos                     = 60, -47
stateno                 = 70313
ownpal                  = 1
size.xscale             = .25
size.yscale             = .25

[State 0: Helper]
type                    = Helper
trigger1                = AnimElem = 6
helpertype              = normal
ID                      = 70313
pos                     = 60, -47
stateno                 = 70313
ownpal                  = 1
size.xscale             = .25
size.yscale             = .25

;---------------

[State 0: Helper]
type                    = Helper
trigger1                = AnimElem = 9
helpertype              = normal
ID                      = 70312
pos                     = 50, -50
stateno                 = 70312
ownpal                  = 1
size.xscale             = .6
size.yscale             = .4





[State 0: ChangeState]
type			        = ChangeState
trigger1		        = !AnimTime
value			        = 0
Ctrl                    = 1

;---------------------------------------------------------------------------
;Super Duo Strike 
[Statedef 1026]
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



;---------------

[State 0: PlaySnd]
type                    = PlaySnd
trigger1                = !Time
value                   = 1080, 3

[State 0: PlaySnd]
type                    = PlaySnd
trigger1                = AnimElem = 2 || animelem = 5 || animelem = 8 || animelem = 11
value                   = 1000, 0


[State 0: PlaySnd]
type                    = PlaySnd
trigger1                = AnimElem = 14
value                   = 1030, 7

;---------------

[State 0: MakeDust]
type                    = MakeDust
trigger1                = AnimElem = 2,>  0 && AnimElem = 3,<  12
pos                     = 0,7
spacing                 = 1

[State 0, VarAdd]
type = VarAdd
trigger1 = Anim = 1086 && AnimElem = 3 || Anim = 1086 && AnimElem = 6
trigger2 = Anim = 1086 && AnimElem = 9 || Anim = 1086 && AnimElem = 12
v = 13    ;fv =
value = 1
ignorehitpause = 1



[State 0, ]
type = Explod
trigger1 = AnimElem = 3 || animelem = 9
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
trigger1 = AnimElem = 6 || animelem = 12 || animelem = 15
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
ID                      = 70313
pos                     = 60, -47
stateno                 = 70314
ownpal                  = 1
size.xscale             = .25
size.yscale             = .25

[State 0: Helper]
type                    = Helper
trigger1                = AnimElem = 9
helpertype              = normal
ID                      = 70313
pos                     = 60, -47
stateno                 = 70314
ownpal                  = 1
size.xscale             = .25
size.yscale             = .25

[State 0: Helper]
type                    = Helper
trigger1                = AnimElem = 6
helpertype              = normal
ID                      = 70313
pos                     = 60, -47
stateno                 = 70314
ownpal                  = 1
size.xscale             = .25
size.yscale             = .25

[State 0: Helper]
type                    = Helper
trigger1                = AnimElem = 12	
helpertype              = normal
ID                      = 70314
pos                     = 60, -47
stateno                 = 70314
ownpal                  = 1
size.xscale             = .25
size.yscale             = .25

;---------------

[State 0: Helper]
type                    = Helper
trigger1                = AnimElem = 15
helpertype              = normal
ID                      = 70315
pos                     = 50, -50
stateno                 = 70315
ownpal                  = 1
size.xscale             = .6
size.yscale             = .4





[State 0: ChangeState]
type			        = ChangeState
trigger1		        = !AnimTime
value			        = 0
Ctrl                    = 1
;---------------------------------------------------------------------------
;Super Tri Strike 
[Statedef 1027]
type 		        = S
movetype		        = A
physics		        = N
juggle	    	        = 1
anim    		        = 1122
velset		        = 0,0
ctrl		        = 0
poweradd		        = 69
facep2		        = 0
hitdefpersist	        = 0
movehitpersist	        = 0
hitcountpersist	        = 0
sprpriority	        = 2

[State InitVel]
type                    = VelSet
trigger1                = animelem = 2
Y                       = -2.8
X                       = 3

[State InitVel]
type                    = VelSet
trigger1                = animelem = 6
Y                       = -2.8
X                       =  7


[State Accel]
type                    = VelAdd 
trigger1                = animelem = 9,>  0
Y                       = 0.30

[State Accel]
type                    = Velset
trigger1                = animelem = 13,>  7
X                       = 0

[State Accel]
type                    = VelAdd 
trigger1                = animelem = 3,>  0 && animelem = 9,<  0
X                       = -0.1

[State 0: StateTypeSet]
type                    = StateTypeSet
trigger1                = AnimElem = 2
statetype               = A


[State 0, ]
type                    = PlaySnd
trigger1                = !time
value                   = 755, 0

[State 0, ]
type                    = PlaySnd
trigger1                = AnimElem = 2
value                   = 450, 6

[State 0, ]
type                    = PlaySnd
trigger1                = AnimElem = 6
value                   = 25, 1

[State 0, ]
type                    = PlaySnd
trigger1                = AnimElem = 10
value                   = 200, 1

[State 0, ]
type                    = PlaySnd
trigger1                = AnimElem = 9
value                   = 1001, 0


[State 0, Explod]
type = Explod
trigger1 = Animelem = 1
anim = 7110
ID = 6196
pos = 15,-48
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
supermove=999
pausemove=999
scale = .5,.5
sprpriority = 3
removeongethit = -1

[State 0, Explod]
type = Explod
trigger1 = Animelem = 6
anim = 8615
ID = 6196
pos = 45,-78
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
supermove=999
pausemove=999
scale = .9,.9
sprpriority = 3
removeongethit = -1

[State 0, Explod]
type = Explod
trigger1 = Animelemtime(10) = 2
anim = 7105
ID = 6196
pos = 30,-8
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
supermove=999
pausemove=999
scale = .6,.6
sprpriority = 3
removeongethit = -1




[State 0, ]
type                    = HitDef
trigger1                = AnimElem = 3
trigger2                = AnimElem = 6
attr                    = A, SA
damage                  = Ceil(IfElse(Var(15) >= 5, IfElse((30*(24-Var(15)+5)/24) > 0, 30*(24-Var(15)+5)/24,10),30)), 8
animtype                = Heavy
guardflag               = M
hitflag                 = MAF
priority                = 5, Hit
pausetime               = 8, 7
sparkno                 = S8030
guard.sparkno           = S7113
sparkxy                 = 0, -40
hitsound                = S300, 3
guardsound              = S400, 0
ground.type             = low
ground.slidetime        = 20
ground.hittime          = 20
ground.velocity         = -3, -9
airguard.velocity       = -3, -9
air.type                = low
air.velocity            = -3, -6
air.hittime             = 12
getpower                = 27
givepower		        = 0
yaccel		            = 0.6
fall                    = 1
envshake.time           = 10
envshake.freq           = 100
envshake.ampl           = -4
envshake.phase          = 10

[State 0, ]
type                    = HitDef
trigger1                = AnimElem = 10
attr                    = A, SA
damage                  = Ceil(IfElse(Var(15) >= 5, IfElse((40*(24-Var(15)+5)/24) > 0, 40*(24-Var(15)+5)/24,10),40)), 8
animtype                = Heavy
guardflag               = M
hitflag                 = MAF
priority                = 5, Hit
pausetime               = 6, 12
sparkno                 = S8030
guard.sparkno           = S7113
sparkxy                 = 0, -40
hitsound                = S300, 3
guardsound              = S400, 0
ground.type             = low
ground.slidetime        = 20
ground.hittime          = 20
ground.velocity         = -6, 7
airguard.velocity       = -5, 7
air.type                = low
air.velocity            = -6, 7
air.hittime             = 12
getpower                = 27
givepower		        = 0
yaccel		            = 0.8
fall                    = 1
envshake.time           = 10
envshake.freq           = 100
envshake.ampl           = -4
envshake.phase          = 10


[State 0, ]
type                    = ChangeState
trigger1                = AnimElem = 13, > 0 && Pos Y >= 0
value                   = 52
ctrl                    = 0


;------------------------------------------------------------------------
;Sonic Kick - Light
[StateDef 1030]
type = A
movetype= A
physics = A
velset = 0,0
ctrl = 0
anim = 1030
poweradd = 20
sprpriority = 2

[State 0, ]
type = AfterImage
trigger1 = AnimElem = 1
time = 25
length = 6
palbright = 10,10,10
palcontrast = 120,120,120
paladd = 0,0,0
palmul = 1,1,1
timegap = 2
framegap = 2
trans = Add


[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S210,0
volume = 150


[State 730, PlaySnd]
type = PlaySnd
trigger1 =!time
value = S25,0


[State 0, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 9
y = 4

[State 730, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA;,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1


[State 730, Sonic Kick Aura]
type = Helper
trigger1 = animelem = 3
helpertype = normal ;player
name =   "sonic kick aura"
ID =  6060
stateno = 6060
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermove
pausemove
size.xscale = .8
size.yscale = .8
;persistent =

[State 730, VelSet]
type = VelSet
trigger1 = movehit || movecontact
x = -4
y = -4.28

[State 730, 1]
type = HitDef
trigger1 = !time
attr = A, SA
damage = 70,12
animtype = back
guardflag = HA
hitflag = MAF
priority = 3, Hit
pausetime = 7,13
sparkno   = S8000+(random%3)
sparkxy = -15, -26
hitsound = S301, 2
guard.sparkno = S8020+(random%2)
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 1, 2))
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -8
airguard.velocity = -1,-.8
air.type = High
air.velocity = -2.4,3
air.hittime = 12
fall = 0
envshake.time           = 10
envshake.freq           = 100
envshake.ampl           = -4
envshake.phase          = 10
fall.envshake.time = 10
fall.envshake.freq = 190
fall.envshake.ampl = 6

[State 730,3 ChangeState]
type = Changestate
trigger1 = movecontact||movehit
value	= 1034
ctrl = 0
;--------------------------------------------------------------------------------------------------------
;Sonic Kick (Med)
[StateDef 1031]
type = A
movetype= A
physics = A
velset = 0,0
ctrl = 0
anim = 1031
poweradd = 20
sprpriority = 2

[State 0, ]
type = AfterImage
trigger1 = AnimElem = 1
time = 25
length = 6
palbright = 10,10,10
palcontrast = 120,120,120
paladd = 0,0,0
palmul = 1,1,1
timegap = 2
framegap = 2
trans = Add

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S1030,0

[State 730, PlaySnd]
type = PlaySnd
trigger1 = Animelem=2
value = S2000,0


[State 0, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 11
y = 8

[State 1000, Push]
type = playerpush
trigger1 = Movehit 
value = 0
ignorehitpause = 1


[State 1000, width]
type = width
trigger1 = movehit
value = 10
ignorehitpause = 1

[State 730, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA;,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 730, Sonic Kick Aura]
type = Helper
trigger1 = animelem = 3
helpertype = normal ;player
name =   "sonic kick aura"
ID =  6060
stateno = 6060
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 1.02
size.yscale = 1.02
;persistent =

[State 730, VelSet]
type = null; VelSet
trigger1 = movehit || movecontact
x =  -.5
y = -6.3

[State 730, 1]
type = HitDef
trigger1 = !time
attr = A, SA
damage = 95,9 
animtype = back
guardflag = HA
hitflag = MAF
priority = 3, Hit
pausetime = 5,13
sparkno   = S8000+(random%3)
sparkxy = -15, -26
hitsound = S301, 3
guard.sparkno = S8020+(random%2)
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 1, 2))
ground.type = High
ground.slidetime = 12
ground.hittime  = 12
ground.velocity = -1
airguard.velocity = -1,-.8
air.type = High
air.velocity = -4.4,6
air.hittime = 12
fall = 0
yaccel = .5
snap = 10
envshake.time           = 10
envshake.freq           = 100
envshake.ampl           = -4
envshake.phase          = 10
fall.envshake.time = 10
fall.envshake.freq = 190
fall.envshake.ampl = 6

[State 0, ]
type = ChangeState
trigger1 = (Pos Y >= 0) && (Vel Y >= 0) 
value = 52
ctrl = 0
;-------------------------------------------------------------------------
;Sonic Kick (Hard)
[StateDef 1032]
type = A
movetype= A
physics = N
velset = 0,0
ctrl = 0
anim = 1033
poweradd = 20
sprpriority = 2

[State 0, ]
type = AfterImage
trigger1 = AnimElem = 1
time = 25
length = 6
palbright = 10,10,10
palcontrast = 120,120,120
paladd = 0,0,0
palmul = 1,1,1
timegap = 2
framegap = 2
trans = Add


[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S1030,0

[State 730, PlaySnd]
type = PlaySnd
trigger1 = Animelem=2
value = S2000,0


[State 0, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 7
y = 7

[State 1000, Push]
type = playerpush
trigger1 = Movehit 
value = 0
ignorehitpause = 1


[State 1000, width]
type = width
trigger1 = movehit
value = 10
ignorehitpause = 1

[State 730, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA;,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 730, Sonic Kick Aura]
type = Helper
trigger1 = animelem = 3
helpertype = normal ;player
name =   "sonic kick aura"
ID =  6060
stateno = 6060
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermove
pausemove
size.xscale = .8
size.yscale = .8
;persistent =

[State 730, VelSet]
type = null; VelSet
trigger1 = movehit || movecontact
x = -3
y = -6


[State 730, 1]
type = HitDef
trigger1 = !time
attr = A, SA
damage = 75,10
animtype = back
guardflag = HA
hitflag = MAF
priority = 3, Hit
pausetime = 8,12
sparkno  = S8030
sparkxy = -34, -23
hitsound = S750, 3
guard.sparkno = S8020+(random%2)
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 1, 2))
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1,-.8
air.type = High
air.velocity = -2.4,4
air.hittime = 12
fall = 0
snap = 10
envshake.time           = 10
envshake.freq           = 100
envshake.ampl           = -4
envshake.phase          = 10
fall.envshake.time = 10
fall.envshake.freq = 190
fall.envshake.ampl = 6

[State 0, ]
type = ChangeState
trigger1 = (Pos Y >= 0) && (Vel Y >= 0) && movehit 
value = 1033
ctrl = 0

[State 0, ]
type = ChangeState
trigger1 = (Pos Y >= 0) && (Vel Y >= 0) 
value = 52
ctrl = 0

;--------------------------------------------------------------------------------------------------------------------
;Rising Knee
[Statedef 1033]
type 		        = S
movetype		        = A
physics		        = N
juggle	    	        = 1
anim    		        = 1032
velset		        = 0,0
ctrl		        = 0
poweradd		        = 69
facep2		        = 0
hitdefpersist	        = 0
movehitpersist	        = 0
hitcountpersist	        = 0
sprpriority	        = 2


[State 0, Turn]
type = Turn
trigger1 = !time
;ignorehitpause = 
;persistent = 

[State 0, Pause]
type = Pause
trigger1 = !time
time = 4
movetime = 4 


[State InitVel]
type                    = VelAdd 
trigger1                = animelem = 2
Y                       = -7.4
X                       = 5




[State 0: StateTypeSet]
type                    = StateTypeSet
trigger1                = AnimElem = 3
statetype               = A

[State 0, ]
type                    = PlaySnd
trigger1                = !time
value                   = 50, 1



[State 0, ]
type                    = HitDef
trigger1                = animelem = 3
attr                    = A, SA
damage                  = 45,10
animtype                = up
guardflag               = M
hitflag                 = MAF
priority                = 5, Hit
pausetime               = 14, 14
sparkno                 = S7034
guard.sparkno           = S8020
sparkxy                 = -20, -45
hitsound                = S300, 3
guardsound              = S400, 0
ground.type             = low
ground.slidetime        = 20
ground.hittime          = 20
ground.velocity         = -3.5, -12
airguard.velocity       = -3, -1
air.type                = high
air.velocity            = -6, -9
air.hittime             = 12
getpower                = 27
givepower		        = 0
Fall                    = 1
Fall.recover            = 0
yaccel		            = 0.4


[State 0, ]
type                    = ChangeState
trigger1                = Movehit || animelem = 3,>4
value                   = 50
ctrl                    = 0
;------------------------------------------------------------------------
[StateDef 1034, Sonic Kick leap]
type = A
movetype= A
physics = A
juggle = 0
velset = 5,-8
ctrl = 0
anim = 42
poweradd = 0;00
sprpriority = 2


[State 0, CtrlSet]
type = CtrlSet
trigger1 = time = 32
value = 1
persistent = 0

[State 0, Turn]
type = Turn
trigger1 = P2BodyDist X < 10
persistent = 0

[State 50, 3]
type = ChangeAnim
trigger1 = Vel y > -5
trigger1 = SelfAnimExist(anim + 3)
persistent = 0
value = Anim + 3

[State 0, ]
type = ChangeState
trigger1 = (Pos Y >= 0) && (Vel Y >= 0)
value = 52
ctrl = 0
;--------------------------------------------------------------------------
;Super 2 Melee
[Statedef 1050]
type 		= S
movetype		= A
physics		= S
juggle	    	= 1
anim    		= 1070
velset		= 0,0
ctrl	          = 0
poweradd		= 69
facep2		= 0
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority	= 2


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


[State 0: VelSet]
type                    = VelSet
trigger1                = AnimElem = 3
x                       = 15

[State 0, ]
type                    = PlaySnd
trigger1                = AnimElem = 3
value                   = 25,0

[State 0, ]
type                    = MakeDust
trigger1                = AnimElem = 2 > 0 && AnimElem = 4 < 0
pos                     = -5,-2
spacing                 = 4

[State 0:       Dust Right]
type                    = Explod
trigger1                = AnimElem = 3
anim                    = 8100
ID                      = 8100
bindtime                = 1
pos                     = -7,3
removetime              = -2
sprpriority             = 3
ownpal                  = 1
removeongethit          = 0

[State 0, ]
type                    = HitDef
trigger1                = AnimElem = 3
attr                    = S, SA
damage                  = 0, 0
snap                    = 10,0
numhits                 = 0
animtype                = Heavy
guardflag               = M
hitflag                 = MAF
priority                = 5, Hit
pausetime               = 7, 20
sparkno                 = S8030+(random%5)
guard.sparkno           = S8022+(random%2)
sparkxy                 = 20, -40
hitsound                = S300, 3
guardsound              = S400, 0
ground.type             = low
ground.slidetime        = 0
ground.hittime          = 0
ground.velocity         = 0
airguard.velocity       = -3.9,-1
air.type                = low
air.velocity            = 0
air.hittime             = 12
getpower                = 0
givepower		    = 0
envshake.time           = 10
envshake.freq           = 100
envshake.ampl           = -4
envshake.phase          = 10
yaccel		    = 0.5
p1stateno               = 1051

[State 0, ]
type                    = ChangeState
trigger1                = !AnimTime
value                   = 0
ctrl                    = 1

;---------------------------------------------------------------------------
;Mystic Melee - hit
[Statedef 1051]
type 		= S
movetype		= A
physics		= N
juggle	    	= 1
anim    		= 1076
velset		= 0,0
ctrl		= 0
poweradd		= 0
facep2		= 0
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority	= 2

[State 0: PlayerPush]
type                    = PlayerPush
trigger1                = AnimElem = 1
value                   = 0
ignorehitpause          = 1

[State 0, ]
type                    = PlaySnd
trigger1                = AnimElem = 6, 2
trigger2                = AnimElem = 10, 2
value                   = 180, 1

[State 0: Pause]
type                    = Pause
trigger1                = AnimElem = 6, 2
trigger2                = AnimElem = 10, 2
time                    = 2
movetime                = 2

[State 0: PosAdd]
type                    = PosAdd
trigger1                = AnimElem = 6, 2
trigger2                = AnimElem = 10, 2
x                       = 80

[State 0: Turn]
type                    = Turn
trigger1                = AnimElem = 6, 2
trigger2                = AnimElem = 10, 2

[State 0: 	AfterImage]
type 			        = AfterImage
trigger1 		        = (!Time)
time 			        = 9999999
framegap 		        = 4
length 		            = 6
paladd 		            = 0, 0, 0
palmul 		            = .60, .60, .60
palcontrast 	        = 100, 100, 100
trans 		            = add

[State 0, AfterImage]
type                    = AfterImageTime
trigger1                = 1
time                    = 2

[State 0, ]
type                    = HitDef
trigger1                = AnimElem = 3
trigger2                = AnimElem = 8
attr                    = S, SA
damage                  = 20
numhits                 = 0
animtype                = Light
guardflag               = M
hitflag                 = MAF
priority                = 5, Hit
pausetime               = 5, 18
sparkno                 = S7034
guard.sparkno           = S8020+(random%3)
sparkxy                 = -20, -70
hitsound                = S750, 3
guardsound              = S400, 0
ground.type             = low
ground.slidetime        = 20
ground.hittime          = 20
ground.velocity         = -3, 0
airguard.velocity       = -3, 0
air.type                = High
air.velocity            = -3,0
air.hittime             = 12
getpower                = 27
givepower		    = 0
envshake.time           = 13
envshake.freq           = 180
envshake.ampl           = 5
fall.envshake.time      = 10
fall.envshake.freq      = 190
fall.envshake.ampl      = 6
envshake.ampl           = -4
envshake.phase          = 10
yaccel		    = 0.2


[State 0, ]
type                    = HitDef
trigger1                = AnimElem = 8
attr                    = S, SA
damage                  = 23
numhits                 = 0
animtype                = Light
guardflag               = M
hitflag                 = MAF
priority                = 5, Hit
pausetime               = 5, 18
sparkno                 = S7034
guard.sparkno           = S8022+(random%2)
sparkxy                 = -17, -57
hitsound                = S750, 3
guardsound              = S400, 0
ground.type             = low
ground.slidetime        = 20
ground.hittime          = 20
ground.velocity         = -3, 0
airguard.velocity       = -3, 0
air.type                = High
air.velocity            = -3, -4
air.hittime             = 12
getpower                = 27
givepower		    = 0
envshake.time           = 13
envshake.freq           = 180
envshake.ampl           = 5
fall.envshake.time      = 10
fall.envshake.freq      = 190
fall.envshake.ampl      = 6
envshake.ampl           = -4
envshake.phase          = 10
yaccel		    = 0.5

[State 0, ]
type                    = HitDef
trigger1                = AnimElem = 12
attr                    = S, SA    
damage                  = 25
animtype                = Heavy
guardflag               = M
hitflag                 = MAF
priority                = 3, Hit
pausetime               = 11, 12
sparkno                 = S7034
guard.sparkno           = S8022+(random%2)
sparkxy                 = -10, -70
hitsound                = S750,3
guardsound              = S400, 0
ground.type             = low
ground.slidetime        = 12
ground.hittime          = 12
ground.velocity         = -4, -9.3
airguard.velocity       = -3, -3
air.type                = High
air.velocity            = -4, -9.3
air.hittime             = 12
getpower                = 0
givepower		    = 0
yaccel		    = 0.5
fall                    = 1
fall.recover            = 0
envshake.time           = 13
envshake.freq           = 180
envshake.ampl           = 5
fall.envshake.time      = 10
fall.envshake.freq      = 190
fall.envshake.ampl      = 6
envshake.ampl           = -4
envshake.phase          = 10

;--------------

[State 0: PlaySnd]
type                    = PlaySnd
trigger1                = AnimElem = 13
value                   = 1030, 1
volume                  = 255

[State 0: Pause]
type                    = Pause
triggerall              = AnimElem = 13,>  0
trigger1                = gametime%2 = 0
time                    = 1
movetime                = 1

[State 0: Explod]
type                    = Explod
trigger1                = AnimElem = 14
anim                    = 8460
ID                      = 8460
pos                     = 0,-80
postype                 = p1
bindtime                = -1
removetime              = -1
pausemovetime           = 999
scale                   = .8,.8
sprpriority             = 3
ownpal                  = 1
removeongethit          = 1

[State 0: RemoveExplod]
type                    = RemoveExplod
trigger1                = AnimElem = 15
ID                      = 8460
ignorehitpause          = 1

[State 0: Explod]
type                    = Explod
trigger1                = AnimElem = 15
anim                    = 8460
ID                      = 8461
pos                     = 32,-57
postype                 = p1
bindtime                = -1
removetime              = -1
pausemovetime           = 999
scale                   = 1,1
sprpriority             = 3
ownpal                  = 1
removeongethit          = 1

;--------------

[State 0, ]
type                    = ChangeState
trigger1                = AnimElem = 15 > 10 && P2bodydist Y > -78
value                   = 1054
ctrl                    = 0

;---------------------------------------------------------------------------
;Mystic Melee - Fire
[Statedef 1054]
type 			        = S
movetype		        = A
physics		            = N
juggle	    	        = 1
anim    			    = 1080
velset		            = 0,0
ctrl			        = 0
poweradd		        = 0
facep2		            = 0
hitdefpersist	        = 0
movehitpersist	        = 0
hitcountpersist	        = 0
sprpriority		        = 2

[State 0: RemoveExplod]
type                    = RemoveExplod
trigger1                = !Time
ID                      = 8461
ignorehitpause          = 1

[State 0: PlaySnd]
type                    = PlaySnd
trigger1                = !Time
value                   = 1030, 7
volume                  = 255

[State 0: PlaySnd]
type                    = PlaySnd
trigger1                = !Time
value                   = 1030, 6
volume                  = 255

[State 0: Helper]
type                    = Helper
trigger1                = !Time
helpertype              = normal
ID                      = 70311
pos                     = 47, -58
stateno                 = 1330
ownpal                  = 1
size.xscale             = .7
size.yscale             = .7

;-------------

[State 0, ]
type                    = ChangeState
trigger1                = !AnimTime
value                   = 0
ctrl                    = 1

;---------------------------------------------------------------------------
;Trickster A
[Statedef 1070]
type 		= S
movetype		= A
physics		= N
juggle	    	= 1
anim    	          = 1070
ctrl	          = 0
poweradd		= 69
facep2		= 0
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority         = 2

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


[State 0: VelSet]
type                    = VelSet
trigger1                = AnimElem = 3
x                       = 10

[State 0: VelSet]
type                    = VelSet
trigger1                = AnimElem = 4
x                       = 2

[State 0: VelSet]
type                    = VelSet
trigger1                = AnimElem = 5
x                       = 0

[State 0, ]
type                    = PlaySnd
trigger1                = AnimElem = 3
value                   = 100,0

[State 0, ]
type                    = MakeDust
trigger1                = AnimElem = 2 > 0 && AnimElem = 4 < 0
pos                     = -5,-2
spacing                 = 4

[State 0:       Dust Right]
type                    = Explod
trigger1                = AnimElem = 3
anim                    = 8100
ID                      = 8100
bindtime                = 1
pos                     = -7,3
removetime              = -2
sprpriority             = 3
ownpal                  = 1
removeongethit          = 0

[State 0, ]
type                    = ChangeState
trigger1                = !AnimTime
value                   = 0
ctrl                    = 1

[State 0, ]
type                    = ChangeState
trigger1                = (p2bodydist X < 25)
value                   = 1071
ctrl                    = 0

;---------------------------------------------------------------------------

;Trickster X 2
[Statedef 1071]
type 			        = S
movetype		        = A
physics		            = N
juggle	    	        = 1
anim    			    = 1071
velset		            = 0,0
ctrl			        = 0
poweradd		        = 0
facep2		            = 0
hitdefpersist	        = 0
movehitpersist	        = 0
hitcountpersist	        = 0
sprpriority		        = 2

[State 0:     VelSet]
type                    = VelSet
trigger1                = !Time
x		                = 20

[State 0:     VelSet]
type                    = VelSet
trigger1                = AnimElem = 2
x		                = 2

[State 0:     VelSet]
type                    = VelSet
trigger1                = AnimElem = 3
x		                = 0

[State 0:     PlaySND]
type                    = PlaySnd
trigger1                = (!Time)
value                   = 700, 0
channel	                = -1

[State 0:       Screen Flash]
type                    = EnvColor
trigger1                = (!Time)
value                   = 255,255,255
time                    = 2
under                   = 0

[State 0, ]
type                    = ChangeState
trigger1                = !AnimTime
value                   = 0
ctrl                    = 1

;---------------------------------------------------------------------------
;Trickster Y
[Statedef 1072]
type 			        = S
movetype		        = A
physics		            = N
juggle	    	        = 1
anim    			    = 1070
velset		            = 0,0
ctrl			        = 0
poweradd		        = 69
facep2		            = 0
hitdefpersist	        = 0
movehitpersist	        = 0
hitcountpersist	        = 0
sprpriority		        = 2

[State 0: VelSet]
type                    = VelSet
trigger1                = AnimElem = 3
x                       = 10

[State 0: VelSet]
type                    = VelSet
trigger1                = AnimElem = 4
x                       = 2

[State 0: VelSet]
type                    = VelSet
trigger1                = AnimElem = 5
x                       = 0

[State 0, ]
type                    = PlaySnd
trigger1                = AnimElem = 3
value                   = 25,0

[State 0, ]
type                    = MakeDust
trigger1                = AnimElem = 2 > 0 && AnimElem = 4 < 0
pos                     = -5,-2
spacing                 = 4


[State 0:       Dust Right]
type                    = Explod
trigger1                = AnimElem = 3
anim                    = 8100
ID                      = 8100
bindtime                = 1
pos                     = -7,3
removetime              = -2
sprpriority             = 3
ownpal                  = 1
removeongethit          = 0

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


[State 0, ]
type                    = HitDef
trigger1                = AnimElem = 3
attr                    = S, SA
damage                  = 0, 0
snap                    = 10,0
numhits                 = 0
animtype                = Heavy
guardflag               = M
hitflag                 = MAF
priority                = 5, Hit
pausetime               = 7, 20
sparkno                 = S8000+(random%3)
guard.sparkno           = S8020+(random%3)
sparkxy                 = 0, -40
hitsound                = S300, 2
guardsound              = S400, 0
ground.type             = low
ground.slidetime        = 0
ground.hittime          = 0
ground.velocity         = 0
airguard.velocity       = -3.9,-1
air.type                = low
air.velocity            = 0
air.hittime             = 12
getpower                = 0
givepower		        = 0
envshake.time = 13
envshake.freq = 180
envshake.ampl = 5
fall.envshake.time = 10
fall.envshake.freq = 190
fall.envshake.ampl = 6
envshake.ampl           = -4
envshake.phase          = 10
yaccel		            = 0.5
p1stateno               = 1073

[State 0, ]
type                    = ChangeState
trigger1                = !AnimTime
value                   = 0
ctrl                    = 1

;--------------------------------------------
;backhand Kick
[Statedef 1073]
type 			        = S
movetype		        = A
physics		            = S
juggle	    	        = 1
anim    			    = 1072
velset		            = 0,0
ctrl			        = 0
poweradd		        = 69
facep2		            = 0
hitdefpersist	        = 0
movehitpersist	        = 0
hitcountpersist	        = 0
sprpriority		        = 2

[State 0: PlayerPush]
type                    = PlayerPush
trigger1                = AnimElem = 1
value                   = 0
ignorehitpause          = 1

[State 0, ]
type                    = PlaySnd
trigger1                = !time
value                   = 180, 1
[State 0: Pause]
type                    = Pause
trigger1                = AnimElem = 1, 2
time                    = 2
movetime                = 2

[State 0: PosAdd]
type                    = PosAdd
trigger1                = AnimElem = 1, 2
x                       = 80

[State 0: Turn]
type                    = Turn
trigger1                = AnimElem = 1, 2

[State 0, ]
type                    = HitDef
trigger1                = !time
attr                    = S, SA
damage                  = 95
animtype                = medium
guardflag               = MA
hitflag                 = MAF
priority                = 5, Hit
pausetime               = 8, 10
sparkno                 = S8000+(random%3)
guard.sparkno           = S8020+(random%3)
sparkxy                 = -10-random%20, -40-random%30
hitsound                = S300, 2
guardsound              = S400, 0
ground.type             = low
ground.slidetime        = 15
ground.hittime          = 15
ground.velocity         = -12,-6
airguard.velocity       = -5, 0
air.type                = low
air.velocity            = -9, -6
air.hittime             = 12
getpower                = 20
givepower		        = 0
yaccel		            = 0.5
fall                    = 1
p2stateno               = 6000
envshake.time = 13
envshake.freq = 180
envshake.ampl = 5
fall.envshake.time = 10
fall.envshake.freq = 190
fall.envshake.ampl = 6
envshake.ampl           = -4
envshake.phase          = 10

[State 0, ]
type                    = ChangeState
trigger1                = !AnimTime
value                   = 0
ctrl                    = 1

;---------------------------------------------------------------------------
;Trickster A
[Statedef 1074]
type 		= S
movetype		= A
physics		= N
juggle	    	= 1
anim    	          = 1070
ctrl	          = 0
poweradd		= 69
facep2		= 0
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority         = 2



[State 0: VelSet]
type                    = VelSet
trigger1                = AnimElem = 3
x                       = 10

[State 0: VelSet]
type                    = VelSet
trigger1                = AnimElem = 4
x                       = 2

[State 0: VelSet]
type                    = VelSet
trigger1                = AnimElem = 5
x                       = 0

[State 0, ]
type                    = PlaySnd
trigger1                = AnimElem = 3
value                   = 25,0

[State 0, ]
type                    = MakeDust
trigger1                = AnimElem = 2 > 0 && AnimElem = 4 < 0
pos                     = -5,-2
spacing                 = 4


[State 0:       Dust Right]
type                    = Explod
trigger1                = AnimElem = 3
anim                    = 8100
ID                      = 8100
bindtime                = 1
pos                     = -7,3
removetime              = -2
sprpriority             = 3
ownpal                  = 1
removeongethit          = 0

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


[State 0, ]
type                    = ChangeState
trigger1                = !AnimTime
value                   = 0
ctrl                    = 1

[State 0, ]
type                    = ChangeState
trigger1                = (p2bodydist X < 25)
value                   = 1075
ctrl                    = 0

;---------------------------------------------------------------------------
;Trickster A 2
[Statedef 1075]
type 		 = S
movetype		 = A
physics		 = N
juggle	    	 = 1
anim    	           = 1073
velset		 = 0,0
ctrl	           = 0
poweradd		 = 69
facep2		 = 0
hitdefpersist	 = 0
movehitpersist	 = 0
hitcountpersist	 = 0
sprpriority	 = 2

[State 0: PlayerPush]
type                    = PlayerPush
trigger1                = AnimElem = 1, > 0 && AnimElem = 5, < 0
value                   = 0
ignorehitpause          = 1

[State 0: VelSet]
type                    = VelSet
trigger1                = !Time
x                       = 12

[State 0: VelSet]
type                    = VelSet
trigger1                = AnimElem = 4
x                       = 2

[State 0: VelSet]
type                    = VelSet
trigger1                = AnimElem = 5
x                       = 0

[State 0, ]
type                    = PlaySnd
trigger1                = !Time
value                   = 100, 1

[State 0, ]
type                    = HitDef
trigger1                = !Time
attr                    = C, SA
damage                  = 110
animtype                = Hard
guardflag               = L
hitflag                 = HF
priority                = 5, Hit
pausetime               = 4, 16
sparkno                 = S8000+(random%3)
guard.sparkno           = S8020+(random%3)
sparkxy                 = 0, -10
hitsound                = S300, 3
guardsound              = S400, 0
ground.type             = trip
ground.slidetime        = 15
ground.hittime          = 15
ground.velocity         = -2, -8
airguard.velocity       = -2.5, -3
air.type                = low
air.velocity            = -2, -8
air.hittime             = 22
getpower                = 20
givepower		        = 0
yaccel		            = 0.5
fall                    = 1
envshake.time = 13
envshake.freq = 180
envshake.ampl = 5
fall.envshake.time = 10
fall.envshake.freq = 190
fall.envshake.ampl = 6
envshake.ampl           = -4
envshake.phase          = 10

[State 0, ]
type                    = ChangeState
trigger1                = !AnimTime
value                   = 0
ctrl                    = 1
;----------------------------------------------------------------------------------
; Dash Burst
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

[State 0: Helper]
type                    = Helper
trigger1                = time = 0
helpertype              = normal
ID                      = 8001
pos                     = ifelse(random>500,3,ifelse(random>500,-5,15)),0
postype                 = p1
facing                  = 1
stateno                 = 8000
ownpal                  = 1
size.xscale             = .8
size.yscale             = 1.0
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


;--------------------------------------------------------------------------
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
mul = 356,356,256
sinadd = -128,-128,-128,40

[State 0, Helper]
type = Helper
trigger1 = anim = 1300 && AnimElem = 3
helpertype = normal
name = "Kiblast weak"
ID = 1310
stateno = 1310
pos = 56,-52
postype = p1
facing = 1
ownpal = 1
size.xscale = .15
size.yscale = .15

[State 0, Helper]
type = Helper
trigger1 = anim = 1301 && AnimElem = 3
helpertype = normal
name = "Kiblast weak"
ID = 1310
stateno = 1310
pos = 56,-52
postype = p1
facing = 1
ownpal = 1
size.xscale = .20
size.yscale = .20



[State 0, ChangeAnim]
type = ChangeAnim
triggerall = Power > 0 && command = "QCF_x" && var(13) < 9
trigger1 = anim = 1300 && AnimElem = 3,>10
value = 1301
elem = 2
ignorehitpause = 1

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = Power > 0 && command = "QCF_x" && var(13) < 9
trigger1 = anim = 1301 && AnimElem = 3,>10
value = 1300
elem = 2
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
mul = 356,356,256
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
triggerall = Power > 0 && command = "b" && var(13) < 9
trigger1 = anim = 1320 && AnimElem = 2,>5
value = 1321
elem = 1
ignorehitpause = 1

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = Power > 0 && command = "b" && var(13) < 9
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
trigger1 = (Anim = 1350) && (AnimElem = 2,>=20) && (command = "holdb")
v = 20
value = 1

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = Anim = 1350 && AnimElemTime(2) >= 20-(prevstateno = 1300)*5
trigger1 = command != "holdb"
trigger2 = var(20) >= 35
value = 1351

[State 0, PowerAdd]
type = PowerAdd
triggerall = var(20)
trigger1 = (Anim = 1350) && (AnimElem = 2,>=20) && (command = "holdb")
value = -10


[State 0, Helper]
type = Helper
trigger1 = Anim = 1350 && AnimElem = 1
helpertype = normal
name = "electriccharge"
ID = 1320
stateno = 1320
pos = 0,-110
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
mul = 356,356,256
sinadd = -128,-128,-128,40

[State 0, Helper]
type = Helper
trigger1 = (Anim = 1351 && AnimElem = 2)
helpertype = normal
name = "Kiblast Strong"
ID = 1330
stateno = 1330
pos = 55,-59
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

[State 0, EnvShake]
type = EnvShake
trigger1 = AnimElem = 2,1
time = 20
freq = 140
ampl = 8
;phase = 90
;ignorehitpause =
;persistent =

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
anim = 2001
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
type = Explod
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
type = Explod
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



[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 120
value = S2001,2
volume = 255
channel = 3

[State 0, EnvShake]
type = EnvShake
trigger1 = (time%8)=0
time = 4
freq = 120
ampl = -6



[State 0:       GroundWaves 2]
type                    = Explod
trigger1                = AnimElem = 1
anim                    = 7026
ID                      = 7011
pos                     = 0,5
removetime              = -2
bindtime                = -1
sprpriority             = -2
pausemovetime           = 999
ownpal                  = 1
removeongethit          = 1

[State 0:       Elec]
type                    = Explod
trigger1                = AnimElem = 1
anim                    = 7040
ID                      = 7011
pos                     = -5,10
bindtime                = -1
scale                   = 1, 1
removetime              = -2
bindtime                = -1
pausemovetime           = 999
sprpriority             = 4
ownpal                  = 1
removeongethit          = 1


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
value = 10

[State 0, PowerAdd]
type = PowerAdd
trigger1 = time = [60,119]
value = 12

[State 0, PowerAdd]
type = PowerAdd
trigger1 = time  = [120,179]
value = 15

[State 0, PowerAdd]
type = PowerAdd
trigger1 = time >= 180
value = 18



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
poweradd = -500
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
channel = 6

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
y = -30

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
juggle = 0
velset = 0,0
ctrl = 0
anim = 2111
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
value = 0,2
volume = 255
channel = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S2100,1
volume = 255
channel = 2

[State 0, Helper]
type = Helper
trigger1 = movehit = 1
helpertype = normal ;player
name = "Shockwave"
ID = 8200
stateno = 8200
pos = 0,-75
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
hitflag = MAF
priority = 3, Hit
pausetime = 15, 15
sparkno   = S8000+(random%3)
guard.sparkno  = S8020+(random%2)
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
value = 0,2
volume = 255
channel =- 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S2100,2
volume = 255
channel = 3

[State 0, Helper]
type = Helper
trigger1 = movehit = 1
helpertype = normal ;player
name = "Shockwave"
ID = 8200
stateno = 8200
pos = -10,-72
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
hitflag = MAF
priority = 3, Hit
pausetime = 15, 15
sparkno = S8000+(random%3)
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
value = 0,2
volume = 255
channel = 3

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S2100,3
volume = 255
channel = 6

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
trigger1 = AnimElem = 4
attr = S, NA
damage = 55, 11
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 9, 15
sparkno = S8000+(random%3)
guard.sparkno = S8020+(random%2)
sparkxy = -10, -40
hitsound = S203, 1
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 1, 2))
ground.type = High
ground.slidetime = 35
ground.hittime  = 35
ground.velocity = -7,14
Fall = 1
air.fall = 1
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
juggle = 6
velset = 0,-3
ctrl = 1
anim = 2105
poweradd = 0;0
sprpriority = 2

[State 0, Turn]
type = Turn
trigger1 = !time

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
