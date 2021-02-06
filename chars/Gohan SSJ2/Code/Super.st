;Pin Missile - Start
[StateDef 2500]
type = S
movetype= A
physics = N
juggle = 10
velset = 0,0
ctrl = 0
anim = 2500
poweradd = -1000
sprpriority = 2

[State 0: PosSet]
type                    = PosSet
trigger1                = !Time
y                       = 0

;---------------


[State 2500, PosAdd]
type = PosAdd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 5
trigger3 = AnimElem = 10
trigger4 = AnimElem = 11 
trigger5 = AnimElem = 16
trigger6 = AnimElem = 17
x = 15


[State 0, ]
type                    = PlaySnd
trigger1                = AnimElem = 2
value                   = 1012,0
volume                  = 255



[State 0, ]
type                    = PlaySnd
trigger1                = AnimElem = 6
trigger2                = AnimElem = 7
trigger3                = AnimElem = 8
trigger4                = AnimElem = 9
trigger5                = AnimElem = 12
trigger6                = AnimElem = 13
trigger7                = AnimElem = 14
trigger8                = AnimElem = 15
value                   = 200,0
volume                  = 255


[State 0, ]
type                    = PlaySnd
trigger1                = AnimElem = 17
value                   = 210,7
volume                  = 255

[State 0, ]
type                    = PlaySnd
trigger1                = AnimElem = 18
value                   = 1030,2
volume                  = 255



[State 0, ]
type                    = PlaySnd
trigger1                = !Time
value                   = 700, 0


;---------------

[State 0, ]
type                    = PlaySnd
trigger1                = !time
value                   = 3001, 0

[State 0: BGPalFX]
type                    = BGPalFX
trigger1                = !Time
time                    = 50
add                     = -100,-100,-100
mul                     = 256,256,256


[State 0:       Pause]
type                    = Pause
trigger1                = !Time
time                    = 50
movetime                = 50

[State 0:       EnvShake]
type 			        = EnvShake
Triggerall              = Time < 50
trigger1 		        = gametime%4
time 			        = 5
freq 			        = 70
ampl 			        = 7

[State 0, Helper]
type = Helper
trigger1 = !time
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

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 8400
ID = 8400
pos = 0,-40
postype = p1
bindtime = -1
removetime = -2
supermovetime = 999
pausemovetime = 999
scale = 1,1
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = Animelem = 18
anim = 7104
ID = 6196
pos = 45,-48
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
supermove=999
pausemove=999
scale = .5,.4
sprpriority = 3
removeongethit = -1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = movecontact
id =  6196




[State 0:       RemoveExplod]
type                    = RemoveExplod
trigger1                = AnimElem = 3
ID                      = 6000

[State 0:       Big S Dust Right]
type                    = Explod
trigger1                = AnimElem = 2
anim                    = 8100
ID                      = 7011
pos                     = -5,0
scale                   = 1, 1
removetime              = -2
sprpriority             = 3
ownpal                  = 1
removeongethit          = 1
pausemovetime           = 999

[State 0:       Big S Dust Right]
type                    = Explod
trigger1                = AnimElem = 2
anim                    = 8100
ID                      = 7011
pos                     = 0,0
scale                   = 1, 1
removetime              = -2
sprpriority             = 3
ownpal                  = 1
removeongethit          = 1
pausemovetime           = 999
facing                  = -1

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
size.xscale             = .8
size.yscale             = 1.0
supermovetime = 999
pausemovetime = 999

;---------------





[State 0: RemoveExplod]
type                    = RemoveExplod
trigger1                = AnimElem = 4
ID                      = 7011


;---------------

[State 0, ]
type                    = HitDef
trigger1                = AnimElem = 6
trigger2                = AnimElem = 7
trigger3                = AnimElem = 8
trigger4                = AnimElem = 9
trigger5                = AnimElem = 12
trigger6                = AnimElem = 13
trigger7                = AnimElem = 14
trigger8                = AnimElem = 15
attr                    = S, HA
ID                      = 2011
damage                  = 20
animtype                = Heavy
guardflag               = HA
hitflag                 = HAF
priority                = 5, Hit
pausetime               = 0, 0
sparkno                 = S8000+(random%3)
guard.sparkno           = S8022+(random%2)
sparkxy                 = -10,-50
hitsound                = S300,0
guardsound              = S400, 0
ground.type             = low
ground.slidetime        = 12
ground.hittime          = 12
ground.velocity         = 0
airguard.velocity       = 5, 0
air.type                = High
air.velocity            = 0,0
air.hittime             = 12
air.fall                = 0
getpower                = 55
givepower		        = 0
envshake.time           = 10
envshake.freq           = 100
envshake.ampl           = -4
envshake.phase          = 10
yaccel		            = 0.5

[State 3000, 2]
type = HitDef
trigger1 = AnimElem = 18
attr = S, HA			
damage = 75
animtype = Heavy			
guardflag = M			
hitflag = MAF
priority = 6, Hit			
pausetime = 25,8	
guard.pausetime = 11,11	
sparkno                 = S6120
guard.sparkno           = S8022+(random%2)				
sparkxy = -25, -60	
hitsound = S750, 3			
guardsound = S6, 0			
ground.type = low	
ground.slidetime = 14
ground.hittime = 14
guard.hittime = 12
ground.velocity = -15.5, -4.9
guard.velocity = -11.1796875
air.velocity = -15.5, -5.8
air.animtype = Back				
yaccel = 0.5
ground.cornerpush.veloff = 0
p2stateno = 6000
getpower = 0,0
givepower = 50
fall = 1
fall.recover = 0
id = 2500




;--------------


[State 0, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 0
ctrl = 1
;anim =
;ignorehitpause = 
;persistent = 


;-------------------------------------------------------------------------- 
;Sonic Kick Riser 
[StateDef 3000]
type = A
movetype= A
physics = N
juggle = 0
velset = 0,0
ctrl = 0
anim = 3000
poweradd = -1000
sprpriority = 2

[State 0, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 11
y = 12



[State 0, ]
type                    = PlaySnd
trigger1                = !time
value                   = 3001, 0

[State 0: BGPalFX]
type                    = BGPalFX
trigger1                = !Time
time                    = 50
add                     = -100,-100,-100
mul                     = 256,256,256


[State 0:       Pause]
type                    = Pause
trigger1                = !Time
time                    = 50
movetime                = 50

[State 0:       EnvShake]
type 			        = EnvShake
Triggerall              = Time < 50
trigger1 		        = gametime%4
time 			        = 5
freq 			        = 70
ampl 			        = 7

[State 0, Helper]
type = Helper
trigger1 = !time
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

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 8400
ID = 8400
pos = 0,-40
postype = p1
bindtime = -1
removetime = 50
supermovetime = 999
pausemovetime = 999
scale = 1,1
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause = 1


[State 0:       RemoveExplod]
type                    = RemoveExplod
trigger1                = AnimElem = 3
ID                      = 6000


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
size.xscale             = .8
size.yscale             = 1.0
supermovetime = 999
pausemovetime = 999

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

;---------------



[State 0, ]
type = AfterImage
trigger1 = AnimElem = 2
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
trigger1 = animelem = 2
value = S1030,0

[State 730, PlaySnd]
type = PlaySnd
trigger1 = Animelem=2
value = S2000,0

[State 730, 1]
type = HitDef
trigger1 = !time
attr = A, SA
damage = 75,10
animtype = back
guardflag = HA
hitflag = MAF
priority = 3, Hit
pausetime = 6,20
sparkno  = S8000+(random%3)
sparkxy = -34, -23
hitsound = S300, 3
guard.sparkno = S8020+(random%3)
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 1, 2))
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = 0,0
airguard.velocity = -1,-.8
air.type = High
air.velocity = -2.4,4
air.hittime = 12
fall = 0
;snap = 10
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
value = 3001
ctrl = 0

[State 0, ]
type = ChangeState
trigger1 = (Pos Y >= 0) && (Vel Y >= 0) 
value = 52
ctrl = 0

;--------------------------------------------------------------------------
;Sonic Kick - Idle
[StateDef 3001]
type = S
movetype= I
physics = S
;juggle = 6
velset = 0,0
ctrl = 0
anim = 3001
;poweradd = 0;0
sprpriority = 2

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
size.xscale             = .8
size.yscale             = 1.0
supermovetime = 999
pausemovetime = 999


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
value = 3002
ctrl = 0

;------------------------------------------------------------------
;Sonic Kick Upward
[Statedef 3002]
type 		        = S
movetype		        = A
physics		        = N
juggle	    	        = 1
anim    		        = 3002
velset		        = 0,0
ctrl		        = 0
poweradd		        = 0
facep2		        = 0
hitdefpersist	        = 0
movehitpersist	        = 0
hitcountpersist	        = 0
sprpriority	        = 2


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
size.xscale             = .8
size.yscale             = 1.0
supermovetime = 999
pausemovetime = 999


[State InitVel]
type                    = VelAdd 
trigger1                = animelem = 2
Y                       = -8.9
X                       = 5.8




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
damage                  = 130,10
animtype                = back
guardflag               = M
hitflag                 = MAF
priority                = 5, Hit
pausetime               = 9, 14
sparkno                 = S7034
guard.sparkno           = S8020
sparkxy                 = -20, -45
hitsound                = S750, 3
guardsound              = S400, 0
ground.type             = low
ground.slidetime        = 20
ground.hittime          = 20
ground.velocity         = -2.5, -5
airguard.velocity       = -3, -1
air.type                = high
air.velocity            = -6, -9
air.hittime             = 12
getpower                = 27
givepower		        = 0
Fall                    = 1
Fall.recover            = 0
yaccel		            = 0.3
ID                      = 3002





[State 0, ]
type                    = ChangeState
trigger1                = Movehit || animelem = 3,>4
value                   = 50
ctrl                    = 0
;------------------------------------------------------------------------
;Kamehameha Speed Blitz
[StateDef 3100]
type = S
movetype= A
physics = S
juggle = 8
velset = 0,0
ctrl = 0
anim = 3100
poweradd = -2000
sprpriority = 2

[State 0, ScreenBound]
type = null; ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 8140
ID =   8140
pos = 0,0
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
trigger1 = !time
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
trigger1 = !time
anim = 8400
ID = 8400
pos = 0,-40
postype = p1
bindtime = -1
removetime = 58
supermovetime = 999
pausemovetime = 999
scale = 1,1
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 0, Helper]
type = Helper
trigger1 = !time
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

[State 0: Helper]
type                    = null; Helper
trigger1                = time = 0
helpertype              = normal
ID                      = 8000
pos                     = ifelse(random>500,3,ifelse(random>500,-5,15)),0
postype                 = p1
facing                  = 1
stateno                 = 8000
ownpal                  = 1
size.xscale             = .8
size.yscale             = 1.0
supermovetime = 999
pausemovetime = 999


[State 0, SuperPause]
type = Pause
trigger1 = !time
time = 60
movetime = 60


[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S190,2



[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S3001,0


[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(9)= 10 
value = S100,1
volumescale = 50



[State 0: BGPalFX]
type                    = BGPalFX
trigger1                = !Time
time                    = 50
add                     = -100,-100,-100
mul                     = 256,256,256


[State 0, ChangeState]
type = ChangeState
trigger1 = time = 60
value = 3101
ctrl = 0

;--------------------------------------------------------------------------------------------------------------
[StateDef 3101,Knee]
type = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 3101
sprpriority = 2
juggle = 8

[State 0, Posadd]
type = posadd
trigger1 = !time
x = ifelse(p2dist X< 230, floor(p2dist X-30),230)




[State 0, HitDef]
type = HitDef
trigger1 = !time
attr = S,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = L         ;HLA
getpower = 0,0
givepower = 0,0
animtype = diagup          ;light,medium,hard,back,up,diagup
air.animtype = light
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 30,0
pausetime = 5,5
sparkno = S7034
guard.sparkno = S8020+(random%4)
sparkxy = -15,-46
hitsound = S750,3
guardsound = S0,9
ground.type = low     ;Low,Trip,None
air.hittime = 20
ground.velocity = -1,-13.5
;p2stateno = 6000
air.velocity = -1,-16
p1getp2facing = 0
yaccel	    = .01
fall = 1
fall.yvelocity = -4.5
fall.recover = 0
fall.recovertime = 4
kill = 0
envshake.time           = 10
envshake.freq           = 100
envshake.ampl           = -4
envshake.phase          = 10

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = S100,1
volumescale = 50


[State 0, end]
type = ChangeState
trigger1 = !movehit && !animtime
value = 0
ctrl = 1

[State 0, end]
type = ChangeState
trigger1 = movehit && animtime = 0
value = 3102
ctrl = 0

;-------------------------------------------------------------------------------------------------------------
[StateDef 3102,Smash downward]
type = A
movetype= A
physics = N
velset = 0,0
ctrl = 0
anim = 3102
sprpriority = 2


[State 0, Turn]
type = Turn
trigger1 = !time 
;ignorehitpause = 1
;persistent = 

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S100,1



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



[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 0, PosSet]
type = PosSet
trigger1 = !time 
x = ifelse(  facing = 1,(target, pos X-50), (target, pos X+50)  )
y = target, pos Y

[State 0, PosSet]
type = PosSet
trigger1 = !time 
x = ifelse(  facing = 1,(enemynear, pos X-50), (enemynear, pos X+50)  )
y = enemynear, pos Y

[State 0, PosSet]
type = PosSet
trigger1 = Pos Y >= 0
y = -30

[State 0, PlayerPush]
type =  PlayerPush
trigger1 = 1
value = 0

[State 0, Pause]
type = Pause
trigger1 = !time
time = 15
movetime = 15



[State 0, HitDef]
type = HitDef
trigger1 = !time
attr = S,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 0,0
givepower = 0,0
animtype = hard          ;light,medium,hard,back,up,diagup
air.animtype = light
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 30,0
pausetime = 0,5
sparkno                 = S8000+(random%3)
guard.sparkno           = S8022+(random%2)
sparkxy = 0,-40
hitsound = S203,1
guardsound = S400,0
ground.type = High      ;Low,Trip,None
air.hittime = 20
air.cornerpush.veloff = 4
ground.velocity = 7,-2
air.velocity = -12,7.2
p1getp2facing = 0
fall = 1
fall.yvelocity = -2.5
fall.recover = 0
fall.recovertime = 4
kill = 0
yaccel = 0.2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = S100,1
volumescale = 50


[State 0, end]
type = ChangeState
trigger1 = !movehit && !animtime
value = 50
ctrl = 0


[State 0, end]
type = ChangeState
trigger1 = movehit && !animtime
value = 3103
ctrl = 0

;-------------------------------------------------------------------------------------------------------------------
[StateDef 3103,kick Up ]
type = A
movetype= A
physics = N
velset = 0,0
ctrl = 0
anim = 3103
sprpriority = 2


[State 0, Turn]
type = Turn
trigger1 = !time 
;ignorehitpause = 1
;persistent = 


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



[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 0, PosSet]
type = PosSet
trigger1 = !time 
x = ifelse(  facing = 1,(target, pos X-50), (target, pos X+50)  )
y = target, pos Y

[State 0, PosSet]
type = PosSet
trigger1 = !time 
x = ifelse(  facing = 1,(enemynear, pos X-50), (enemynear, pos X+50)  )
y = enemynear, pos Y

[State 0, PosSet]
type = PosSet
trigger1 = Pos Y >= 0
y = -10

[State 0, PlayerPush]
type =  PlayerPush
trigger1 = 1
value = 0

[State 0, Pause]
type = Pause
trigger1 = !time
time = 15
movetime = 15



[State 0, HitDef]
type = HitDef
trigger1 = !time
attr = S,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 0,0
givepower = 0,0
animtype = medium          ;light,medium,hard,back,up,diagup
air.animtype = light
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 20,0
pausetime = 5,15
sparkno                 = S8000+(random%3)
guard.sparkno           = S8022+(random%2)
sparkxy = -15,-43
hitsound = S203,1
guardsound = S400,0
ground.type = High      ;Low,Trip,None
air.hittime = 20
ground.velocity =  -13,-6.2
air.velocity = -9.2,-17.3
p1getp2facing = 0
fall = 1
fall.yvelocity = -4.5
fall.recover = 0
fall.recovertime = 4
kill = 0

[State 0, end]
type = ChangeState
trigger1 =!movehit && animelem = 6
value = 50
ctrl = 1

[State 0, end]
type = ChangeState
trigger1 = movehit && animtime=0
value = 3104
ctrl = 0

;-------------------------------------------------------------------------------------------
[StateDef 3104,Side Attack]
type = A
movetype= A
physics = N
velset = 0,0
ctrl = 0
anim = 3104
sprpriority = 2


[State 0, Turn]
type = Turn
trigger1 = !time 
;ignorehitpause = 1
;persistent = 

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S100,1
volumescale = 50



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



[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 0, PosSet]
type = PosSet
trigger1 = !time 
x = ifelse(  facing = 1,(target, pos X-50), (target, pos X+50)  )
y = target, pos Y

[State 0, PosSet]
type = PosSet
trigger1 = !time 
x = ifelse(  facing = 1,(enemynear, pos X-50), (enemynear, pos X+50)  )
y = enemynear, pos Y

[State 0, PosSet]
type = PosSet
trigger1 = Pos Y >= 0
y = -10

[State 0, PlayerPush]
type =  PlayerPush
trigger1 = 1
value = 0

[State 0, Pause]
type = Pause
trigger1 = !time
time = 15
movetime = 15

[State 0, HitDef]
type = HitDef
trigger1 = !time
attr = S,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 0,0
givepower = 0,0
animtype = medium          ;light,medium,hard,back,up,diagup
air.animtype = light
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 15,0
pausetime = 5,0
sparkno                 = S8000+(random%3)
guard.sparkno           = S8022+(random%2)
sparkxy = -40,-44
hitsound = S203,1
guardsound = S400,0
ground.type = High      ;Low,Trip,None
air.hittime = 20
ground.velocity =   5,-4
air.velocity = -17.6,-4
p1getp2facing = 0
fall = 0
fall.yvelocity = -2.5
fall.recover = 0
fall.recovertime = 4
kill = 0


[State 0, end]
type = ChangeState
trigger1 =!movehit && animelem = 4
value = 50
ctrl = 1

[State 0, end]
type = ChangeState
trigger1 = movehit && animtime= 0
value = 3105
ctrl = 0

;--------------------------------------------------------------------------
[StateDef 3105,Port punch 1 ]
type = A
movetype= A
physics = N
velset = 0,0
ctrl = 0
anim = 3105
sprpriority = 2



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



[State 0, Turn]
type = Turn
trigger1 = !time 
;ignorehitpause = 1
;persistent = 

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S100,1
volumescale = 50


[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 0, PosSet]
type = PosSet
trigger1 = !time 
x = ifelse(  facing = 1,(target, pos X-50), (target, pos X+50)  )
y = target, pos Y

[State 0, PosSet]
type = PosSet
trigger1 = !time 
x = ifelse(  facing = 1,(enemynear, pos X-50), (enemynear, pos X+50)  )
y = enemynear, pos Y

[State 0, PosSet]
type = PosSet
trigger1 = Pos Y >= 0
y = -10

[State 0, PlayerPush]
type =  PlayerPush
trigger1 = 1
value = 0

[State 0, Pause]
type = Pause
trigger1 = !time
time = 15
movetime = 15

[State 0, HitDef]
type = HitDef
trigger1 = !time
attr = S,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 0,0
givepower = 0,0
animtype = medium          ;light,medium,hard,back,up,diagup
air.animtype = light
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 15,0
pausetime = 5,0
sparkno                 = S8000+(random%3)
guard.sparkno           = S8022+(random%2)
sparkxy = -40,-44
hitsound = S203,1
guardsound = S400,0
ground.type = High      ;Low,Trip,None
air.hittime = 20
ground.velocity =   5,-4
air.velocity = -14.6,-4
p1getp2facing = 0
fall = 0
fall.yvelocity = -2.5
fall.recover = 0
fall.recovertime = 4
kill = 0


[State 0, end]
type = ChangeState
trigger1 =!movehit && animelem = 4
value = 50
ctrl = 1

[State 0, end]
type = ChangeState
trigger1 = movehit && animtime= 0
value = 3106
ctrl = 0

;--------------------------------------------------------------------------
[StateDef 3106,Kick down ]
type = A
movetype= A
physics = N
velset = 0,0
ctrl = 0
anim = 3106
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S100,1
volumescale = 50


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

[State 0, Turn]
type =  Turn
trigger1 = !time 
;ignorehitpause = 1
;persistent = 


[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 0, PosSet]
type = PosSet
trigger1 = !time 
x = ifelse(  facing = 1,(target, pos X-50), (target, pos X+50)  )
y = target, pos Y

[State 0, PosSet]
type = PosSet
trigger1 = !time 
x = ifelse(  facing = 1,(enemynear, pos X-50), (enemynear, pos X+50)  )
y = enemynear, pos Y

[State 0, PosSet]
type = PosSet
trigger1 = Pos Y >= 0
y = -70

[State 0, PlayerPush]
type =  PlayerPush
trigger1 = 1
value = 0

[State 0, Pause]
type = Pause
trigger1 = !time
time = 15
movetime = 15


[State 0, HitDef]
type = HitDef
trigger1 = !time
attr = S,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA        ;HLA
getpower = 0,0
givepower = 0,0
animtype = medium          ;light,medium,hard,back,up,diagup
air.animtype = light
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 5,0
pausetime = 0,0
sparkno                 = S8000+(random%3)
guard.sparkno           = S8022+(random%2)
sparkxy = -10,-22
hitsound = S203,1
guardsound = S400,0
ground.type = High      ;Low,Trip,None
air.hittime = 20
air.cornerpush.veloff = 5
ground.velocity =  8,9
air.velocity = -12,11
;p1getp2facing = 0
fall = 1
fall.yvelocity = -4.5
fall.recover = 0
fall.recovertime = 4
kill=0
p2stateno = 6030


[State 0, end]
type = ChangeState
trigger1 =!movehit && animelem = 3
value = 50
ctrl = 1

[State 0, end]
type = ChangeState
trigger1 = movehit && !animtime 
value = 3107
ctrl = 0

;----------------------------------------------------------------------------------------------------
[StateDef 3107,Chou Khh]
type = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 3107
sprpriority = 2


[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S100,1
volumescale = 50


[State 0, PosSet]
type = PosSet
trigger1 = !time 
x = ifelse(facing = 1,pos X-120,pos X+120)


[State 0, PosSet]
type = PosSet
trigger1 = !time
y = 0

[State 0, ]
type                    = PlaySnd
trigger1                = time = 160
value                   = 1045, 3

[State 0:       PlaySND]
type                    = PlaySnd
trigger1                = AnimElem = 1
value                   = 700, 0
channel	                = -1
volume                  = 255

[State 0:       PlaySND]
type                    = PlaySnd
trigger1                = AnimElem = 1
value                   = 700, 1
volume                  = 255
loop                    = 1
channel                 = 4


[State 0:       Screen Flash]
type                    = EnvColor
trigger1                = AnimElem = 1
value                   = 255,255,255
time                    = 2
under                   = 0

[State 0:       GroundWaves]
type                    = Explod
trigger1                = AnimElem = 4
anim                    = 7026
ID                      = 7011
pos                     = 0,5
scale                   = 2.5, 1
removetime              = -1
bindtime                = -1
sprpriority             = -2
pausemovetime           = 999
ownpal                  = 1
removeongethit          = 1

[State 0:       GroundWaves 2]
type                    = Explod
trigger1                = AnimElem = 4
anim                    = 7026
ID                      = 7011
pos                     = 0,5
removetime              = -1
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
removetime              = -1
bindtime                = -1
pausemovetime           = 999
sprpriority             = 4
ownpal                  = 1
removeongethit          = 1

[State 0: 	PalFX]
type			        = PalFX
trigger1		        = GameTime%45 = 0
time			        = 20
add			            = 85,85,85
mul			            = 256,256,256
sinadd		            = 85,85,85,25
invertall		        = 0
color			        = 256

[State 0:       Big S Dust Right]
type                    = Explod
trigger1                = AnimElem = 1
anim                    = 8100
ID                      = 7011
pos                     = -5,0
scale                   = 1, 1
removetime              = -1
sprpriority             = 3
ownpal                  = 1
removeongethit          = 1
pausemovetime           = 999

[State 0:       Big S Dust Left]
type                    = Explod
trigger1                = AnimElem = 1
anim                    = 8100
ID                      = 7011
pos                     = 0,0
scale                   = 1, 1
removetime              = -1
sprpriority             = 3
ownpal                  = 1
removeongethit          = 1
pausemovetime           = 999
facing                  = -1



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
size.xscale             = .8
size.yscale             = 1.0
supermovetime = 999
pausemovetime = 999

;---------------

;---------------




[State 0: PlaySnd]
type                    = PlaySnd
trigger1                = AnimElem = 3
value                   = 1045,5
volume                  = 255

;Contracting Ball
[State 0: Helper]
type                    = Helper
trigger1                = AnimElem = 4
helpertype              = normal
ID                      = 6040
pos                     = -25,-46
stateno                 = 6040
ownpal                  = 1
pausemovetime           = 999
size.xscale             = 2
size.yscale             = 2

[State 0: Explod]
type                    = Explod
trigger1                = AnimElem = 4
anim                    = 8402
ID                      = 8401
pos                     = -5,-35
bindtime                = -1
removetime              = -1
scale                   = .3,.3
sprpriority             = 4
ownpal                  = 1
removeongethit          = 1


[State 0:       Ring]
type                    = Helper
trigger1                = AnimElem = 4
helpertype	            = normal
id                      = 8501
stateno	                = 8501
keyctrl	                = 0
ownpal		            = 1
size.xscale             = 1
size.yscale             = 1
pausemovetime	        = 999

[State 0:       Ring 2]
type                    = Helper
trigger1                = AnimElem = 4
helpertype	            = normal
id                      = 8501
stateno	                = 8501
keyctrl	                = 0
ownpal		            = 1
size.xscale             = 2
size.yscale             = 2
pausemovetime	        = 999

[State 0:       Flash]
type                    = Explod
triggerall              = Time > 60
trigger1                = TimeMod = 60, 0
anim                    = 6120
pos                     = -15,-45
removetime              = -2
sprpriority             = 5
ownpal                  = 1
removeongethit          = 1
scale                   = 1.3,1.3


[State 0, ]
type                    = PlaySnd
trigger1                = time = 280
value                   = 1045, 4


[State 0: PlaySnd]
type                    = PlaySnd
triggerall              = Time > 60
trigger1                = TimeMod = 60, 0
value                   = 700, 0
volume                  = 255

[State 0, ]
type                    = ChangeState
trigger1                = time = 280  
value                   = 3108
ctrl                    = 0

;----------------------------------------------------------------
;Chou Kamehameha Fire
[statedef 3108]
type 		= S
movetype		= A
physics		= S
juggle	    	= 1
anim    	          = 4001
velset		= 0,0
ctrl		= 0
poweradd		= 0
facep2		= 0
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority         = 2

[State 0: RemoveExplod]
type                    = RemoveExplod
trigger1                = !Time
ID                      = 8401

[State 0: RemoveExplod]
type                    = RemoveExplod
trigger1                = AnimElem = 1, 110
ID                      = 7011

[State 0:       PlaySND]
type                    = PlaySnd
trigger1                = AnimElem = 1, 110
value                   = 700, 0
channel	                = -1
volume                  = 255

[State 0, StopSnd]
type = StopSnd
trigger1 = !time
channel = 4




[State 0:       Screen Flash]
type                    = EnvColor
trigger1                = AnimElem = 1, 110
value                   = 255,255,255
time                    = 2
under                   = 0

[State 0: PlaySnd]
type                    = PlaySnd
trigger1                = !Time
value                   = 3002,1
volume                  = 255

[State 0: Explod]
type                    = Explod
trigger1                = AnimElem = 4
anim                    = 80051
ID                      = 80051
pos                     = 40, 10
bindtime                = -1
removetime              = -1
scale                   = 1.3,1.3
sprpriority             = 4
ownpal                  = 1
removeongethit          = 1

[State 0: PlaySnd]
type                    = PlaySnd
trigger1                = !Time
value                   = 3000, 3
volume                  = 255

[State 0:       Beam]
type                    = Helper
trigger1                = !Time
helpertype	            = normal
id                      = 8320
stateno	                = 8320
keyctrl	                = 0
size.xscale             = .8
size.yscale             = .9
ownpal		            = 1

[State 0:       Slow Mo]
type                    =  Helper
Triggerall              = (NumHelper(8320)||NumHelper(8403)) && !AnimElem = 1, >= 90
trigger1                = helper(8320), movehit
helpertype	            = normal
id                      = 8405
stateno	                = 8405
keyctrl	                = 0
ownpal		            = 1
pausemovetime	        = 999
ignorehitpause          = 1

[State 0, ]
type                    = ChangeState
trigger1                = AnimElem = 1, 111
value                   = 0
ctrl                    = 1

;---------------------------------------------------------------------------


[State 0, end]
type = ChangeState
trigger1 = time = 150
value = 0
ctrl = 1

;------------------------------------------------------------------------------------------------------------
; Masenko
[Statedef 3200]
type 		= S
movetype		= A
physics		= S
juggle	    	= 1
anim    		= 3200
velset		= 0,0
ctrl		= 0
poweradd		= -1000
facep2		= 0
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority         = 2
  
[State 0: PosSet]
type                    = PosSet
trigger1                = !Time
y                       = 0

;---------------

[State InitVel]
type                    = VelSet 
trigger1                = animelem = 5
X                       = 25

[State 0, ]
type                    = PlaySnd
trigger1                = AnimElem = 5
value                   = 25,0

[State 0, ]
type                    = PlaySnd
trigger1                = !Time
value                   = 700, 0

[State 0: MakeDust]
type                    = MakeDust
trigger1                = AnimElem = 7,>  0
pos                     = 0,5
spacing                 = 2

;---------------

[State 0, ]
type                    = PlaySnd
trigger1                = !time
value                   = 3001, 0

[State 0: BGPalFX]
type                    = BGPalFX
trigger1                = !Time
time                    = 50
add                     = -100,-100,-100
mul                     = 256,256,256


[State 0:       Pause]
type                    = Pause
trigger1                = !Time
time                    = 50
movetime                = 50

[State 0:       EnvShake]
type 			        = EnvShake
Triggerall              = Time < 50
trigger1 		        = gametime%4
time 			        = 5
freq 			        = 70
ampl 			        = 7

[State 0, Helper]
type = Helper
trigger1 = !time
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

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 8400
ID = 8400
pos = 0,-40
postype = p1
bindtime = -1
removetime = -2
supermovetime = 999
pausemovetime = 999
scale = 1,1
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause = 1

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
size.xscale             = .8
size.yscale             = 1.0
supermovetime = 999
pausemovetime = 999



[State 0:       RemoveExplod]
type                    = RemoveExplod
trigger1                = AnimElem = 3
ID                      = 6000

[State 0:       Big S Dust Right]
type                    = Explod
trigger1                = AnimElem = 2
anim                    = 8100
ID                      = 7011
pos                     = -5,0
scale                   = 1, 1
removetime              = -2
sprpriority             = 3
ownpal                  = 1
removeongethit          = 1
pausemovetime           = 999

[State 0:       Big S Dust Right]
type                    = Explod
trigger1                = AnimElem = 2
anim                    = 8100
ID                      = 7011
pos                     = 0,0
scale                   = 1, 1
removetime              = -2
sprpriority             = 3
ownpal                  = 1
removeongethit          = 1
pausemovetime           = 999
facing                  = -1

[State 0:       Aura]
type                    = Explod
trigger1                = !Time
anim                    = 7039
ID                      = 7011
pos                     = 0,0
removetime              = -1
pausemovetime           = 999
sprpriority             = 3
ownpal                  = 1
scale                   = .8, .8
removeongethit          = 1

;---------------



[State 0: RemoveExplod]
type                    = RemoveExplod
trigger1                = AnimElem = 4
ID                      = 7011

[State 0:       Big S Dust Right]
type                    = Explod
trigger1                = AnimElem = 5
anim                    = 8101
ID                      = 7011
pos                     = 10,0
scale                   = 1, 1
removetime              = -2
sprpriority             = 3
ownpal                  = 1
removeongethit          = 1


[State 0, ]
type                    = PlaySnd
trigger1                = AnimElem = 4
value                   = 1003, 0
volume                  = 255

;---------------

[State 0, ]
type                    = HitDef
trigger1                = !Time
attr                    = S, HA
damage                  = 0, 0
animtype                = Heavy
guardflag               = M
hitflag                 = MAF
priority                = 7, Miss
pausetime               = 0, 12
sparkno                 = S8000+(random%3)
guard.sparkno           = S8022+(random%2)
sparkxy                 = -10, -60
hitsound                = S300, 2
guardsound              = S400, 0
ground.type             = low
ground.slidetime        = 20
ground.hittime          = 20
ground.velocity         = 2, 0
airguard.velocity       = 2, 0
air.type                = High
air.velocity            = 2, 0
air.hittime             = 12
getpower                = 27
givepower		        = 0
yaccel		            = 0.5
envshake.time           = 5
envshake.freq           = 100
envshake.ampl           = 10
envshake.phase          = 10
id                      = 2010
p2facing                = 1
p1stateno               = 3201
snap                    = 5,0

;---------------

[State 0, ]
type                    = ChangeState
trigger1                = !AnimTime
value                   = 0
ctrl                    = 1

;---------------------------------------------------------------------------
; Masenko - Combos
[Statedef 3201]
type 		= S
movetype		= A
physics		= S
juggle	    	= 1
anim    	          = 3201
velset		= 0,0
ctrl		= 0
poweradd		= 0
facep2		= 0
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority	= 2

[State 0: PosAdd]
type                    = null; PosAdd
trigger1                = AnimElem = 3 < 0 && p2statetype = A
x                       = -8

[State 0: PosAdd]
type                    = null; PosAdd
trigger1                = AnimElem = 22 > 0 && AnimElem = 23 < 0
x                       = 14

[State 0, PlaySnd]
type = PlaySnd
trigger1                = AnimElem = 3
trigger2                = AnimElem = 6
trigger3                = AnimElem = 8
trigger4                = AnimElem = 11
trigger5                = AnimElem = 14
trigger6                = AnimElem = 17
trigger7                = AnimElem = 21
value = S210,0+(random%5)



[State 0, ]
type                    = HitDef
trigger1                = AnimElem = 4
trigger2                = AnimElem = 7
trigger3                = AnimElem = 9
trigger4                = AnimElem = 12
trigger5                = AnimElem = 15
trigger6                = AnimElem = 18
attr                    = S, HA
ID                      = 2011
damage                  = 25
animtype                = Heavy
guardflag               = HA
hitflag                 = HAF
priority                = 5, Hit
pausetime               = 4, 20
sparkno                 = S8000+(random%3)
guard.sparkno           = S8022+(random%2)
sparkxy                 = -10,-50
hitsound                = S300,1
guardsound              = S400, 0
ground.type             = low
ground.slidetime        = 12
ground.hittime          = 12
ground.velocity         = 5
airguard.velocity       = 5, 0
air.type                = High
air.velocity            = 5, 0
air.hittime             = 12
getpower                = 55
givepower		        = 0
envshake.time           = 10
envshake.freq           = 100
envshake.ampl           = -4
envshake.phase          = 10
yaccel		            = 0.5



[State 0, ]
type                    = HitDef
trigger1                = AnimElem = 22
attr                    = S, HA
ID                      = 20111
damage                  = 33
animtype                = Heavy
guardflag               = HA
hitflag                 = HAF
priority                = 5, Hit
pausetime               = 11, 12
sparkno                 = S8000+(random%3)
guard.sparkno           = S8022+(random%2)
sparkxy                 = -10, -70
hitsound                = S301, 2
guardsound              = S400, 0
ground.type             = low
ground.slidetime        = 12
ground.hittime          = 12
ground.velocity         = -5, -11
airguard.velocity       = -5, -3
air.type                = High
air.velocity            = -5, -11
air.hittime             = 12
getpower                = 55
givepower		        = 0
envshake.time           = 10
envshake.freq           = 100
envshake.ampl           = -4
envshake.phase          = 10
yaccel		            = 0.5
Fall                    = 1
Fall.Recover            = 0

;---------------

[State 0: Pause]
type                    = Pause
triggerall              = AnimElem = 24,>  0
trigger1                = gametime%1 = 0
time                    = 1
movetime                = 1

; Light Burst
[State 0: Explod]
type                    = Explod
trigger1                = AnimElem = 25
trigger2                = AnimElem = 25, 25
anim                    = 6120
ID                      = 6120
pos                     = 12,-73
bindtime                = -1
pausemovetime           = 999
sprpriority             = 3
ownpal                  = 1
removeongethit          = 1

;Ball
[State 0: Explod]
type                    = Explod
trigger1                = AnimElem = 25
anim                    = 8460
ID                      = 2011
pos                     = 2,-70
bindtime                = -1
removetime              = -1
pausemovetime           = 999
scale                   = 1,1
sprpriority             = 3
ownpal                  = 1
removeongethit          = 1

;Aura
[State 0: Explod]
type                    = Explod
trigger1                = AnimElem = 25
anim                    = 7039
ID                      = 2011
pos                     = 0, 0
bindtime                = -1
removetime              = -1
pausemovetime           = 999
scale                   = .8,.8
sprpriority             = 3
ownpal                  = 1
removeongethit          = 1


[State 0:       Big S Dust Right]
type                    = Explod
trigger1                = AnimElem = 25
anim                    = 8100
ID                      = 2011
pos                     = -5,0
scale                   = 1, 1
removetime              = -1
sprpriority             = 3
ownpal                  = 1
removeongethit          = 1
pausemovetime           = 999

[State 0:       Big S Dust Right]
type                    = Explod
trigger1                = AnimElem = 25
anim                    = 8100
ID                      = 2011
pos                     = 0,0
scale                   = 1, 1
removetime              = -1
sprpriority             = 3
ownpal                  = 1
removeongethit          = 1
pausemovetime           = 999
facing                  = -1


[State 0:       GroundWaves]
type                    = Explod
trigger1                = AnimElem = 25, 2
anim                    = 7026
ID                      = 2011
pos                     = 0,5
removetime              = -1
pausemovetime           = 999
sprpriority             = -2
ownpal                  = 1
removeongethit          = 1

[State 0:       GroundWaves Long]
type                    = Explod
trigger1                = AnimElem = 25
anim                    = 7026
ID                      = 2011
pos                     = 0,5
removetime              = -1
pausemovetime           = 999
sprpriority             = -2
ownpal                  = 1
removeongethit          = 1
scale                   = 2, 1

;---------------

[State 0: PlaySnd]
type                    = PlaySnd
trigger1                = AnimElem = 25
trigger2                = AnimElem = 25, 25
value                   = 700, 0
volume                  = 255

[State 0, PalFXWiz] ;Generated by MEE PalFX Editor
type                    = PalFX
trigger1                = AnimElem = 25 > 0
time                    = 1
add                     = -20,-20,-20
mul                     = 349,349,349
sinadd                  = 0,0,0,1
invertall               = 0
color                   = 170

;Electricity
[State 0:       Elec]
type                    = Explod
trigger1                = AnimElem = 25
anim                    = 7040
id                      = 2011
pos                     = -5, 5
bindtime                = -1
removetime              = -1
pausemovetime           = 999
sprpriority             = 4
ownpal                  = 1
removeongethit          = 1

[State 0, ]
type                    = ChangeState
trigger1                = AnimElem = 25 > 20 && P2bodydist Y > -80
value                   = 3202
ctrl                    = 0

;---------------------------------------------------------------------------
; Masenko - End
[Statedef 3202]
type 		= S
movetype		= A
physics		= S
juggle	    	= 1
anim    	          = 3202
velset		= 0,0
ctrl		= 0
poweradd		= 0
facep2		= 0
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority         = 1

[State 0: RemoveExplod]
type                    = RemoveExplod
trigger1                = !Time
ID                      = 2011

[State 0: PlaySnd]
type                    = PlaySnd
trigger1                = !Time
value                   = 1030, 6
volume                  = 255

[State 0: PlaySnd]
type                    = PlaySnd
trigger1                = !Time
value                   = 1030, 7

[State 0, PalFXWiz] ;Generated by MEE PalFX Editor
type                    = PalFX
trigger1                = AnimElem = 1 < 30
time                    = 1
add                     = -20,-20,-20
mul                     = 349,349,349
sinadd                  = 0,0,0,1
invertall               = 0
color                   = 170

[State 0:       Big S Dust Right]
type                    = Explod
trigger1                = !time
anim                    = 8100
ID                      = 7011
pos                     = -5,0
scale                   = 1, 1
removetime              = -2
sprpriority             = 3
ownpal                  = 1
removeongethit          = 1
pausemovetime           = 999

[State 0:       Big S Dust Right]
type                    = Explod
trigger1                = !time
anim                    = 8100
ID                      = 7011
pos                     = 0,0
scale                   = 1, 1
removetime              = -2
sprpriority             = 3
ownpal                  = 1
removeongethit          = 1
pausemovetime           = 999
facing                  = -1

[State 0:       Masenko ]
type                    = Helper
trigger1                = !Time
helpertype	            = normal
id                      = 8306
pos                     = 41,-44
stateno	                = 8306
keyctrl	                = 0
ownpal		            = 1
size.xscale             = .9
size.yscale             = .72

[State 0, ]
type                    = ChangeState
trigger1                = !AnimTime
value                   = 0
ctrl                    = 1

;---------------------------------------------------------------------------
;Chou Kamehameha
[statedef 4000]
type 		= S
movetype		= A
physics		= S
juggle	    	= 1
anim    		= 4000
velset		= 0,0
ctrl		= 0
poweradd		= -3000
facep2		= 0
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority         = 2

[State 0: PosSet]
type                    = PosSet
trigger1                = !Time
y                       = 0

;---------------

[State 0, ]
type                    = PlaySnd
trigger1                = time = 160
value                   = 1045, 3

[State 0, ]
type                    = PlaySnd
trigger1                = !time
trigger2                = time = 15
value                   = 3001, 0

[State 0, ]
type                    = PlaySnd
trigger1                = animelem = 6
value                   = 1045, 5



[State 0:       BGPalFX]
type                    = BGPalFX
trigger1                = !Time
time                    = 50
add                     = -100,-100,-100
mul                     = 256,256,256

[State 0:       Pause]
type                    = Pause
trigger1                = !Time
time                    = 50
movetime                = 50

[State 0:       EnvShake]
type 			        = EnvShake
Triggerall              = 1
trigger1 		        = gametime%2
time 			        = 5
freq 			        = 70
ampl 			        = 7

[State 0, Helper]
type = Helper
trigger1 = !time
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

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 8400
ID = 8400
pos = 0,-40
postype = p1
bindtime = -1
removetime = -2
supermovetime = 999
pausemovetime = 999
scale = 1,1
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause = 1



;BGPalFX
[State 0: BGPalFX Helper]
type                    = Helper
trigger1                = Time = 50
ID                      = 8601
stateno                 = 8601
ownpal                  = 1
pausemovetime           = 999

;---------------

[State 0:       PlaySND]
type                    = PlaySnd
trigger1                = AnimElem = 2
value                   = 700, 0
channel	                = -1
volume                  = 255


[State 0:       Screen Flash]
type                    = EnvColor
trigger1                = AnimElem = 2
value                   = 255,255,255
time                    = 2
under                   = 0

[State 0:       GroundWaves]
type                    = Explod
trigger1                = AnimElem = 2
anim                    = 7026
ID                      = 7011
pos                     = 0,5
scale                   = 2.5, 1
removetime              = -1
bindtime                = -1
sprpriority             = -2
pausemovetime           = 999
ownpal                  = 1
removeongethit          = 1

[State 0:       GroundWaves 2]
type                    = Explod
trigger1                = AnimElem = 2
anim                    = 7026
ID                      = 7011
pos                     = 0,5
removetime              = -1
bindtime                = -1
sprpriority             = -2
pausemovetime           = 999
ownpal                  = 1
removeongethit          = 1

[State 0:       Elec]
type                    = Explod
trigger1                = AnimElem = 2
anim                    = 7040
ID                      = 7011
pos                     = -5,10
bindtime                = -1
scale                   = 1, 1
removetime              = -1
bindtime                = -1
pausemovetime           = 999
sprpriority             = 4
ownpal                  = 1
removeongethit          = 1

[State 0: 	PalFX]
type			        = PalFX
trigger1		        = GameTime%45 = 0
time			        = 20
add			            = 85,85,85
mul			            = 256,256,256
sinadd		            = 85,85,85,25
invertall		        = 0
color			        = 256

[State 0:       Big S Dust Right]
type                    = Explod
trigger1                = AnimElem = 25
anim                    = 8100
ID                      = 2011
pos                     = -5,0
scale                   = 1, 1
removetime              = -1
sprpriority             = 3
ownpal                  = 1
removeongethit          = 1
pausemovetime           = 999

[State 0:       Big S Dust Left]
type                    = Explod
trigger1                = AnimElem = 25
anim                    = 8100
ID                      = 2011
pos                     = 0,0
scale                   = 1, 1
removetime              = -1
sprpriority             = 3
ownpal                  = 1
removeongethit          = 1
pausemovetime           = 999
facing                  = -1



[State 0:       Aura]
type                    = Explod
trigger1                = AnimElem = 2
anim                    = 7039
ID                      = 7011
pos                     = 0,0
scale                   = 1, .9
removetime              = -1
bindtime                = -1
pausemovetime           = 999
sprpriority             = 4
ownpal                  = 1
removeongethit          = 1

;---------------


[State 0:       Push Effect 2]
type                    = Helper
trigger1                = (TimeMod = 10,0) && Time > 50
helpertype	            = normal
name		            = "Push Effect 2"
id                      = 8030
pos                     = -20, floor (-pos y)
stateno	                = 8030
keyctrl	                = 0
ownpal		            = 1
supermovetime	        = 0
pausemovetime	        = 0
size.xscale	            = 1
size.yscale	            = 1

[State 0: PlaySnd]
type                    = PlaySnd
trigger1                = AnimElem = 6
value                   = 3000,0
volume                  = 255

;Contracting Ball
[State 0: Helper]
type                    = Helper
trigger1                = AnimElem = 6
helpertype              = normal
ID                      = 6040
pos                     = -25,-46
stateno                 = 6040
ownpal                  = 1
pausemovetime           = 999
size.xscale             = 2
size.yscale             = 2

[State 0: Explod]
type                    = Explod
trigger1                = AnimElem = 6
anim                    = 8402
ID                      = 8401
pos                     = -5,-35
bindtime                = -1
removetime              = -1
scale                   = .3,.3
sprpriority             = 4
ownpal                  = 1
removeongethit          = 1


[State 0:       Ring]
type                    = Helper
trigger1                = AnimElem = 6
helpertype	            = normal
id                      = 8501
stateno	                = 8501
keyctrl	                = 0
ownpal		            = 1
size.xscale             = 1
size.yscale             = 1
pausemovetime	        = 999

[State 0:       Ring 2]
type                    = Helper
trigger1                = AnimElem = 6
helpertype	            = normal
id                      = 8501
stateno	                = 8501
keyctrl	                = 0
ownpal		            = 1
size.xscale             = 2
size.yscale             = 2
pausemovetime	        = 999

[State 0:       Flash]
type                    = Explod
triggerall              = Time > 60
trigger1                = TimeMod = 60, 0
anim                    = 6120
pos                     = -15,-45
removetime              = -2
sprpriority             = 5
ownpal                  = 1
removeongethit          = 1


[State 0, ]
type                    = PlaySnd
trigger1                = time = 280
value                   = 1045, 4


[State 0: PlaySnd]
type                    = PlaySnd
triggerall              = Time > 60
trigger1                = TimeMod = 60, 0
value                   = 700, 0
volume                  = 255

[State 0, ]
type                    = ChangeState
trigger1                = time = 280  
value                   = 4001
ctrl                    = 0

;----------------------------------------------------------------
;Chou Kamehameha Fire
[statedef 4001]
type 		= S
movetype		= A
physics		= S
juggle	    	= 1
anim    	          = 4001
velset		= 0,0
ctrl		= 0
poweradd		= 0
facep2		= 0
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority         = 2

[State 0: RemoveExplod]
type                    = RemoveExplod
trigger1                = !Time
ID                      = 8401

[State 0: RemoveExplod]
type                    = RemoveExplod
trigger1                = AnimElem = 1, 110
ID                      = 7011

[State 0:       PlaySND]
type                    = PlaySnd
trigger1                = AnimElem = 1, 110
value                   = 700, 0
channel	                = -1
volume                  = 255



[State 0:       Screen Flash]
type                    = EnvColor
trigger1                = AnimElem = 1, 110
value                   = 255,255,255
time                    = 2
under                   = 0

[State 0: PlaySnd]
type                    = PlaySnd
trigger1                = !Time
value                   = 3002,1
volume                  = 255

[State 0: Explod]
type                    = Explod
trigger1                = AnimElem = 4
anim                    = 80051
ID                      = 80051
pos                     = 40, 10
bindtime                = -1
removetime              = -1
scale                   = 1.3,1.3
sprpriority             = 4
ownpal                  = 1
removeongethit          = 1

[State 0: PlaySnd]
type                    = PlaySnd
trigger1                = !Time
value                   = 3000, 3
volume                  = 255

[State 0:       Beam]
type                    = Helper
trigger1                = !Time
helpertype	            = normal
id                      = 8320
stateno	                = 8320
keyctrl	                = 0
size.xscale             = 1.1
size.yscale             = 1.1
ownpal		            = 1

[State 0:       Slow Mo]
type                    = Helper
Triggerall              = (NumHelper(8320)||NumHelper(8403)) && !AnimElem = 1, >= 90
trigger1                = helper(8320), movehit
helpertype	            = normal
id                      = 8405
stateno	                = 8405
keyctrl	                = 0
ownpal		            = 1
pausemovetime	        = 999
ignorehitpause          = 1

[State 0, ]
type                    = ChangeState
trigger1                = AnimElem = 1, 111
value                   = 0
ctrl                    = 1

;---------------------------------------------------------------------------












