 ;Kikou Ha - Elbow Dash
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


[State 0, PlaySnd]
type = PlaySnd
triggerall = anim = 2500
trigger1 = animelem = 3
value = S25,0



[state 1030]
type = velset
triggerall = anim = 2500
trigger1 = animelem = 3
x = 12

[state 1030]
type = velset
triggerall = anim = 2500
trigger1 = animelemtime(4) > 6 || movehit
x = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = movehit
value = 2501
;elem = 1
;ignorehitpause = 
persistent = 0



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

[State 0, ]
type = AfterImage
trigger1 = AnimElem = 4
time = 16
length = 18
palbright = 10,10,10
palcontrast = 120,120,120
paladd = 0,0,0
palmul = 1,1,1
timegap = 1
framegap = 5
trans = Add

[State 0, ]
type = HitDef
triggerall = anim = 2500
trigger1 = !time
attr = S, NA
damage = 75
animtype = Light
guardflag = MA
hitflag = MA
priority = 3, Hit
pausetime = 7, 12
sparkno = S8000+(random%2)
guard.sparkno = S8020+(random%2)
sparkxy = -19, -78
hitsound = S301, 3
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 1, 2))
ground.type = High
ground.slidetime = 7
ground.hittime  = 12
ground.velocity = -4.3
air.type = High
air.hittime = 12
air.velocity = -3,-3
airguard.velocity = -2,0
givepower = 10
snap = 15,0

[State 0, ]
type = HitDef
triggerall = anim = 2501
trigger1 = animelem = 2
trigger2 = animelem = 6
attr = S, NA
damage = 25
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 7, 10
sparkno = S8000+(random%2)
guard.sparkno = S8020+(random%2)
sparkxy = -19, -78
hitsound = S301, 2
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 1, 2))
ground.type = High
ground.slidetime = 7
ground.hittime  = 12
ground.velocity = -1.3
air.type = High
air.hittime = 12
air.velocity = -3,-3
airguard.velocity = -2,0
givepower = 10



[State 0: Helper]
type                    = Helper
trigger1                = time = 0
helpertype              = normal
ID                      = 8000
pos                     = 0,0
postype                 = p1
facing                  = 1
stateno                 = 8000
ownpal                  = 1
size.xscale             = .8
size.yscale             = .7
supermovetime = 999
pausemovetime = 999




[State 0, ChangeState]
type = ChangeState
trigger1 = anim = 2501 && !animtime
value = stateno+1
ctrl = 0
;anim =
;ignorehitpause = 
;persistent = 

[State 0, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 0
ctrl = 1
;anim =
;ignorehitpause = 
;persistent = 

;--------------------------------------------------------------------------
;Kikou Ha
[StateDef 2501]
type = S
movetype= A
physics = N
juggle = 10
velset = 0,0
ctrl = 0
anim = 2502
poweradd = 0
sprpriority = 2

[State 0: PosSet]
type                    = PosSet
trigger1                = !Time
y                       = 0

;---------------

[State 0, ]
type                    = PlaySnd
trigger1                = AnimElem = 1
value                   = 180,7
volume                  = 255


[State 0, ]
type                    = PlaySnd
trigger1                = AnimElem = 2
value                   = 2100,4
volume                  = 255

[State 0, ]
type                    = PlaySnd
trigger1                = AnimElem = 3
value                   = 2500,0
volume                  = 255


[State 0: BGPalFX]
type                    = BGPalFX
trigger1                = !Time
time                    = 20
add                     = -100,-100,-100
mul                     = 256,256,256


[State 0:       Pause]
type                    = Pause
trigger1                = !Time
time                    = 20
movetime                = 20




[State 0, Helper]
type = Helper
trigger1 = animelem = 3
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
trigger1 = animelem = 3
anim = 8303
ID = 8400
pos = 0,0
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


[State 0:       Big S Dust Right]
type                    = Explod
trigger1                = AnimElem = 3
anim                    = 8100
ID                      = 7011
pos                     = -5,0
scale                   = 1, 1
removetime              = -2
sprpriority             = 3
ownpal                  = 1
removeongethit          = 1
pausemovetime           = 999




[State 0: MakeDust]
type                    = MakeDust
trigger1                = AnimElem = 3,>  0 && AnimElem = 3,<  24
pos                     = 0,7
spacing                 = 2



;--------------

[State 0: Helper]
type                    = Helper
trigger1                = AnimElem = 3
ID                      = 8005
stateno                 = 8005
ownpal                  = 1
pos                     = 00
size.xscale             = 1
size.yscale             = 1

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







[State 0, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 0
ctrl = 1
;anim =
;ignorehitpause = 
;persistent = 
;--------------------------------------------------------------------------
[Statedef 3000, Kamehameha ]
type    = S
movetype= I
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 3000
poweradd = -1000
sprpriority = 3

[State 0: PosSet]
type                    = PosSet
trigger1                = !Time
y                       = 0

;---------------

;-----------------
;--Sounds----
;-----------------

[State 0, ]
type                    = PlaySnd
trigger1                = !time
value                   = 3001, 0

[State 0, ]
type                    = PlaySnd
trigger1                = !Time
value                   = 700, 0

[State 0, ]
type                    = PlaySnd
trigger1                = !time
value                   = 3000, 0


[State 0, ]
type                    = PlaySnd
trigger1                = animelem = 3
value                   = 1080, 0


[State 0, ]
type                    = PlaySnd
trigger1                = AnimElem = 4, 10
value                   = 3000, 1


[State 0, ]
type                    = PlaySnd
trigger1                = AnimElem = 4, 45
value                   = 3000, 2


[State 0, ]
type                    = PlaySnd
trigger1                = AnimElem = 4, 75
value                   = 3000, 3


[State 0, ]
type                    = PlaySnd
trigger1                = AnimElem = 4, 115
value                   = 3000, 4


[State 0, ]
type                    = PlaySnd
trigger1                = AnimElem = 6
value                   = 3000, 5
Persistent              = 0



;----------------------
;--Super Effects---
;----------------------


[State 0:       BGPalFX]
type                    = BGPalFX
trigger1                = !Time
time                    = 180
add                     = -100,-100,-100
mul                     = 256,256,256

[State 0:       Pause]
type                    = Pause
trigger1                = !Time
time                    = 180
movetime                = 180

[State 0:       EnvShake]
type 			        = EnvShake
Triggerall              = Time < 180
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




;----------------------
;--Effects-----
;----------------------


;--|Aura|----

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

;--|Khh Ball-------

[State 0, Explod]
type = Explod
trigger1 = animelem = 4 
anim = 8314
ID = 8313
pos = -10,-52
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 999
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 = animelem = 4
anim = 8302
ID = 8313
pos = -10,-52
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 999
scale = 1.2,1.2
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 = animelem = 1
anim = 8306
ID = 8313
pos = 10,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = 999
scale = 1.2,1.2
sprpriority = 2
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1


[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = animelem = 5	
id = 8313
;ignorehitpause = 
;persistent = 


[State 0:       Ball transition]
type                    = Explod
trigger1                = !Time
anim                    = 8320
pos                     = 47, -64
bindtime                = -1
scale                   = .48, .48
removetime              = -2
pausemovetime           = 999
sprpriority             = 4
ownpal                  = 1
removeongethit          = 1

[State 0:       Ball transition 2]
type                    = Explod
trigger1                = AnimElem = 2
anim                    = 8321
pos                     = 23, -48
bindtime                = -1
scale                   = .3, .3
removetime              = -2
pausemovetime           = 999
sprpriority             = 4
ownpal                  = 1
removeongethit          = 1

[State 0:       Ball transition 2]
type                    = Explod
trigger1                = AnimElem = 3
anim                    = 8321
pos                     = 3, -44
bindtime                = -1
scale                   = .3, .3
removetime              = -2
pausemovetime           = 999
sprpriority             = 4
ownpal                  = 1
removeongethit          = 1

;--| Khh Fire-----

[State 0:       Beam]
type                    = Helper
trigger1                = AnimElem = 6
helpertype	            = normal
id                      = 8305
stateno	                = 8305
keyctrl	                = 0
ownpal		      = 1
size.yscale               = .9

[State 0: Explod]
type                    = null; Explod
trigger1                = AnimElem = 6
anim                    = 6050
ID                      = 8306
pos                     = 28, -64
bindtime                = -1
removetime              = -1
scale                   = .7,.7
sprpriority             = 3
ownpal                  = 1
removeongethit          = 1

[State 0, Explod]
type = Explod
trigger1 = animelem = 6
anim = 8303
ID = 8400
pos = 20,0
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

[State 0: RemoveExplod]
type                    = RemoveExplod
trigger1                = time = 239
ID                      = 8306

[State 0, ChangeState]
type = ChangeState
triggerall = (Command = "QCF_x") && (Power >= 1000) || (Command = "QCF_y") && (Power >= 1000)
trigger1 = (AnimElem = 4,> 116 && AnimElem = 4, < 160) 
value = 3002
ctrl = 0



[State 0, ]
type                    = ChangeState
trigger1                = Time = 250
value                   = 3001
ctrl                    = 0

;-------------------------------------------------------------------------
[Statedef 3001,Khh]
type    = A
movetype= A
physics = N
juggle  = 1
velset = 0,0
ctrl = 0
anim = 3001
poweradd = 0
sprpriority = 1


[State 0, ChangeState]
type = ChangeState
trigger1 = (!animtime)
value = 0
ctrl = 1

;-------------------------------------------------------------------------
;Warp Khh
[Statedef 3002]
type    = A
movetype= A
physics = N
juggle  = 1
velset = 0,0
ctrl = 0
anim = 3002
poweradd = -1000
sprpriority = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S190,8

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = !time	
id = 8313
;ignorehitpause = 
;persistent = 


[State 0, ]
type                    = PlaySnd
trigger1                = animelemtime(2) = 2
value                   = 3000, 5
Persistent              = 0


[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 2
x = floor(p2dist X) -80

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

[State 0:       Beam]
type                    = Helper
trigger1                = animelemtime(2) = 5
helpertype	            = normal
id                      = 8305
stateno	                = 8306
keyctrl	                = 0
ownpal		      = 1
size.yscale               = 1.4
persistent                = 0

[State 0, Explod]
type = Explod
trigger1 = animelemtime(2) = 5
anim = 8303
ID = 8400
pos = 20,0
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
persistent = 0


[State 0, ChangeState]
type = ChangeState
trigger1 = time = 72
value = 0
ctrl = 1

;-------------------------------------------------------------------------
;Galick Gun Air - Start
[StateDef 3003]
type = A
movetype= A
physics = N
juggle = 0
velset = 0,0
ctrl = 0
anim = 3003
poweradd = -1000
sprpriority = 2

[State 0, ScreenBound]
type = null;ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0


[State 0, SuperPause]
type = SuperPause
trigger1 = AnimElem = 2
time = 45
anim = -1
sound = -1
movetime = 45
darken = 0

[State 40, ]
type = Explod
trigger1 = animelem = 1
anim = 8420
ID = 8420
pos = 5,-45
postype = p1
facing = -1
bindtime = 1
;vel = 2,0
scale=.8111,.8111
removetime = 70
sprpriority = 1
ownpal = 1
supermovetime = 999
pausemovetime = 999


[State 0, PalFXWiz]
type = PalFX
trigger1 = !time
time = 50
add = 220,60,230
mul = 180,180,190
sinadd = -180,-60,-230,10
invertall = 0
color = 230

[State 0, Helper]
type = Helper
trigger1 = AnimElem = 2
helpertype = normal ;player
name = "Shockwave"
ID = 8200
stateno = 8200
pos = -17,-66
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999
pausemovetime = 999

[State 0, BGPalFX]
type = BGPalFX
trigger1 = time < 45
time = 1
add = 256-floor(time*5.67),256-floor(time*5.67),256-floor(time*5.67)
mul = 256,256-floor(time*5.67),256
color = 256-floor(time*5.67)

[State 0, Helper]
type = Helper
trigger1 = AnimElem = 2
helpertype = normal
name = "chargegalick"
ID = 8506
stateno = 8507
pos = -17,-266
postype = p1
facing = 1
ownpal = 1
size.xscale = .4
size.yscale = .4
supermovetime = 999

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 8400
ID = 8400
pos = -17,-66
postype = p1
bindtime = -1
removetime = -2
supermovetime = 999
scale = 1,1
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause = 1


[State 0, ChangeState]
type = ChangeState
trigger1 = time = 50
value = 3004
ctrl = 1
;----------------------------------------------------------------------
;Galick gun (Air) - Fire
[StateDef 3004]
type = A
movetype= A
physics = N
;juggle = 6
velset = 0,0
ctrl = 0
anim = 3004
;poweradd = 0;0
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S3001,3
volumescale = 55


[State 0, BGPalFX]
type = PalFX
trigger1 = !time
time = 20
add = 198,128,198
mul = 356,356,256
sinadd = -128,-128,-128,80


[State 0, VarSet]
type = VarSet
trigger1 = !time
v = 42
value = 0
ignorehitpause = 1
persistent = 0

[State 0, VarSet]
type = VarSet
trigger1 = numhelper(8516)
v = 42
value = 1
ignorehitpause = 1
persistent = 0


[State 0, ScreenBound]
type = ScreenBound
trigger1 = var(42) = 1
value = 0
movecamera = 0,0
ignorehitpause = 1
;persistent =

[State 0, BGPalFX]
type = BGPalFX
trigger1 = time <= 9
time = 1
add = 0,0,0
mul = 256,floor((time*25.6)),256
color = floor((time*25.6))


[State 0, Helper]
type = Helper
trigger1 = (Anim = 3004) && (AnimElem = 2)
helpertype = normal
name = "galickgun!"
ID = 2515
stateno = 2515
pos = 55,-32
postype = p1
facing = 1
ownpal = 1
size.xscale = .7
size.yscale = .7
supermovetime = 999


[State 0, ChangeState]
type = ChangeState
trigger1 = time = 30
value = 50
ctrl = 0

;-------------------------------------------------------------------------
; Shokan Idou Kick Attack (SIKA)
[Statedef 3500]
type     = S
movetype = A  
physics  = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 3500
poweradd = -1000
sprpriority = 1

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 3
statetype = A       ;S,A,C,L
movetype = A        ;I,A,H
physics = N        ;A,C,S,N
;ignorehitpause = 
;persistent = 


[state 1040]
type = velset
trigger1 = animelem = 3
x = 5
y = -4

[state 1040]
type = gravity
triggerall = statetype = A
trigger1 = 1


[State 0, ]
type                    = PlaySnd
trigger1                = !time
value                   = 3001, 0


[State 200]
type = PlaySnd
trigger1 = animelem= 3
value = S200,4

[State 200]
type = PlaySnd
trigger1 = animelem= 2
value = S210,2


[State 0, ]
type                    = HitDef
trigger1                = !time
attr                    = A, SA
damage                  = 40,5
animtype                = Heavy
guardflag               = H
hitflag                 = MA
priority                = 3, Hit
pausetime               = 8, 12
sparkno                 = S8000+(random%2)
guard.sparkno           = S8022+(random%2)
sparkxy                 = -8, -59
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
givepower		= 20
yaccel		        = 0.5
fall                    =  0
snap = 10






;----------------------
;--Super Effects---
;----------------------


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



;----------------------
;--Effects-----
;----------------------


;--|Aura|----

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


[State 0, ChangeState]
type = ChangeState
trigger1 = movehit && Pos Y >= 0 && animelem = 8,>0
value = stateno+1
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = !movehit && Pos Y >= 0 && animelem = 8,>0
value = 52
ctrl = 1
;-------------------------------------------------------------------------------
[Statedef 3501,idleness]
type    = S
movetype= I
physics = S
juggle  = 2
velset = 0,0
ctrl = 0
anim = 3501
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
[Statedef 3502, Super Drill ---- Cat's Paw]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 3502
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
attr = S, HA
damage = 25
animtype = back
guardflag  = MA
hitflag    = MA
priority = 3, Hit
pausetime = 4, 7
sparkno                 = S8000+(random%2)
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
value = stateno+1
ctrl = 0

[State 310, End]
type = ChangeState
trigger1 = !movehit && (!animtime)
value = 0
ctrl = 1
;----------------------------------------------------------------------
[Statedef 3503,Cat's Paw]
type    = A
movetype= A
physics = N
juggle  = 2
velset = 0,0
ctrl = 0
anim = 3503
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
damage = 35
animtype = Light
guardflag  = HA
hitflag    = HAF
priority = 3, Hit
pausetime = 10, 12
sparkno                 = S7034
guard.sparkno           = S8022+(random%2)
sparkxy = -16,-76
hitsound = S301, 4
guardsound = S400, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 10
ground.velocity = -2.63655, -7.9899
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.3655, -8.96969
air.hittime = 12
fall = 1
fall.recover = 0

[State Proper]
Type 		= StateTypeSet
Trigger1 	= Pos Y < 0
stateType 		= A
moveType 		= A
physics 		= N

[State 0, ChangeState]
type = ChangeState
trigger1 = movehit && animtime = 0
value = stateno+1
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = !movehit && animtime = 0
value = 50
ctrl = 1
;-------------------------------------------------------------------------
;Spin Kick 
[Statedef 3504]
type    = A
movetype= A
physics = N
juggle  = 2
velset = 0,0
ctrl = 0
anim = 3504
poweradd = 0
sprpriority = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S210,1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S200,3

[State 200, 1]
type = HitDef
trigger1 = !time
attr = A, NA
damage = 28
animtype = Light
guardflag  = HA
hitflag    = HAF
priority = 3, Hit
pausetime = 11, 14
sparkno                 = S7034
guard.sparkno           = S8022+(random%2)
sparkxy = -16,-56
hitsound = S301, 4
guardsound = S400, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 10
ground.velocity = -1.63655, -9.9899
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -8.63655, -2.96969
air.hittime = 12
fall = 1
fall.recover = 0
air.fall = 1


[State 0, ChangeState]
type = ChangeState
trigger1 = movehit && animtime = 0
value = stateno+1
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = !movehit && animtime = 0
value = 50
ctrl = 1


;-----------------------------------------------------------------------
;Shokan Idou Kick
[Statedef 3505]
type    = A
movetype= A
physics = N
juggle  = 2
velset = 0,0
ctrl = 0
anim = 1091
poweradd = 0
sprpriority = 1


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

[State 0, Pause]
type = Pause
trigger1 = animelem = 2
time = 3
movetime = 3

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1


[State 0, Turn]
type = Turn
trigger1 = animelem = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S190,8

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S2100,1

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 2
x = floor(p2dist X) -74



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
damage = 21
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
fall.recover = 0
air.type = High
air.hittime = 15
air.velocity = -12,3
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
trigger1 = !animtime && !movehit
value = 50
ctrl = 1

[State 0, ]
type = ChangeState
trigger1 = !animtime 
value = stateno+1
ctrl = 0


;------------------------------------------------------------------------------
;Shokan Idou Knee
[Statedef 3506]
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
ctrl = 0
anim = 3505
poweradd = 0
sprpriority = 1


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

[State 0, Pause]
type = Pause
trigger1 = animelem = 2
time = 3
movetime = 3

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S2100,2

[State 0, Turn]
type = Turn
trigger1 = animelem = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S190,8

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 2
x = floor(p2dist X) -74


[State 0, PosAdd]
type = Posset
trigger1 = animelem = 2
y = 0


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
damage = 21
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 11, 10
sparkno = S7034
guard.sparkno = S8020+(random%2)
sparkxy = 15, -62
hitsound = S301, 4
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 0, 1))
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -12,-4
Air.Fall = 1
fall = 1
fall.recover = 0 
air.type = High
air.hittime = 15
air.velocity = -12,-6
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
value = stateno+1
ctrl = 0

;------------------------------------------------------------------------------
;Shokan Idou Kick Down
[Statedef 3507]
type    = A
movetype= A
physics = N
juggle  = 2
velset = 0,0
ctrl = 0
anim = 3506
poweradd = 0
sprpriority = 1


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

[State 0, Pause]
type = Pause
trigger1 = animelem = 2
time = 3
movetime = 3

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S2100,3

[State 0, Turn]
type = Turn
trigger1 = animelem = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S190,8

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 2
x = floor(p2dist X) -70
Y = floor(enemynear(0), const(size.head.pos.y)-43)



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
damage = 30
animtype = back
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 12, 9
sparkno = S7034
guard.sparkno = S8020+(random%2)
sparkxy = 15, 20
hitsound = S301, 4
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 0, 1))
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -12,7
Air.Fall = 1
fall = 1
fall.recover = 0
air.type = High
air.hittime = 15
air.velocity = 0,8
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


;------------------------------------------------------------------------------
; Sayajin Strike - P2 Get Hit State
[Statedef 3510]
type                    = A
movetype                = H
physics                 = N
ctrl                    = 0
poweradd                = 0
juggle                  = 0
facep2                  = 1
hitdefpersist           = 0
movehitpersist          = 0
hitcountpersist         = 0
sprpriority             = 1

[State 0:     ChangeAnim]
type 			        = ChangeAnim2
trigger1 		        = (!Time)
value 		            = 3510

[State 0, No scroll]
type                    = ScreenBound
triggerall              = Pos y < -15
trigger1                = BackEdgeBodyDist < 65
trigger2                = FrontEdgeBodyDist < 65
value                   = 1
movecamera              = 0,1

;---------------------------------------------------------------------------
;p2 custom state
[Statedef 3511]
type                    = A
movetype                = H
physics                 = N

[State 0, Anim]
type                    = ChangeAnim2
trigger1                = !Time
value                   = 3511

[State 0, Turn]
type                    = Turn
trigger1                = (!Time) && (FrontEdgeBodyDist <= 40)

[State 0, Pos]
type                    = PosAdd
trigger1                = !Time
x                       = BackEdgeBodyDist

[State 0, Stop moving]
type                    = PosFreeze
trigger1                = 1
x                       = 1
y                       = 1

[State 0, Spark]
type                    = Explod
trigger1                = !Time
anim                    = F72
pos                     = 0, floor (screenpos y) - 50
postype                 = back
sprpriority             = 3

[State 0, State]
type                    = ChangeState
trigger1                = !AnimTime
value                   = 3512
ctrl                    = 1

;-------------------------------------------------------------
; Blaster Ball - bounce off wall
[Statedef 3512]
type                    = A
movetype                = H
physics                 = N

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
;Genki Dama Rise
[Statedef 4000]
type                    = S
movetype                = I
physics                 = S
anim                    = 4000
ctrl                    = 0

[State 0: StateTypeSet]
type			        = StateTypeSet
trigger1		        = AnimElem = 2
statetype		        = A
physics		            = N



[State 0: VelSet]
type                    = VelSet
trigger1                = AnimElem = 3
y                       = -8
x                       = 0

[State 0: VelAdd]
type                    = VelAdd
trigger1                = (AnimElem = 3, > 0 && AnimElem = 4, < 0) && (Vel Y < -1)
y                       = 0.40
x                       = 0

[State 0: VelSet]
type                    = VelSet
trigger1                = AnimElem = 4
y                       = 0
x                       = 0

[State 0:       Screen Flash]
type                    = EnvColor
trigger1                = AnimElem = 5
value                   = 255,255,255
time                    = 5
under                   = 0

[State 0:     PlaySND]
type                    = PlaySnd
trigger1                = AnimElem = 5
value                   = 700, 0
channel	                = -1



[State 0: ChangeState]
type                    = ChangeState
trigger1                = !AnimTime
value                   = 4001

;---------------------------------------------------------------------------
;Genki Dama
[Statedef 4001]
type 			        = A
movetype		        = A
physics		            = N
juggle	    	        = 1
anim    			    = 4001
velset		            = 0,0
ctrl			        = 0
poweradd		        = -2000
facep2		            = 0
hitdefpersist	        = 0
movehitpersist	        = 0
hitcountpersist	        = 0
sprpriority		        = 2

;---------------



[State 0: Turn]
type                    = Turn
triggerall              = AnimElem = 2 < 0
trigger1                = p2dist x <=0

;--------------------
;-|Super Effects
;---------------------
[State 0, ]
type                    = PlaySnd
trigger1                = !Time
value                   = 700, 0


;---------------

[State 0, ]
type                    = PlaySnd
trigger1                = time = 15
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
ID = 6000
pos = 0,-40
postype = p1
bindtime = -1
removetime = -1
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
trigger1                = Time = 50
ID                      = 6000

;---------------

[State 0, ]
type                    = PlaySnd
trigger1                = !Time
value                   = 700, 2

[State 0, ]
type                    = PlaySnd
trigger1                = Time = 50
value                   = 4000, 0
channel                 = 8

[State 0, ]
type                    = PlaySnd
trigger1                = Time = 100
value                   = 4000, 1
channel                 = 8

[State 0, ]
type                    = PlaySnd
trigger1                = AnimElemtime(2) = 10
value                   = 4000, 2
volume                  = 255
channel                 = 8



[State 0, ]
type                    = PlaySnd
trigger1                = AnimElemtime(1) = 60
value                   = 180, 0
channel                 = 8





[State 0:       Push Effect 2]
type                    = Helper
trigger1                = (TimeMod = 10,0) && Time > 50
helpertype	    = normal
name		    = "Push Effect 2"
id                      = 8032
pos                     = -20, floor (-pos y)
stateno	              = 8032
keyctrl	              = 0
ownpal		    = 1
supermovetime	    = 0
pausemovetime	    = 0
size.xscale	    = 1
size.yscale	    = 1




[State 0:		Helper]
type		= Helper
Triggerall          = AnimElem = 1 > 50 && AnimElem = 1 < 150
trigger1	          = (Time > 20) && ((GameTime%5) = 0) && (Random < 249) && (NumHelper(8400) < 5)
helpertype	= Normal
id		= 8400
pos		= 0,0
postype		= p1
facing		= 0
stateno		= 8400
ownpal		= 1
size.xscale	= 1
size.yscale	= 1



[State 0:		Helper]
type		= Helper
Triggerall          = AnimElem = 1 > 50 && AnimElem = 1 < 150
trigger1		= (Time > 20) && ((GameTime%5) = 0) && (Random < 249) && (NumHelper(8400) < 5)
helpertype          = Normal
id		= 8401
pos		= 0,0
postype		= p1
facing		= 0
stateno		= 8400
ownpal		= 1
size.xscale         = 1
size.yscale         = 1

[State 0:		Helper]
type		= Helper
Triggerall          = AnimElem = 1 > 50 && AnimElem = 1 < 150
trigger1	          = (Time > 20) && ((GameTime%5) = 0) && (Random < 249) && (NumHelper(8400) < 5)
helpertype	= Normal
id		= 8400
pos		= 0,0
postype		= p1
facing		= 0
stateno		= 8400
ownpal		= 1
size.xscale	= 1
size.yscale	= 1



[State 0:		Helper]
type	          = Helper
Triggerall          = AnimElem = 1 > 50 && AnimElem = 1 < 150
trigger1		= (Time > 20) && ((GameTime%5) = 0) && (Random < 249) && (NumHelper(8400) < 5)
helpertype          = Normal
id	          = 8402
pos		= 0,0
postype		= p1
facing		= 0
stateno		= 8400
ownpal		= 1
size.xscale	= 1
size.yscale	= 1

[State 0:		Helper]
type		= Helper
Triggerall                            = AnimElem = 1 > 50 && AnimElem = 1 < 150
trigger1		                  = (Time > 20) && ((GameTime%5) = 0) && (Random < 249) && (NumHelper(8400) < 5)
helpertype		        = Normal
id			            = 8402
pos			            = 0,0
postype		            = p1
facing		            = 0
stateno		            = 8400
ownpal		            = 1
size.xscale		        = 1
size.yscale		        = 1

[State 0: Helper]
type                    = Helper
trigger1                = Time = 50
helpertype              = normal
ID                      = 8401
stateno                 = 8401
ownpal                  = 1

;---------------

[State 0:       EnvShake]
type 			        = EnvShake
Triggerall              = AnimElem = 2 > 0
trigger1 		        = (TimeMod = 3, 0)
time 			        = 3
freq 			        = 40
ampl 			        = 5

[State 0:       EnvShake]
type 			        = EnvShake
Triggerall              = AnimElem = 2 > 110
trigger1 		        = gametime%2
time 			        = 5
freq 			        = 70
ampl 			        = 7

[State 0:     PlaySND]
type                    = PlaySnd
trigger1                = AnimElem = 3
value                   = 700, 0
channel	                = -1

[State 0:     PlaySND]
type                    = PlaySnd
trigger1                = AnimElem = 2, 110
value                   = 4000, 3
channel	                = -1

[State 0, AllPalFX]
type                    = AllPalFX
trigger1                = AnimElem = 3
time                    = 10
add                     = 256,256,256
mul                     = 256,256,256
sinadd                  = 256,256,256,20
invertall               = 0
color                   = 256

[State 0: Helper]
type                    = Helper
trigger1                = AnimElem = 2
helpertype              = normal
name                    = "Genki Dama"
ID                      = 8402
pos                     = -3,-250
postype                 = p1
stateno                 = 8402
ownpal                  = 1
size.xscale             = 2.75
size.yscale             = 2.75

[State 0:       Slow Mo]
type                    = Helper
Triggerall              = NumHelper(8402)||NumHelper(8403)
trigger1                = helper(8402), movehit
helpertype	            = normal
id                      = 8405
stateno	                = 8405
keyctrl	                = 0
ownpal		            = 1
pausemovetime	        = 999
ignorehitpause          = 1

;---------------

[State 0, ]
type                    = ChangeState
trigger1                = !AnimTime
value                   = 50
ctrl                    = 1

;---------------------------------------------------------------------------
