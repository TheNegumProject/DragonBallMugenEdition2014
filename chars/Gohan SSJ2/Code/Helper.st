;--------------------------------------------------------------------------
;ki blast
[StateDef 1310]
type = A
movetype= A
physics = N
juggle  = 1
velset = 7+(random%2),4-(random%8)
ctrl = 0
anim = 8330
poweradd = 0;0
sprpriority = 5

[State 0, VelMul]
type = VelMul
trigger1 = 1
x = 1
y = .7
;ignorehitpause =
;persistent =


[State 0, ]
type = Explod
trigger1 = (time%6)=0
anim = 8100
ID = 8100
pos = 0,0-ceil(pos Y)
facing = 1
scale = .7,.3
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 1


[State 0, Explod]
type = Explod
trigger1 = !time
anim = 8310
ID = 8310
pos = -27,2
postype = p1  ;p2,front,back,left,right
removetime = -2
bindtime = 1
scale = .4,.4
sprpriority = 6
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, PalFXWiz]
type = PalFX
trigger1 = !Var(6)
time = 999
add = 0,0,0
mul = 256,256,512
sinadd = 0,0,0,1
invertall = 0
color = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = Parent, Var(6) = 0
trigger1 = time = [0,1]
flag = invisible
ignorehitpause = 1

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NP,SP,HP
slot = 0
stateno = 1311
time = 1

[State 0, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = 1

[State -2, ComboDampener-Increase]
type = ParentVarAdd
trigger1 = MoveType = A
trigger1 = MoveHit = 1
trigger1 = FVar(10) < 31
trigger1 = NumTarget
fv = 10
value = 1
persistent = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, HitDef]
type = HitDef
trigger1 = !time
attr = A,SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = Hard         ;light,medium,hard,back,up,diagup
air.animtype = Hard
;fall.animtype = Back
priority = 4,Hit   ;Hit,Miss,Dodge
damage = ceil((25-(parent, var(13)*2))*parent, fvar(13)),ceil(2*parent, fvar(13))
pausetime = 0,15
;guard.pause,0
sparkno = -1
guard.sparkno = -1
sparkxy = -20,0
hitsound = S1000,3
guardsound = S300,2
ground.type = Low      ;Low,Trip,None
ground.slidetime = 20
ground.hittime = 20
air.hittime = 20
ground.velocity = -7,0
air.velocity = -4,-3
sprpriority = 3
palfx.time = 15
palfx.add =  -100,-100,-20
palfx.mul = 256,256,500
palfx.sinadd = -80,-80,-80,15
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6
getpower = 0;0


[State 0, VelSet]
type = VelSet
trigger1 = movecontact
x = 0
y = 0
ignorehitpause = 1
persistent = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = Movecontact
value = 1311
ctrl = 0
ignorehitpause = 1
;persistent =

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 30
value = 1312
ctrl = 0
ignorehitpause = 1
;persistent =

;--------------------------------------------------------------------------
;Ki blast destroy
[StateDef 1311]
type = S
movetype= A
physics = N
velset = 0,0
Anim = 1
ctrl = 0
sprpriority = 5


[State 9050]
type 			= trans
trigger1 		= time = 0
trans 		= add

[State 9051:	End]
type			= Destroyself
trigger1		=  numtarget = 0
;--------------------------------------------------------------------------
;Kiblast fade away
[StateDef 1312]
type = S
movetype= A
physics = N
ctrl = 0
sprpriority = 5

[State 0, ]
type = Explod
triggerall = time<10
trigger1 = (time%6)=0
anim = 8100
ID = 8100
pos = 0,0-ceil(pos Y)
facing = 1
scale = .7-(time*.1),.3-(time*.05)
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 1

[State 0, PalFXWiz]
type = PalFX
trigger1 = !Var(6)
time = 999
add = 0,0,0
mul = 256,256,512
sinadd = 0,0,0,1
invertall = 0
color = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = Parent, Var(6) = 0
trigger1 = time = [0,1]
flag = invisible
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 0, VelMul]
type = VelMul
trigger1 = 1
x = .9
y = .9

[State 0, Trans]
type = Trans
trigger1 = 1
trans = Add

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 1-(time*.05),1-(time*.05)

[State 0, PalFX]
type = PalFX
trigger1 = !time
time = 20
sinadd = -255,-255,-255,80
invertall = 0
color = 256

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 20

;--------------------------------------------------------------------------
;ki blast - AIR
[StateDef 1315]
type = A
movetype= A
physics = N
juggle  = 0
velset = 7,7
ctrl = 0
anim = 8334
poweradd = 0;0
sprpriority = 5

[State 0, VelMul]
type = null;VelMul
trigger1 = 1
x = 1
y = .7
;ignorehitpause =
;persistent =

[State 0, PalFXWiz]
type = PalFX
trigger1 = !Var(6)
time = 999
add = 0,0,0
mul = 256,256,512
sinadd = 0,0,0,1
invertall = 0
color = 1


[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = Parent, Var(6) = 0
trigger1 = time = [0,1]
flag = invisible
ignorehitpause = 1

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NP,SP,HP
slot = 0
stateno = 1311
time = 1

[State 0, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = 1

[State -2, ComboDampener-Increase]
type = ParentVarAdd
trigger1 = MoveType = A
trigger1 = MoveHit = 1
trigger1 = FVar(10) < 31
trigger1 = NumTarget
fv = 10
value = 1
persistent = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, HitDef]
type = HitDef
trigger1 = !time
attr = A,SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAFD        ;HLAFD+-
guardflag = MA         ;HLA
animtype = Hard         ;light,medium,hard,back,up,diagup
air.animtype = back
;fall.animtype = Back
priority = 4,Hit   ;Hit,Miss,Dodge
damage = ceil((25-(parent, var(13))*2)*parent, fvar(13)),ceil(5*parent, fvar(13))
pausetime = 0,15
;guard.pause,0
sparkno = -1
guard.sparkno = -1
sparkxy = -20,0
hitsound = S1000,3
guardsound = S300,2
ground.type = High      ;Low,Trip,None
Air.type = Low      ;Low,Trip,None
ground.slidetime = 20
ground.hittime = 20
air.hittime = 20
ground.velocity = -7,0
air.velocity = -4,4
sprpriority = 3
palfx.time = 15
palfx.add =  -100,-100,-20
palfx.mul = 256,256,500
palfx.sinadd = -80,-80,-80,15
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6
getpower = 0;0




[State 0, VelSet]
type = VelSet
trigger1 = movecontact
x = 0
y = 0
ignorehitpause = 1
persistent = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = Movecontact
value = 1316
ctrl = 0
ignorehitpause = 1
;persistent =

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 25
value = 1312
ctrl = 0
ignorehitpause = 1
;persistent =

[State 0, ChangeState]
type = ChangeState
trigger1 = Pos Y >=0
value = 1316
ctrl = 0
ignorehitpause = 1
;persistent =

;--------------------------------------------------------------------------
;Ki blast destroy hitting ground
[StateDef 1316]
type = S
movetype= A
physics = N
velset = 0,0
;Anim = 8340
ctrl = 0
sprpriority = 5

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S1000,3
channel = 1
ignorehitpause = 1
;persistent =

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 8335
ID = 8340
pos = 0,0
postype = p1  ;p2,front,back,left,right
removetime = -2
bindtime = 1
scale = .35,.35
sprpriority = 5
ontop = 0
ownpal = 0

[State 0, PalFXWiz]
type = PalFX
trigger1 = !Var(6)
time = 999
add = 0,0,0
mul = 256,256,512
sinadd = 0,0,0,1
invertall = 0
color = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
flag2 = invisible
ignorehitpause = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = !AnimTime

;--------------------------------------------------------------------------
;ki blast hard -charge effect
[StateDef 1320]
type = S
movetype= I
physics = N
velset = 0,0
Anim = 8460
ctrl = 0
sprpriority = 5

[State 0, PosSet]
type = PosSet
trigger1 = 1
x = parent, pos x-0*facing
y = parent, pos y-70

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S3003,0
volume = 255
channel = 2

[State 0, PalFXWiz]
type =null; PalFX
trigger1 = !Var(6)
time = 999
add = 0,0,0
mul = 256,256,512
sinadd = 0,0,0,1
invertall = 0
color = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = parent, stateno != 1350
trigger2 = (parent, stateno = 1350) && (parent, Anim = 1351)
ignorehitpause = 1

;--------------------------------------------------------------------------
;ki blast hard -charge effect
[StateDef 1325]
type = S
movetype= I
physics = N
velset = 0,0
Anim = 8460
ctrl = 0
sprpriority = 5

[State 0, PosSet]
type = PosSet
trigger1 = 1
x = parent, pos x-0*facing
y = parent, pos y-90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S3003,0
volume = 255
channel = 2

[State 0, PalFXWiz]
type =null; PalFX
trigger1 = !Var(6)
time = 999
add = 0,0,0
mul = 256,256,512
sinadd = 0,0,0,1
invertall = 0
color = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = parent, stateno != 1350
trigger2 = (parent, stateno = 1350) && (parent, Anim = 1351)
ignorehitpause = 1

;-------------------------------------------------------------------------
;ki blast hard
[StateDef 1330]
type                    = U
movetype                = A
physics                 = U
anim                    = 70312
velset                  = 0,0
ctrl                    = 0
poweradd                = 0
juggle                  = 0
facep2                  = 0
hitdefpersist           = 0
movehitpersist          = 0
hitcountpersist         = 0
sprpriority             = 5
;---------------





[State 0:	VelSet]
type			        = VelSet
trigger1		        = 1
x			            = 12

[State 0: AssertSpecial]
type                    = AssertSpecial
trigger1                = 1
flag                    = noshadow

;---------------

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NP,SP,HP
slot = 0
stateno = 8101
time = 1

[State 0, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = 1

[State 0: Pause]
type                    = Pause
triggerall              = AnimElem = 1,>  0 && AnimElem = 4,<  0
trigger1                = gametime%1 = 0
time                    = 1
movetime                = 1

;---------------

[State 0: Dust]
type                    = MakeDust
trigger1                = (1)
pos                     = 20,floor(-pos y)
spacing                 = 2

[State 0: 	AfterImage]
type 			        = AfterImage
trigger1 		        = !Time
time 			        = 99999
framegap 		        = 2
length 		            = 20
paladd 		            = 0, 0, 0
palmul 		            = .50, .50, .50
palcontrast 	        = 100, 100, 100
trans 		            = add

[State 0]
type                    = AfterImageTime
trigger1                = 1
time                    = 5
ignorehitpause          = 1

[State 0, PalFXWiz]
type = PalFX
trigger1 = 1
time = 999
add = 90,80,-50
mul = 300,290,180
sinadd = 0,0,0,10
invertall = 0
color = 0


[State -2, ComboDampener-Increase]
type = ParentVarAdd
trigger1 = MoveType = A
trigger1 = MoveHit = 1
trigger1 = FVar(10) < 31
trigger1 = NumTarget
fv = 10
value = 1
persistent = 0

;---------------
;Hit Details
;---------------

[State 0, ]
type                    = HitDef
trigger1                = !time
attr                    = S, SP
damage                  = ceil((35+parent,var(20))*parent, fvar(13)),ceil((18+parent,var(20))*parent, fvar(13))
animtype                = back
guardflag               = MAFD
hitflag                 = MAF
priority                = 5, Hit
pausetime               = 0, 8
sparkno                 = S8000
guard.sparkno           = S8020+(random%2)
sparkxy                 = -30, 0
hitsound                = S3001, 2
guardsound              = S3001, 2
guardsound              = S400, 0
ground.type             = High
ground.slidetime        = 20
ground.hittime          = 20
ground.velocity         = -5,-5
airguard.velocity       = -5, -5
air.type                = low
air.velocity            = -5, -5
air.hittime             = 12
getpower                = 0
givepower		    = 60
Fall                    = 1
Fall.recover            = 0
yaccel		            = 0.5
envshake.time           = 20
envshake.freq           = 100
envshake.ampl           = 10
envshake.phase          = 10
id                      = 73012

[State 0: Helper]
type                    = Helper
triggerall              = !NumHelper(8101)
trigger1                = NumTarget(73012) && Movecontact
id                      = 8101
pos                     = 0,-60
postype                 = p2
stateno                 = 8101
ownpal                  = 1
size.xscale             = 1.1
size.yscale             = 1.1
ignorehitpause          = 1
persistent              = 0

;---------------

[State 0:    End]
type                    = DestroySelf
trigger1                = MoveContact || ((frontedgedist <= -75) || (backedgedist <= -75))

;---------------------------------------------------------------------------
;ki blast hard destroy
[StateDef 1331]
type = S
movetype= A
physics = N
velset = 0,0
;Anim = 8331
ctrl = 0
sprpriority = 5



[State 0, Explod]
type = Explod
trigger1 = !time
anim = 8331
ID = 8310
pos = 27,-5
postype = p1  ;p2,front,back,left,right
removetime = -2
bindtime = 1
scale = .55,.55
sprpriority = 6
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = invisible
ignorehitpause = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 45

;--------------------------------------------------------------------------
;ki blast hard fade away
[StateDef 1332]
type = S
movetype= A
physics = N
ctrl = 0
sprpriority = 5

[State 0, ]
type = Explod
triggerall = time<10
trigger1 = (time%6)=0
anim = 8100
ID = 8100
pos = 0,0-ceil(pos Y)
facing = 1
scale = 1-(time*.1),.5-(time*.05)
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = !var(6)
trigger1 = time = [0,1]
flag = invisible



[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 0, VelMul]
type = VelMul
trigger1 = 1
x = .9

[State 0, Trans]
type = Trans
trigger1 = 1
trans = Add

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 1-(time*.05),1-(time*.05)

[State 0, PalFX]
type = PalFX
trigger1 = !time
time = 20
sinadd = -255,-255,-255,80
invertall = 0
color = 256

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 20
 ;--------------------------------------------------------------------------
;KHH contraction
[statedef 6040]
type = S
movetype = I
physics = N
ctrl = 0
anim = 8312

[state 6040]
type = bindtoparent
trigger1 = 1
pos = -5,-35

[state 6040]
type = varset
trigger1 = time = 0
fv = 1
value = 2

[state 6040]
type = varadd
trigger1 = 1
fv = 1
value = -0.39

[state 6040]
type = angledraw
trigger1 = 1
scale = fvar(1),fvar(1)

[state 6040]
type = trans
trigger1 = 1
trans = add

[state 6010]
type = destroyself
trigger1 = fvar(1) <= 0.06
trigger2 = parent, stateno != 3107

;---------------------------------------------------------------------------
[StateDef 6060, Sonic kick spark]
type = A
movetype= A
physics = N
anim = 8612
sprpriority = 3

[State 0, BindToRoot]
type = BindToRoot
trigger1 = root,anim=730
;time = 1
;facing = 0
;pos = 0,0

[State 0, BindToParent]
type = BindToParent
trigger1 = 1
pos = 54,-12

[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1 = root,stateno!=1030
trigger1 = root,stateno!=1031
trigger1 = root,stateno!=1032
;-------------------------------------------------------------------
; Aura Top
[Statedef 8000]
type                    = U
movetype                = U
physics                 = N
anim                    = 1;ifelse(random>500,8056,ifelse(random>500,8055,8057))
ctrl                    = 0
poweradd                = 0
juggle                  = 0
facep2                  = 1
hitdefpersist           = 0
movehitpersist          = 0
hitcountpersist         = 0
sprpriority             = 4
 
[State AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, BindToParent]
type = BindToParent
trigger1 = 1
;time = 1
;facing = 0
pos = 0,0



 
[State Explod]
type = Explod
trigger1 = time%4= 2
anim = ifelse(random>500,8056,ifelse(random>500,8055,8057))
ID = 8000
pos = ifelse(random>500,3,ifelse(random>500,-5,15)),0
postype = p1
removeongethit = 1
bindtime = 1
removetime = -2
sprpriority = 4
ownpal = 0
scale = 0.6,0.7
shadow = 0,0,0
facing = 1
pausemovetime = 999
vel = ifelse(random>500,ifelse(random>500,0,-1), ifelse(random>500,-2,2)),ifelse(random>500,-6,-8)
 
[State Explod]
type = Explod
trigger1 = time%2= 2
anim = ifelse(random>500,8056,ifelse(random>500,8055,8057))
ID = 8001
pos = ifelse(random>500,0,3),0
postype = p1
removeongethit = 1
bindtime = 1
removetime = -2
sprpriority = -1
ownpal = 1
scale = 0.7,0.8
shadow = 0,0,0
facing = 1
pausemovetime = 999
vel = ifelse(random>500,-1, 1),-9
 
[State Explod]
type = Explod
trigger1 = time%4= 3
anim = ifelse(random>500,8055,ifelse(random>500,8059,8054))
ID = 8001
pos = ifelse(random>500,-7,-5),0
postype = p1
removeongethit = 1
bindtime = 1
removetime = -2
sprpriority = -1
ownpal = 1
scale = 0.8,0.9
shadow = 0,0,0
facing = 1
pausemovetime = 999
vel = ifelse(random>500,-2, -1), ifelse(random>500,-5,-7)
 

[State Explod]
type = Explod
trigger1 = time%4= 5
anim = ifelse(random>500,8055,ifelse(random>500,8059,8054))
ID = 8001
pos = ifelse(random>500,-7,-5),0
postype = p1
removeongethit = 1
bindtime = 1
removetime = -2
sprpriority = -1
ownpal = 1
scale = 0.7,0.9
shadow = 0,0,0
facing = 1
pausemovetime = 999
vel = ifelse(random>500,-2, -1), ifelse(random>500,-5,-7)


 
[State Explod]
type = Explod
trigger1 = time%4= 3
anim = ifelse(random>500,8057,ifelse(random>500,8058,8060))
ID = 8001
pos = ifelse(random>500,15,10),0
postype = p1
removeongethit = 1
bindtime = 1
removetime = -2
sprpriority = -1
ownpal = 1
scale = 0.8,0.9
shadow = 0,0,0
facing = 1
pausemovetime = 999
vel = ifelse(random>500,2, 1), ifelse(random>500,-5,-7)
 
[State PalFx]
type =  PalFX
trigger1 = 1
time = 1
add = -132,-132,-132
mul = 256,256,256
sinadd = 0,0,0,1
invertall = 0
color = 256
 
[State DestroySelf]
type = DestroySelf
trigger1 = parent, movetype = I && parent, ctrl
trigger2 = parent, movetype = H
trigger3 = parent, stateno = 0
trigger4 = parent, stateno = 50
;-------------------------------------------------------------
;Aura Side
[Statedef 8001]
type                    = U
movetype                = U
physics                 = N
anim                    = 1;ifelse(random>500,8056,ifelse(random>500,8055,8057))
ctrl                    = 0
poweradd                = 0
juggle                  = 0
facep2                  = 1
hitdefpersist           = 0
movehitpersist          = 0
hitcountpersist         = 0
sprpriority             = 4
 
[State AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, BindToParent]
type = BindToParent
trigger1 = 1
;time = 1
;facing = 0
pos      = 0,0

[State 0, PalFXWiz]
type =  PalFX
trigger1 = parent, var(27) = 1
time = 999
add = 0,0,0
mul = 256,256,512
sinadd = 0,0,0,1
invertall = 0
color = 1
 
[State Explod]
type = Explod
trigger1 = time%4= 2
anim = ifelse(random>500,8056,ifelse(random>500,8055,8057))
ID = 8000
pos = ifelse(random>500,3,ifelse(random>500,-5,15)),0
postype = p1
removeongethit = 1
bindtime = 1
removetime = -2
sprpriority = 4
ownpal = 0
scale = 0.7,0.7
shadow = 0,0,0
facing = 1
pausemovetime = 999
vel = ifelse(random>500,ifelse(random>500,0,-1), ifelse(random>500,-2,2)),ifelse(random>500,-6,-8)

[State Explod]
type = Explod
trigger1 = time%4= 2
anim = ifelse(random>500,8061,ifelse(random>500,8059,8062))
ID = 8000
pos = ifelse(random>500,3,ifelse(random>500,-5,15)),0
postype = p1
removeongethit = 1
bindtime = 1
removetime = -2
sprpriority = 4
ownpal = 0
scale = 0.7,0.7
shadow = 0,0,0
facing = 1
pausemovetime = 999
vel = ifelse(random>500,ifelse(random>500,0,-1), ifelse(random>500,-2,2)),ifelse(random>500,-6,-8)
 
[State Explod]
type = Explod
trigger1 = time%2= 2
anim = ifelse(random>500,8056,ifelse(random>500,8055,8057))
ID = 8001
pos = ifelse(random>500,0,3),0
postype = p1
removeongethit = 1
bindtime = 1
removetime = -2
sprpriority = -1
ownpal = 1
scale = 0.8,0.8
shadow = 0,0,0
facing = 1
pausemovetime = 999
vel = ifelse(random>500,-1, 1),-9

[State Explod]
type = Explod
trigger1 = time%2= 2
anim = ifelse(random>500,8061,ifelse(random>500,8059,8062))
ID = 8001
pos = ifelse(random>500,0,3),0
postype = p1
removeongethit = 1
bindtime = 1
removetime = -2
sprpriority = -1
ownpal = 1
scale = 0.8,0.8
shadow = 0,0,0
facing = 1
pausemovetime = 999
vel = ifelse(random>500,-1, 1),-9
 
[State Explod]
type = Explod
trigger1 = time%4= 3
anim = ifelse(random>500,8055,ifelse(random>500,8059,8054))
ID = 8001
pos = ifelse(random>500,-7,-5),0
postype = p1
removeongethit = 1
bindtime = 1
removetime = -2
sprpriority = -1
ownpal = 1
scale = 0.9,0.9
shadow = 0,0,0
facing = 1
pausemovetime = 999
vel = ifelse(random>500,-2, -1), ifelse(random>500,-5,-7)
 

[State Explod]
type = Explod
trigger1 = time%4= 5
anim = ifelse(random>500,8055,ifelse(random>500,8059,8054))
ID = 8001
pos = ifelse(random>500,-7,-5),0
postype = p1
removeongethit = 1
bindtime = 1
removetime = -2
sprpriority = -1
ownpal = 1
scale = 0.9,0.9
shadow = 0,0,0
facing = 1
pausemovetime = 999
vel = ifelse(random>500,-2, -1), ifelse(random>500,-5,-7)


 
[State Explod]
type = Explod
trigger1 = time%4= 3
anim = ifelse(random>500,8057,ifelse(random>500,8058,8060))
ID = 8001
pos = ifelse(random>500,15,10),0
postype = p1
removeongethit = 1
bindtime = 1
removetime = -2
sprpriority = -1
ownpal = 1
scale = 0.9,0.9
shadow = 0,0,0
facing = 1
pausemovetime = 999
vel = ifelse(random>500,2, 1), ifelse(random>500,-5,-7)
 
[State PalFx]
type = PalFX
trigger1 = 1
time = 1
add = -132,-132,-132
mul = 256,256,256
sinadd = 0,0,0,1
invertall = 0
color = 256
 
[State DestroySelf]
type = DestroySelf
trigger1 = parent, movetype = I && parent, ctrl
trigger2 = parent, movetype = H
trigger3 = parent, stateno = 0
trigger4 = parent, stateno = 50
trigger5 = parent, stateno = 3000 && parent, animelem = 3
;-------------------------------------------------------------
; Push Effect
[Statedef 8030]
type                    = S
movetype                = I
physics                 = S
anim                    = 8401
ctrl                    = 0
facep2                  = 1

[state 0:   PosSet]
type                    = posset
trigger1                = time = 0
y                       = 0

[State 0:    VelSet]
type                    = VelSet
trigger1                = (!Time)
x		                = 20
y		                = 0

[State 0:    PlayerPush]
type                    = PlayerPush
trigger1                = (1)
value                   = 1

[State 0:    NotHitBy]
type                    = NotHitBy
trigger1                = (1)
time                    = 1
value                   = SCA

[State 0:    DestroySelf]
type                    = DestroySelf
trigger1                = (Time = 20)

;---------------------------------------------------------------------------
; Explode
[Statedef 8101]
type                    = U
movetype                = U
physics                 = U
anim                    = 8349
velset                  = 0,0
ctrl                    = 0
poweradd                = 0
juggle                  = 0
facep2                  = 0
hitdefpersist           = 0
movehitpersist          = 0
hitcountpersist         = 0
sprpriority             = 5
;---------------

[State 0:    No Shadow]
Type                    = AssertSpecial
Trigger1                = 1
Flag                    = NoShadow

;---------------
;Effects
;---------------

;---------------

[State 0:    Done]
type                    = DestroySelf
trigger1                = !AnimTime


;---------------------------------------------------------------------------
;Rock
[Statedef 8201]
type 			        = S
movetype		        = I
physics		            = N
anim			        = 8311
ctrl			        = 0
poweradd		        = 0
juggle		            = 0
facep2		            = 0
hitdefpersist	        = 0
movehitpersist	        = 0
hitcountpersist	        = 0
sprpriority		        = 0

[State 0:	SprPriority]
type			        = SprPriority
trigger1		        = (!Time)
value			        = (IfElse(Random <= 499,3,-3))

[State 0: Spinning the Rocks]
type                    = VelAdd
trigger1                = (vel y < 50)
x                       = ifelse(parentdist x<=0,-3,3)
y                       = ifelse(random>500,-0.05,ifelse(random>500,-0.04,ifelse(random>500,-0.03,-0.02)))

[State 0:	VarRandom]
type			        =  VarRandom
trigger1		        = (!Time)
v			            = 0
range			        = -200,200

[State 0:	VarSet]
type			        =  VarSet
trigger1		        = (!Time)
var(1)		            = (Parent, StateNo)

[State 0:	PosSet]
type			        = PosSet
trigger1		        = (!Time)
x			            = var(0)
y			            = 0

[State 0:	VelSet]
type			        = VelSet
trigger1		        = (Time = 1)
x			            = (IfElse(Random <= 799,0,IfElse((Random = [800,900]),-0.2,0.2)))
y			            = (IfElse(Random <= 499,-.5,-1))

[State 0:	VelAdd]
type			        = VelAdd
trigger1		        = (Parent, StateNo != Var(1))
y			            = .5

[State 0:	VelSet]
type			        = VelSet
trigger1		        = (Parent, StateNo != Var(1))
x			            = 0

[State 0:	PlaySnd]
type			        = PlaySnd
trigger1		        = (!Time) && (Const(Size.XScale) <= 1)
value			        = S8200,3

[State 0:	PlaySnd]
type			        = PlaySnd
trigger1		        = (!Time) && (Const(Size.XScale) > 1)
value			        = S8200,1

[State 0:	PlaySnd]
type			        = PlaySnd
trigger1		        = (Pos Y >= 1)
value			        = S8200,2

[State 0:	AfterImage]
type			        = AfterImage
trigger1 		        = (!Time)
time 			        = 15
timegap		            = 1
framegap 		        = 2
length 		            = 10
paladd 		            = 0, 0, 0
palmul 		            = .50, .50, .50
palcontrast 	        = 110,110,110
trans 		            = add

[State 0:	DestroySelf]
type			        = DestroySelf
trigger1		        = (Pos Y < -210) || (Pos Y >= 1) || (!AnimTime)

;---------------------------------------------------------------------------
;Rock 1
[Statedef 8202]
type 			        = S
movetype		        = I
physics		            = N
anim			        = 8312
ctrl			        = 0
poweradd		        = 0
juggle		            = 0
facep2		            = 0
hitdefpersist	        = 0
movehitpersist	        = 0
hitcountpersist	        = 0
sprpriority		        = 0

[State 0:	SprPriority]
type			        = SprPriority
trigger1		        = (!Time)
value			        = (IfElse(Random <= 499,3,-3))

[State 0: Spinning the Rocks]
type                    = VelAdd
trigger1                = (vel y < 50)
x                       = ifelse(parentdist x<=0,-3,3)
y                       = ifelse(random>500,-0.05,ifelse(random>500,-0.04,ifelse(random>500,-0.03,-0.02)))

[State 0:	VarRandom]
type			        =  VarRandom
trigger1		        = (!Time)
v			            = 0
range			        = -200,200

[State 0:	VarSet]
type			        =  VarSet
trigger1		        = (!Time)
var(1)		            = (Parent, StateNo)

[State 0:	PosSet]
type			        = PosSet
trigger1		        = (!Time)
x			            = var(0)
y			            = 0

[State 0:	VelSet]
type			        = VelSet
trigger1		        = (Time = 1)
x			            = (IfElse(Random <= 799,0,IfElse((Random = [800,900]),-0.2,0.2)))
y			            = (IfElse(Random <= 499,-1.5,-2.5))

[State 0:	VelAdd]
type			        = VelAdd
trigger1		        = (Parent, StateNo != Var(1))
y			            = .1

[State 0:	VelSet]
type			        = VelSet
trigger1		        = (Parent, StateNo != Var(1))
x			            = 0

[State 0:	AfterImage]
type			        = AfterImage
trigger1 		        = (!Time)
time 			        = 15
timegap		            = 1
framegap 		        = 2
length 		            = 10
paladd 		            = 0, 0, 0
palmul 		            = .50, .50, .50
palcontrast 	        = 110,110,110
trans 		            = add

[State 0:	PlaySnd]
type			        = PlaySnd
trigger1		        = (!Time)
value			        = S8200,1

[State 0:	PlaySnd]
type			        = PlaySnd
trigger1		        = (Pos Y >= 1)
value			        = S8200,2

[State 0:	DestroySelf]
type			        = DestroySelf
trigger1		        = (Pos Y < -210) || (Pos Y >= 1) || (!AnimTime)

;---------------------------------------------------------------------------
;Rock 2
[Statedef 8220]
type 			        = S
movetype		        = I
physics		            = N
anim			        = 8313
ctrl			        = 0
poweradd		        = 0
juggle		            = 0
facep2		            = 0
hitdefpersist	        = 0
movehitpersist	        = 0
hitcountpersist	        = 0
sprpriority		        = 0

[State 0:	SprPriority]
type			        = SprPriority
trigger1		        = (!Time)
value			        = (IfElse(Random <= 499,3,-3))

[State 0: Spinning the Rocks]
type                    = VelAdd
trigger1                = (vel y < 50)
x                       = ifelse(parentdist x<=0,-3,3)
y                       = ifelse(random>500,-0.05,ifelse(random>500,-0.04,ifelse(random>500,-0.03,-0.02)))

[State 0:	VarRandom]
type			        =  VarRandom
trigger1		        = (!Time)
v			            = 0
range			        = -200,200

[State 0:	VarSet]
type			        =  VarSet
trigger1		        = (!Time)
var(1)		            = (Parent, StateNo)

[State 0:	PosSet]
type			        = PosSet
trigger1		        = (!Time)
x			            = var(0)
y			            = 0

[State 0:	PosSet]
type			        = PosSet
trigger1		        = (!Time)
y			            = 0

[State 0:	VelSet]
type			        = VelSet
trigger1		        = (Time = 1)
x			            = (IfElse(Random <= 799,0,IfElse((Random = [800,900]),-0.2,0.2)))
y			            = (IfElse(Random <= 499,-2,-3))

[State 0:	VelAdd]
type			        = VelAdd
trigger1		        = (Parent, StateNo != Var(1))
y			            = .1

[State 0:	VelSet]
type			        = VelSet
trigger1		        = (Parent, StateNo != Var(1))
x			            = 0

[State 0:	PlaySnd]
type			        = PlaySnd
trigger1		        = (!Time)
value			        = S8200,1

[State 0:	PlaySnd]
type			        = PlaySnd
trigger1		        = (Pos Y >= 1)
value			        = S8200,2

[State 0:	AfterImage]
type			        = AfterImage
trigger1 		        = (!Time)
time 			        = 15
timegap		            = 1
framegap 		        = 2
length 		            = 10
paladd 		            = 0, 0, 0
palmul 		            = .50, .50, .50
palcontrast 	        = 110,110,110
trans 		            = add

[State 0:	DestroySelf]
type			        = DestroySelf
trigger1		        = (Pos Y < -210) || (Pos Y >= 1) || (!AnimTime) 

;---------------------------------------------------------------------------
;line effect
[StateDef 8210]
type = S
movetype= I
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = -1
poweradd = 0;0
sprpriority = 2

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 999
ignorehitpause = 1

[State 0, PosSet]
type = PosSet
trigger1 = !time
x = parent, pos X
y = parent, pos Y


[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = invisible
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 8220
ID =   8210
pos = 0,0
postype = p1
bindtime = -1
sprpriority = 10
ownpal = 1
removetime = 5
supermove = 1
pausemovetime = 15
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 8210
scale = .5-(0.1*time), 1-(0.2*time)
ignorehitpause = 1
persistent = 1

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 8220
ID =   8211
pos = 0,-20
postype = p1
bindtime = -1
sprpriority = 10
ownpal = 1
removetime = 5
supermove = 1
pausemovetime = 15
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 8211
scale = .5-(0.1*time), 1-(0.2*time)
ignorehitpause = 1
persistent = 1


[State 0, Explod]
type = Explod
trigger1 = !time
anim = 8220
ID =   8212
pos = 0,-30
postype = p1
bindtime = -1
sprpriority = 10
ownpal = 1
removetime = 5
supermove = 1
pausemovetime = 15
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 8212
scale = .5-(0.1*time), 1-(0.2*time)
ignorehitpause = 1
persistent = 1

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 8220
ID =   8213
pos = 0,-45
postype = p1
bindtime = -1
sprpriority = 10
ownpal = 1
removetime = 5
supermove = 1
pausemovetime = 15
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 8213
scale = .5-(0.1*time), 1-(0.2*time)
ignorehitpause = 1
persistent = 1

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 8220
ID =   8214
pos = 0,-60
postype = p1
bindtime = -1
sprpriority = 10
ownpal = 1
removetime = 5
supermove = 1
pausemovetime = 15
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 8214
scale = .5-(0.1*time), 1-(0.2*time)
ignorehitpause = 1
persistent = 1

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 8220
ID =   8215
pos = 0,-75
postype = p1
bindtime = -1
sprpriority = 10
ownpal = 1
removetime = 5
supermove = 1
pausemovetime = 15
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 8215
scale = .5-(0.1*time), 1-(0.2*time)
ignorehitpause = 1
persistent = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 6
;--------------------------------------------------------------------------
;Afterimage Effect
[StateDef 8211]
type = S
movetype= I
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
;anim = parent, Anim
poweradd = 0;0
sprpriority = 2

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 999
ignorehitpause = 1


[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = parent, Anim
elem = parent, AnimElemNo(0)
ignorehitpause = 1
;persistent =

[State 0, Trans]
type = Trans
trigger1 = time <= 10
trans = addalpha
alpha = 256-(time*25),256

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 10
;ignorehitpause =
;persistent =
;--------------------------------------------------------------------------
;Shockwave
[StateDef 8200]
type = S
movetype= I
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = -1
poweradd = 0;0
sprpriority = 2

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 999
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = invisible
ignorehitpause = 1

[State 0, EnvColor]
type = EnvColor
trigger1 = !time
value = 255,255,255
time = 3

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 8210
ID =   8210
pos = 0,0
scale = 1, 1
postype = p1
bindtime = -1
sprpriority = 10
ownpal = 1
removetime = 9
supermove = 1
pausemovetime = 999
ontop = 1

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 8200+(random%8)
ID =   8200
pos = 0,0
postype = p1
bindtime = -1
sprpriority = 10
ownpal = 1
removetime = 14
supermove = 1
pausemovetime = 999
ontop = 1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 8200
scale = .6+(0.2*time), .6+(0.2*time)
ignorehitpause = 1
persistent = 1
supermove = 1
pausemovetime = 999

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 8200+(random%8)
ID =   8201
pos = 0,0
postype = p1
bindtime = -1
sprpriority = 10
ownpal = 1
removetime = 14
supermove = 1
pausemovetime = 999
ontop = 1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 8201
scale = .2+(0.1*time), .2+(0.1*time)
ignorehitpause = 1
persistent = 1
supermove = 1
pausemovetime = 999

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 8200+(random%8)
ID =   8202
pos = 0,0
postype = p1
bindtime = -1
sprpriority = 10
ownpal = 1
removetime = 14
supermove = 1
pausemovetime = 999
ontop = 1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 8202
scale = .1+(0.09*time), .1+(0.09*time)
ignorehitpause = 1
persistent = 1
supermove = 1
pausemovetime = 999

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 30
;--------------------------------------------------------------------------
;Aura up
[StateDef 8300]
type = S
movetype= I
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = -1
poweradd = 0;0
sprpriority = 2

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 999
ignorehitpause = 1
;persistent =

[State 0, PosSet]
type = PosSet
trigger1 = 1
x = parent, pos x
y = parent, pos y

[State 0, PalFXWiz]
type =null; PalFX
trigger1 = parent, Var(6) = 0
time = 999
add = 0,0,0
mul = 256,256,512
sinadd = 0,0,0,1
invertall = 0
color = 1

[State 0, VarRandom]
type = VarRandom
trigger1 = 1
v = 0
range = 5,10

[State 0, VarSet]
type = VarSet
trigger1 = 1
fv = 0
value = .1*var(0)

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = invisible

[State 0, ]
type = Explod
trigger1 = random < 200
anim = 8300
ID = 8300
pos = 0-(random%20),-20-(random%60)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
ignorehitpause= 1

[State 0, ]
type = Explod
trigger1 = random < 200
anim = 8301
ID = 8301
pos = 0+(random%20),-10-(random%60)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6
ignorehitpause= 1

[State 0, ]
type = Explod
trigger1 = random < 200
anim = 8302
ID = 8302
pos = 0-(random%10),0-(random%40)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
ignorehitpause= 1

[State 0, ]
type = Explod
trigger1 = random < 200
anim = 8303
ID = 8303
pos = 10-(random%20),0-(random%50)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
ignorehitpause= 1

[State 0, ]
type = Explod
trigger1 = random < 200
anim = 8304
ID = 8304
pos = 0+(random%20),-20-(random%60)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
ignorehitpause= 1

[State 0, ]
type = Explod
trigger1 = random < 200
anim = 8305
ID = 8305
pos = 0-(random%20),-10-(random%60)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
ignorehitpause= 1

[State 0, ]
type = Explod
trigger1 = random < 200
anim = 8306
ID = 8306
pos = 0+(random%10),0-(random%40)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
ignorehitpause= 1

[State 0, ]
type = Explod
trigger1 = random < 200
anim = 8307
ID = 8307
pos = 15-(random%30),0-(random%50)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
ignorehitpause= 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = parent, stateno != 2001
ignorehitpause = 1

;--------------------------------------------------------------------------
;Aura side
[StateDef 8301]
type = S
movetype= I
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = -1
poweradd = 0;0
sprpriority = 2

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 999
ignorehitpause = 1
;persistent =

[State 0, PosSet]
type = PosSet
trigger1 = 1
x = parent, pos x
y = parent, pos y

[State 0, PalFXWiz]
type =NULL; PalFX
trigger1 = parent, Var(6) = 0
time = 999
add = 0,0,0
mul = 256,256,512
sinadd = 0,0,0,1
invertall = 0
color = 1
ignorehitpause = 1

[State 0, VarRandom]
type = VarRandom
trigger1 = 1
v = 0
range = 5,10

[State 0, VarSet]
type = VarSet
trigger1 = 1
fv = 0
value = .1*var(0)

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = invisible


[State 0, ]
type = Explod
trigger1 = random < 300
anim = 8302
ID = 8302
pos = floor(30+parent, vel X)-(random%50),0-(random%50)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,0)
ownpal = 0
ignorehitpause= 1

[State 0, ]
type = Explod
trigger1 = random < 300
anim = 8305
ID = 8305
pos = floor(30+parent, vel X)-(random%50),-10-(random%50)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,0)
ownpal = 0
ignorehitpause= 1

[State 0, ]
type = Explod
trigger1 = random < 300
anim = 8308
ID = 8308
pos = floor(30+parent, vel X)-(random%50),0-(random%50)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,0)
ownpal = 0
ignorehitpause= 1

[State 0, ]
type = Explod
trigger1 = random > 700
anim = 8309
ID = 8309
pos = floor(30+parent, vel X)-(random%50),-30-(random%50)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,0)
ownpal = 0
ignorehitpause= 1

[State 0, ]
type = Explod
trigger1 = random > 700
anim = 8308
ID = 8308
pos = floor(-30+parent, vel X)-(random%50),-20-(random%20)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0)*.7,Fvar(0)*.7
sprpriority = ifelse(random<500,-3,0)
ownpal = 0
ignorehitpause= 1

[State 0, ]
type = Explod
trigger1 = random = [200,300]
anim = 8308
ID = 8308
pos = floor(-50+parent, vel X)-(random%50),-20-(random%20)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0)*.7,Fvar(0)*.7
sprpriority = ifelse(random<500,-3,0)
ownpal = 0
ignorehitpause= 1

[State 0, ]
type = Explod
trigger1 = random < 300
anim = 8309
ID = 8309
pos = floor(-10+parent, vel X)-(random%50),-20-(random%40)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0)*.7,Fvar(0)*.7
sprpriority = ifelse(random<500,-3,0)
ownpal = 0
ignorehitpause= 1


[State 0, DestroySelf]
type = DestroySelf
trigger1 = parent, stateno != 300
trigger1 = parent, stateno != 304
trigger1 = parent, stateno != 1100
ignorehitpause = 1

;--------------------------------------------------------------------------
;Aura up
[StateDef 8302]
type = S
movetype= I
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = -1
poweradd = 0;0
sprpriority = 2

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 999
ignorehitpause = 1
;persistent =

[State 0, PosSet]
type = PosSet
trigger1 = 1
x = parent, pos x
y = parent, pos y

[State 0, PalFXWiz]
type = null;  PalFX
trigger1 = Parent, Var(27) = 1
time = 999
add = 0,0,0
mul = 256,256,512
sinadd = 0,0,0,1
invertall = 0
color = 1

[State 0, VarRandom]
type = VarRandom
trigger1 = 1
v = 0
range = 5,10

[State 0, VarSet]
type = VarSet
trigger1 = 1
fv = 0
value = .1*var(0)

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = invisible

[State 0, Horiz, top]
type = Explod
trigger1 = random > 700
anim = 8308
ID = 8308
pos = floor(0+parent, vel X)-(random%50),floor(-100+parent, vel Y)+(random%40)
postype = p1
facing = -1
vfacing = -1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,0)
ownpal = 0
ignorehitpause= 1

[State 0, Diagdown, top]
type = Explod
trigger1 = random < 200
anim = 8302
ID = 8302
pos = floor(0+parent, vel X)-(random%50),floor(-80+parent, vel Y)+(random%30)
postype = p1
facing = -1
vfacing = -1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,0)
ownpal = 0
ignorehitpause= 1

[State 0, down, top]
type = Explod
trigger1 = random < 400
anim = 8303
ID = 8303
pos = floor(0+parent, vel X)-(random%50),floor(-80+parent, vel Y)+(random%50)
postype = p1
facing = -1
vfacing = -1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,0)
ownpal = 0
ignorehitpause= 1

[State 0, down 2, mid]
type = Explod
trigger1 = random > 700
anim = 8304
ID = 8304
pos = floor(0+parent, vel X)-(random%40),floor(-60+parent, vel Y)+(random%50)
postype = p1
facing = -1
vfacing = -1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,0)
ownpal = 0
ignorehitpause= 1

[State 0, diagdown, mid]
type = Explod
trigger1 = random > 700
anim = 8306
ID = 8306
pos = floor(0+parent, vel X)-(random%40),floor(-60+parent, vel Y)+(random%50)
postype = p1
facing = -1
vfacing = -1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,0)
ownpal = 0
ignorehitpause= 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = parent, stateno != 302
ignorehitpause = 1


;--------------------------------------------------------------------------
;Masenko 
[Statedef 8306]
type 		= U
movetype		= A
physics		= U
juggle	    	= 1
anim    	          = 70312
velset		= 0,0
ctrl	          = 0
poweradd		= 0
facep2		= 0
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority         = 3

[State 0:	VelSet]
type			        = VelSet
trigger1		        = 1
x			            = 22

[State 0: AssertSpecial]
type                    = AssertSpecial
trigger1                = 1
flag                    = noshadow

;---------------

[State 0:       Big S Dust Right]
type                    = Explod
trigger1                = TimeMod = 2, 0
anim                    = 8102
ID                      = 7015
pos                     = 10,floor(-pos y)
removetime              = -2
pausemovetime           = 999
sprpriority             = 3
ownpal                  = 1
removeongethit          = 1

[State 0: 	AfterImage]
type 			        = AfterImage
trigger1 		        = !Time
time 			        = 99999
framegap 		        = 2
length 		            = 20
paladd 		            = 0, 0, 0
palmul 		            = .50, .50, .50
palcontrast 	        = 50, 50, 50
trans 		            = add

[State 0, PalFXWiz]
type = PalFX
trigger1 =  !time
time = 999
add = 130,100,-100
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
color = 0

[State -2, ComboDampener-Increase]
type = ParentVarAdd
trigger1 = MoveType = A
trigger1 = MoveHit = 1
trigger1 = FVar(10) < 31
trigger1 = NumTarget
fv = 10
value = 1
persistent = 0


;---------------

[State 0, ]
type                    = HitDef
trigger1                = !time
attr                    = S, HP
damage                  = ceil((60-(parent, var(13)*2))*parent, fvar(13)),ceil(5*parent, fvar(13))
animtype                = back
guardflag               = MAFD
hitflag                 = MAF, NP, SP, HP, NT, ST, HT
priority                = 7, Hit
pausetime               = 0, 3
sparkno                 = S8000+(random%3)
guard.sparkno           = S8022+(random%2)
sparkxy                 = -10, 0
hitsound                = S2010,3
guardsound              = S2010,3
ground.type             = low
ground.slidetime        = 20
ground.hittime          = 20
ground.velocity         = -7, -8
airguard.velocity       = -7, -8
air.type                = high
air.velocity            = -7, -8
air.hittime             = 12
getpower                = 0
givepower		        = 0
p2stateno               = 5071
Fall                    = 1
air.fall                = 1
Fall.recover            = 0
yaccel		            = 0.5
envshake.time           = 30
envshake.freq           = 100
envshake.ampl           = 20
envshake.phase          = 20
id                      = 83061

[State 0: Helper]
type                    = Helper
triggerall              = !NumHelper(8106)
trigger1                = NumTarget(83061) && MoveHit
id                      = 8106
pos                     = 0,-40
postype                 = p2
stateno                 = 8101
ownpal                  = 1
size.xscale             = .9
size.yscale             = .9
ignorehitpause          = 1
persistent              = 0

[State 0:    End]
type                    = DestroySelf
trigger1                = MoveContact || ((frontedgedist <= -175) || (backedgedist <= -175))

;---------------------------------------------------------------------------
;Aura up
[StateDef 8307]
type = S
movetype= I
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = -1
poweradd = 0;0
sprpriority = 2

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 999
ignorehitpause = 1
;persistent =

[State 0, PosSet]
type = PosSet
trigger1 = 1
x = parent, pos x
y = parent, pos y

[State 0, PalFXWiz]
type =null; PalFX
trigger1 = parent, Var(6) = 0
time = 999
add = 0,0,0
mul = 256,256,512
sinadd = 0,0,0,1
invertall = 0
color = 1

[State 0, VarRandom]
type = VarRandom
trigger1 = 1
v = 0
range = 5,10

[State 0, VarSet]
type = VarSet
trigger1 = 1
fv = 0
value = .1*var(0)

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = invisible

[State 0, ]
type = Explod
trigger1 = random < 200
anim = 8300
ID = 8300
pos = 0-(random%20),-20-(random%60)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
ignorehitpause= 1

[State 0, ]
type = Explod
trigger1 = random < 200
anim = 8301
ID = 8301
pos = 0+(random%20),-10-(random%60)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6
ignorehitpause= 1

[State 0, ]
type = Explod
trigger1 = random < 200
anim = 8302
ID = 8302
pos = 0-(random%10),0-(random%40)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
ignorehitpause= 1

[State 0, ]
type = Explod
trigger1 = random < 200
anim = 8303
ID = 8303
pos = 10-(random%20),0-(random%50)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
ignorehitpause= 1

[State 0, ]
type = Explod
trigger1 = random < 200
anim = 8304
ID = 8304
pos = 0+(random%20),-20-(random%60)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
ignorehitpause= 1

[State 0, ]
type = Explod
trigger1 = random < 200
anim = 8305
ID = 8305
pos = 0-(random%20),-10-(random%60)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
ignorehitpause= 1

[State 0, ]
type = Explod
trigger1 = random < 200
anim = 8306
ID = 8306
pos = 0+(random%10),0-(random%40)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
ignorehitpause= 1

[State 0, ]
type = Explod
trigger1 = random < 200
anim = 8307
ID = 8307
pos = 15-(random%30),0-(random%50)
postype = p1
facing = 1
vfacing = 1
bindtime = -1
supermove = 1
scale = Fvar(0),Fvar(0)
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
ignorehitpause= 1


[State 0, DestroySelf]
type = DestroySelf
trigger1 = parent, stateno != 3201
ignorehitpause = 1


;--------------------------------------------------------------------------
;Flare
[Statedef 8336]
type                    = U
movetype                = A
physics                 = U
anim                    = 8310
velset                  = 0,0
ctrl                    = 0
poweradd                = 0
juggle                  = 0
facep2                  = 0
hitdefpersist           = 0
movehitpersist          = 0
hitcountpersist         = 0
sprpriority             = 5
;---------------


[State 0, Trans]
type = Trans
trigger1 = 1 
trans = default ;none, add, addalpha, add1, sub
;alpha = 256,256
;ignorehitpause = 
;persistent = 

[State 0, PosSet]
type = PosSet
trigger1 = 1
x = parent, pos x+22*facing
y = parent, pos y-50



[State 0: AssertSpecial]
type                    = AssertSpecial
trigger1                = 1
flag                    = noshadow

;---------------


[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S25,0
volumescale = 255





[State 0:    NotHitBy]
type                    = NotHitBy
trigger1                = 1
time                    = 2
value                   = SCA,AA,AT
ignorehitpause          = 1

[State 0:    HitBy]
type                    = HitBy
trigger1                = 1
value                   = SCA,AP
time                    = 2




;---------------
;Hit Details
;---------------

[State 0, ]
type                    = HitDef
trigger1                = !time
attr                    = A, NA
damage                  = 30
animtype                = back
guardflag               = MA
hitflag                 = MAF
priority                = 3, Hit
pausetime               = 0, 12
sparkno = S8000+(random%10)
guard.sparkno = S8020+(random%2)
sparkxy = -19, -26
hitsound                = S815, 0
guardsound              = S400, 0
ground.type             = high
ground.slidetime        = 20
ground.hittime          = 20
ground.velocity         = -7,-4
airguard.velocity       = -4, -4
air.type                = High
air.velocity            = -8,-3
air.hittime             = 12
getpower                = 27
givepower		        = 0
Fall                    = 1
Fall.recover            = 0
yaccel		            = 0.5
down.bounce = 1
envshake.time = 14
envshake.freq = 140
envshake.ampl = 3
fall.envshake.time = 10
fall.envshake.freq = 190
fall.envshake.ampl = 9
id                      = 8305
down.bounce             = 1



[State 0, DestroySelf]
type = DestroySelf
trigger1 = !animtime
;---------------------------------------------------------------------------
;Khh Ball Charge
[StateDef 8500]
physics = N
anim = -1
sprpriority = 5

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = invisible
flag3 = noshadow

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 8323
ID = 8500
postype = p1
removetime = -1
supermovetime = 999
pausemovetime = 999
sprpriority = 5
ownpal = 1
removeongethit = 1

[State 0, Modifyexplod]
type = modifyexplod
trigger1 = 1
ID = 8500
scale = .95-(.010*time), .95-(.010*time)

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 8325
ID = 85011
postype = p1
removetime = 48
supermovetime = 999
pausemovetime = 999
sprpriority = 5
ownpal = 1
removeongethit = 1

[State 0, Modifyexplod]
type = modifyexplod
trigger1 = 1
ID = 85011
scale = .25+(.0075*time), .25+(.0075*time)


[State 0, Explod]
type = Explod
trigger1 = time = 14
anim = 8325
ID = 85012
postype = p1
removetime = 48
supermovetime = 999
pausemovetime = 999
sprpriority = 5
ownpal = 1
removeongethit = 1

[State 0, Modifyexplod]
type = modifyexplod
trigger1 = 1
ID = 85012
scale = .25+(.0075*(time-14)), .25+(.0075*(time-14))


[State 0, Explod]
type = Explod
trigger1 = time = 28
anim = 8325
ID = 85013
postype = p1
removetime = 48
supermovetime = 999
pausemovetime = 999
sprpriority = 5
ownpal = 1
removeongethit = 1

[State 0, Modifyexplod]
type = modifyexplod
trigger1 = 1
ID = 85013
scale = .25+(.0075*(time-28)), .25+(.0075*(time-28))



[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 50 || parent,movetype = H

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 51 || parent,movetype = H 

;-----------------------------------------------------------------------
;Kamehameha Ring waves
[Statedef 8501]
type                    = U
movetype                = U
physics                 = U
anim                    = 8500
velset                  = 0,0
ctrl                    = 0
poweradd                = 0
juggle                  = 0
facep2                  = 0
hitdefpersist           = 0
movehitpersist          = 0
hitcountpersist         = 0
sprpriority             = 5
;---------------

[State 0:     VelSet]
type                    = VelSet
trigger1                = (!Time)
x		                = 0
y		                = 0

[State 0, ]
type                    = BindToParent
trigger1                = 1
time                    = 1
pos		                = -9,-40

[State 0:     Turn]
type                    = Turn
trigger1                = (P2BodyDist X < 0)

[State 0:    No Shadow]
Type                    = AssertSpecial
Trigger1                = 1
Flag                    = NoShadow

[State 0: 	AfterImage]
type 			        = AfterImage
trigger1 		        = (!Time)
time 			        = 9999999
framegap 		        = 4
length 		            = 20
paladd 		            = 0, 0, 0
palmul 		            = .60, .60, .60
palcontrast 	        = 100, 100, 100
trans 		            = add

[State 0:        DestroySelf]
type 			        = DestroySelf
trigger1 		        = parent,stateno != 3107
trigger2 		        = parent,movetype = H

;---------------------------------------------------------------------------
;Khh Ball Charge
[StateDef 8502]
physics = N
anim = -1
sprpriority = 5

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = invisible
flag2 = nobardisplay
flag3 = noshadow

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 8323
ID = 8500
postype = p1
removetime = -1
supermovetime = 999
pausemovetime = 999
sprpriority = 5
ownpal = 1
removeongethit = 1

[State 0, Modifyexplod]
type = modifyexplod
trigger1 = 1
ID = 8500
scale = .95-(.010*time), .95-(.010*time)

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 8325
ID = 85011
postype = p1
removetime = 48
supermovetime = 999
pausemovetime = 999
sprpriority = 5
ownpal = 1
removeongethit = 1

[State 0, Modifyexplod]
type = modifyexplod
trigger1 = 1
ID = 85011
scale = .25+(.0075*time), .25+(.0075*time)


[State 0, Explod]
type = Explod
trigger1 = time = 14
anim = 8325
ID = 85012
postype = p1
removetime = 48
supermovetime = 999
pausemovetime = 999
sprpriority = 5
ownpal = 1
removeongethit = 1

[State 0, Modifyexplod]
type = modifyexplod
trigger1 = 1
ID = 85012
scale = .25+(.0075*(time-14)), .25+(.0075*(time-14))


[State 0, Explod]
type = Explod
trigger1 = time = 28
anim = 8325
ID = 85013
postype = p1
removetime = 48
supermovetime = 999
pausemovetime = 999
sprpriority = 5
ownpal = 1
removeongethit = 1

[State 0, Modifyexplod]
type = modifyexplod
trigger1 = 1
ID = 85013
scale = .25+(.0075*(time-28)), .25+(.0075*(time-28))



[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = parent,stateno = !4000 || parent,movetype = H

[State 0, DestroySelf]
type = DestroySelf
trigger1 = parent,stateno = !4000 || parent,movetype = H

;-----------------------------------------------------------------------
;Galick Gun - Charge
[StateDef 8506]
type = S
movetype= A
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = 8506
poweradd = 0;0
sprpriority = 5

[State 0, PosSet]
type = PosSet
trigger1 = 1
x = parent, pos x-4*facing
y = parent, pos y-38

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S3001,0
volume = 0
channel = 3

[State 0, PalFXWiz]
type =null; PalFX
trigger1 = Parent, Var(6) = 0
time = 999
add      = -8,1,62
mul      = 173,266,317
sinadd   = 0,0,0,1
color    = 0
invertall = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
flag2 = nobardisplay

[State 0, DestroySelf]
type = DestroySelf
trigger1 = parent, stateno != 3000
ignorehitpause = 1
;persistent =

;--------------------------------------------------------------------------
;Kamehameha!
[StateDef 8516]
type = S
movetype= A
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = 8516
poweradd = 0;0
sprpriority = 5

[State 0, PosSet]
type = PosSet
trigger1 = 1
x = parent, pos x+22*facing
y = parent, pos y-52

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S3001,1
volume = 0
channel = 3

[State 0, HitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State -2, ComboDampener-Increase]
type = ParentVarAdd
trigger1 = MoveType = A
trigger1 = MoveHit = 1
trigger1 = FVar(10) < 31
trigger1 = NumTarget
fv = 10
value = 1
persistent = 0

[State 0, PalFXWiz]
type =null; PalFX
trigger1 = Parent, Var(6) = 0
time = 999
add = 0,0,0
mul = 256,256,512
sinadd = 0,0,0,1
invertall = 0
color = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, HitDef]
type = HitDef
trigger1 = !time
attr = S,HP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 0;0,0
givepower = 0,0
;affectteam = E          ;B,E,F
animtype = Hard         ;light,medium,hard,back,up,diagup
air.animtype = Hard
;fall.animtype = Back
priority = 5,Hit   ;Hit,Miss,Dodge
damage = ceil(225*parent, fvar(13)),ceil(45*parent, fvar(13))
pausetime = 0,0
;guard.pause,0
sparkno                 = S8040+(random%5)
guard.sparkno           = S8022+(random%2)
sparkxy = -20,0
hitsound = S301,3
guardsound = S3001,2
ground.type = Low      ;Low,Trip,None
ground.slidetime = 20
ground.hit = 35
air.hittime = 35
p2stateno = 6000
Fall = 1
ground.velocity = -15,-4
air.velocity = -15,-4
sprpriority = 5
palfx.time = 35
palfx.add = -170,-170,-170
palfx.mul =  256,256,512
palfx.sinadd = 100,0,130,15
envshake.time = 35
envshake.freq = 120
envshake.ampl = 8

[State 0, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 8317
ctrl = 0
ignorehitpause = 1
;persistent =

[State 0, DestroySelf]
type = DestroySelf
trigger1 = parent, stateno != 3001
ignorehitpause = 1
;--------------------------------------------------------------------------
;-Galick Gun - Destroy
[StateDef 8317]
type = S
movetype= A
physics = N
velset = 0,0
Anim = -1
ctrl = 0
sprpriority = 5

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = invisible

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 35
;---------------------------------------------------------------------------
;Sonic Blast
[Statedef 8350]
type                    = U
movetype                = A
physics                 = U
anim                    = 8350
velset                  = 0,0
ctrl                    = 0
poweradd                = 0
juggle                  = 0
facep2                  = 0
hitdefpersist           = 0
movehitpersist          = 0
hitcountpersist         = 0
sprpriority             = 5
;---------------


[State 0, Trans]
type = Trans
trigger1 = 1 
trans = default ;none, add, addalpha, add1, sub
;alpha = 256,256
;ignorehitpause = 
;persistent = 


[State 0, ParentVarSet]
type = ParentVarSet
triggerall =!root,var(21)
trigger1 =  animelem = 3,>4 ||(movecontact)
v = 21     
value = 1
persistent =0
ignorehitpause = 1



[State 0: AssertSpecial]
type                    = AssertSpecial
trigger1                = 1
flag                    = noshadow

;---------------



[State 0:    NotHitBy]
type                    = NotHitBy
trigger1                = 1
time                    = 2
value                   = SCA,AA,AT
ignorehitpause          = 1

[State 0:    HitBy]
type                    = HitBy
trigger1                = 1
value                   = SCA,AP
time                    = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 =  !time
value = S3003,1


;---------------
;Hit Details
;---------------

[State 0, ]
type                    = HitDef
trigger1                = !time
attr                    = S, SA
damage                  = 35
animtype                = diagup
guardflag               = MAF
hitflag                 = MAF
priority                = 3, Hit
pausetime               = 0, 15
sparkno                 = S8349
sparkxy                 = -10, 0
hitsound                = S3001, 2
guard.sparkno = S8020
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 1, 2))
ground.type             = High
ground.slidetime        = 20
ground.hittime          = 20
ground.velocity         = -3,-6
airguard.velocity       = -4, -4
air.type                = High
air.velocity            = -4, -4
air.hittime             = 12
getpower                = 27
givepower		        = 0
Fall                    = 1
Fall.recover            = 0
yaccel		            = 0.5
down.bounce = 1
envshake.time = 10
envshake.freq = 110
envshake.ampl = 3
fall.envshake.time = 10
fall.envshake.freq = 190
fall.envshake.ampl = 6

id                      = 8305



[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 24 || movehit
;---------------------------------------------------------------------------
;Million Dollar Renzoku (Ball charge) 
[StateDef 8600]
physics = N
anim = -1
sprpriority = 5

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = invisible
;flag2 = nobardisplay
flag3 = noshadow

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 8313
ID = 8500
postype = p1
removetime = -1
supermovetime = 999
pausemovetime = 999
sprpriority = 5
ownpal = 1
removeongethit = 1

[State 0, Modifyexplod]
type = modifyexplod
trigger1 = 1
ID = 8500
scale = .75-(.010*time), .75-(.010*time)

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 8315
ID = 85011
postype = p1
removetime = 48
supermovetime = 999
pausemovetime = 999
sprpriority = 5
ownpal = 1
removeongethit = 1

[State 0, Modifyexplod]
type = modifyexplod
trigger1 = 1
ID = 85011
scale = .25+(.0075*time), .25+(.0075*time)


[State 0, Explod]
type = Explod
trigger1 = time = 14
anim = 8315
ID = 85012
postype = p1
removetime = 48
supermovetime = 999
pausemovetime = 999
sprpriority = 5
ownpal = 1
removeongethit = 1

[State 0, Modifyexplod]
type = modifyexplod
trigger1 = 1
ID = 85012
scale = .25+(.0075*(time-14)), .25+(.0075*(time-14))


[State 0, Explod]
type = Explod
trigger1 = time = 28
anim = 8315
ID = 85013
postype = p1
removetime = 48
supermovetime = 999
pausemovetime = 999
sprpriority = 5
ownpal = 1
removeongethit = 1

[State 0, Modifyexplod]
type = modifyexplod
trigger1 = 1
ID = 85013
scale = .25+(.0075*(time-28)), .25+(.0075*(time-28))



[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 60 || parent,movetype = H

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 61 || parent,movetype = H 


;-------------------------------------------------------------------------
; BGPal FX
[Statedef 8601]
type                    = U
movetype                = U
physics                 = U
anim                    = 90
velset                  = 0,0
ctrl                    = 0
poweradd                = 0
juggle                  = 0
facep2                  = 0
hitdefpersist           = 0
movehitpersist          = 0
hitcountpersist         = 0
sprpriority             = 7
;---------------

;---------------
;Effects
;---------------

[State 0: 	BGPalFX]
type			        = BGPalFX
trigger1                = !Time
time			        = 99999
add			            = 0,0,0
mul			            = 154,154,154
sinadd		            = 85,85,85,25
invertall		        = 0
color			        = 256

[State 0: 	BGPalFX]
type			        = BGPalFX
trigger1 		        = parent,stateno != 3000
trigger2 		        = parent,movetype = H
time			        = 1
add			            = 0,0,0
mul			            = 256,256,256
sinadd		            = 0,0,0,2
invertall		        = 0
color			        = 256

;---------------

[State 0:    Done]
type                    = DestroySelf
trigger1 		        = parent,stateno != 3000
trigger2 		        = parent,movetype = H

;---------------------------------------------------------------------------
; Chou Kamehameha!
[Statedef 8320]
type 			        = U
movetype		        = A
physics		            = U
juggle	    	        = 1
anim    			    = 8517
velset		            = 0,0
ctrl			        = 0
poweradd		        = 0
facep2		            = 0
hitdefpersist	        = 0
movehitpersist	        = 0
hitcountpersist	        = 0
sprpriority		        = 3

[State 0, ]
type                    = BindToParent
trigger1                = 1
time                    = 1
pos                     = -38, -62

[State 0:    No Shadow]
Type                    = AssertSpecial
Trigger1                = 1
Flag                    = NoShadow

[State 0: 	AfterImage]
type 			        = AfterImage
trigger1 		        = (!Time)
time 			        = 9999999
framegap 		        = 4
length 		            = 20
paladd 		            = 0, 0, 0
palmul 		            = .60, .60, .60
palcontrast 	        = 50, 50, 50
trans 		            = add

[State -2, ComboDampener-Increase]
type = ParentVarAdd
trigger1 = MoveType = A
trigger1 = MoveHit = 1
trigger1 = FVar(10) < 31
trigger1 = NumTarget
fv = 10
value = 1
persistent = 0

[State 0, ]
type                    = HitDef
trigger1                = !Time
attr                    = S, HP
damage                  = Ceil((205+parent,var(20))*parent, fvar(13)),ceil((18+parent,var(20))*parent, fvar(13))
animtype                = Heavy
guardflag               = M
hitflag                 = MAF, NP, SP, HP, NT, ST, HT
priority                = 5, Hit
pausetime               = 0, 12
sparkno                 = -1
guard.sparkno           = -1
sparkxy                 = 0, 40
hitsound                = S3000, 3
guardsound              = S3000, 3
ground.type             = High
ground.slidetime        = 12
ground.hittime          = 12
ground.velocity         = -12, -5
airguard.velocity       = -3.9,-4
air.type                = High
air.velocity            = -12,-12
air.hittime             = 12
getpower                = 0
givepower		        = 0
yaccel		            = 0.5
Fall                    = 1
fall.recover            = 0
envshake.time           = 30
envshake.freq           = 90
envshake.ampl           = 10
id                      = 8320
p1sprpriority           = 6
p2stateno               = 6000

[State 0: Helper]
type                    = Helper
trigger1                = MoveContact
helpertype              = normal
ID                      = 8403
stateno                 = 8403
postype                 = p2
ownpal                  = 1
size.xscale             = 1
size.yscale             = 1
Persistent              = 0

[State 0:        DestroySelf]
type 			        = DestroySelf
trigger1 		        = !AnimTime
trigger2 		        = parent,stateno != 3108
trigger3 		        = parent,movetype = H

;---------------------------------------------------------------------------
; Chou Kamehameha!
[Statedef 8321]
type 			        = U
movetype		        = A
physics		            = U
juggle	    	        = 1
anim    			    = 8388
velset		            = 0,0
ctrl			        = 0
poweradd		        = 0
facep2		            = 0
hitdefpersist	        = 0
movehitpersist	        = 0
hitcountpersist	        = 0
sprpriority		        = 3

[State 0, ]
type                    = BindToParent
trigger1                = 1
time                    = 1
pos                     = -5, -57

[State 0:    No Shadow]
Type                    = AssertSpecial
Trigger1                = 1
Flag                    = NoShadow

[State 0: 	AfterImage]
type 			        = AfterImage
trigger1 		        = (!Time)
time 			        = 9999999
framegap 		        = 4
length 		            = 20
paladd 		            = 0, 0, 0
palmul 		            = .60, .60, .60
palcontrast 	        = 50, 50, 50
trans 		            = add

[State 0, ]
type                    = HitDef
trigger1                = !Time
attr                    = S, HP
damage                  = 135
animtype                = Heavy
guardflag               = M
hitflag                 = MAF, NP, SP, HP, NT, ST, HT
priority                = 5, Hit
pausetime               = 0, 12
sparkno                 = -1
guard.sparkno           = -1
sparkxy                 = 0, 40
hitsound                = S3000, 3
guardsound              = S3000, 3
ground.type             = High
ground.slidetime        = 12
ground.hittime          = 12
ground.velocity         = -12, -5
airguard.velocity       = -8.9,-2
air.type                = High
air.velocity            = -12, -5
air.hittime             = 12
getpower                = 0
givepower		        = 0
yaccel		            = 0.5
Fall                    = 1
fall.recover            = 0
envshake.time           = 10
envshake.freq           = 90
envshake.ampl           = 10
id                      = 8321
p1sprpriority           = 6



[State 0: Helper]
type                    = Helper
triggerall              = !NumHelper(8101)
trigger1                = NumTarget(8321) && Movecontact
id                      = 8101
pos                     = 0,-60
postype                 = p2
stateno                 = 8101
ownpal                  = 1
size.xscale             = 1.6
size.yscale             = 1.6
ignorehitpause          = 1
persistent              = 0

;---------------

[State 0:    End]
type                    = DestroySelf
trigger1                = MoveContact || ((frontedgedist <= -75) || (backedgedist <= -75))
;---------------------------------------------------------------------------
; Kamehameha Explode
[Statedef 8403]
type                    = U
movetype                = U
physics                 = U
anim                    = 90
velset                  = 0,0
ctrl                    = 0
poweradd                = 0
juggle                  = 0
facep2                  = 0
hitdefpersist           = 0
movehitpersist          = 0
hitcountpersist         = 0
sprpriority             = 5
;---------------

[State 0: Helper]
type                    = Helper
trigger1                = !Time
helpertype              = normal
ID                      = 8404
stateno                 = 8404
ownpal                  = 1
size.xscale             = 1
size.yscale             = 1

;---------------
;Effects
;---------------

[State 0, PalFXWiz]
type 				    = AllPalFX
trigger1 			    = Time = 5
time 				    = 50
add 				    = 200,200,256
mul 				    = 200,200,256
sinadd 			        = 200,200,256,150
invertall 			    = 0
color 			        = 256

;---------------
[State 0:    Done]
type                    = DestroySelf
trigger1                = (Time >= 50)

;---------------------------------------------------------------------------
;Kamehameha Explode Helper
[Statedef 8404]
type                    = U
movetype                = U
physics                 = U
anim                    = 8402
velset                  = 0,0
ctrl                    = 0
poweradd                = 0
juggle                  = 0
facep2                  = 0
hitdefpersist           = 0
movehitpersist          = 0
hitcountpersist         = 0
sprpriority             = 5
;---------------

[State 0, ]
type                    = BindToTarget
trigger1                = 1
time                    = 1
pos		                = 0,0

[State 0: VarSet]
type 			        = VarSet
trigger1 		        = (!Time)
fv 			            = 1
value 		            = -1

[State 0: VarAdd]
type 			        = VarAdd
trigger1 		        = (TimeMod = 5,0)
fv 			            = 1
value 		            = -1

[State 0: AngleDraw]
type                    = AngleDraw
trigger1                = 1
scale                   = fvar(1), fvar(1)

[State 0:    No Shadow]
Type                    = AssertSpecial
Trigger1                = 1
Flag                    = NoShadow

[State 0: Trans]
type                    = Trans
trigger1 			    = 1
trans                   = add

[State 0:        DestroySelf]
type 			        = DestroySelf
trigger1 		        = Time = 40

;---------------------------------------------------------------------------
;Slow down
[Statedef 8405]
type                    = U
movetype                = U
physics                 = U
anim                    = 90
velset                  = 0,0
ctrl                    = 0
poweradd                = 0
juggle                  = 0
facep2                  = 0
hitdefpersist           = 0
movehitpersist          = 0
hitcountpersist         = 0
sprpriority             = 5
;---------------

[State 0: Pause]
type                    = Pause
triggerall              = 1
trigger1                = gametime%2 = 0
time                    = 1

[State 0:        DestroySelf]
type 			        = DestroySelf
trigger1 		        = Time = 30
trigger2 		        = parent,stateno != 3108
trigger3 		        = parent,movetype = H

;---------------------------------------------------------------------------
;Ultimate blast - AIR
[StateDef 8750]
type = A
movetype= A
physics = N
juggle  = 0
velset = 14,14
ctrl = 0
anim = 8334
poweradd = 0;0
sprpriority = 5

[State 0, VelMul]
type = null;VelMul
trigger1 = 1
x = 1
y = .7
;ignorehitpause =
;persistent =

[State 0, Explod]
type = Explod
trigger1 = movehit 
anim = 8349
ID = 8310
pos = 27,-5
postype = p1  ;p2,front,back,left,right
removetime = -2
bindtime = 1
scale = .35,.35
sprpriority = 6
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0



[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = Parent, Var(6) = 0
trigger1 = time = [0,1]
flag = invisible
ignorehitpause = 1

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NP,SP,HP
slot = 0
stateno = 8751
time = 1

[State 0, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = 1

[State -2, ComboDampener-Increase]
type = ParentVarAdd
trigger1 = MoveType = A
trigger1 = MoveHit = 1
trigger1 = FVar(10) < 31
trigger1 = NumTarget
fv = 10
value = 1
persistent = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, HitDef]
type = HitDef
trigger1 = !time
attr = A,SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAFD        ;HLAFD+-
guardflag = MA         ;HLA
animtype = Hard         ;light,medium,hard,back,up,diagup
air.animtype = back
;fall.animtype = Back
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 100
pausetime = 0,15
;guard.pause,0
sparkno = -1
guard.sparkno = -1
sparkxy = -20,0
hitsound = S1000,3
guardsound = S300,2
ground.type = Trip      ;Low,Trip,None
Air.type = Low      ;Low,Trip,None
ground.slidetime = 20
ground.hittime = 20
air.hittime = 20
ground.velocity = -7,-12
air.velocity = -4,4
sprpriority = 3
palfx.time = 15
palfx.add =  40,-70,-200
palfx.mul = 256,256,256
palfx.sinadd = 40,30,0,10
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6
getpower = 0;0
p2stateno = 5050


[State 0, VelSet]
type = VelSet
trigger1 = movecontact
x = 0
y = 0
ignorehitpause = 1
persistent = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = Movecontact
value = 8751
ctrl = 0
ignorehitpause = 1
;persistent =

[State 0, ChangeState]
type = ChangeState
trigger1 = Pos Y >=0
value = 8753
ctrl = 0
ignorehitpause = 1
;persistent =

;--------------------------------------------------------------------------
;Ki blast destroy
[StateDef 8751]
type = U
movetype= U
physics = U
velset = 0,0
Anim = 90
ctrl = 0
sprpriority = 5


[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S3001,2


[State 0, Explod]
type = Explod
trigger1 = !time
anim = 8346
ID = 8310
pos = 27,-15
postype = p2  ;p2,front,back,left,right
removetime = -2
bindtime = 1
scale = 1,1
sprpriority = 6
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0



[State 9050]
type 			= trans
trigger1 		= time = 0
trans 		= add


[State 0, ChangeState]
type = ChangeState
trigger1 = time = 6
value = 8752
ctrl = 0
ignorehitpause = 0
;--------------------------------------------------------------------------
;Ki blast destroy
[StateDef 8752]
type = U
movetype= U
physics = U
velset = 0,0
Anim = 90
ctrl = 0
sprpriority = 5

[State 0: Pause]
type                    = Pause
triggerall              = time = 10 >  0
trigger1                = gametime%1 = 0
time                    = 1
movetime                = 1

[State 0, PalFXWiz]
type 				    = AllPalFX
trigger1 			    = !time
time 				    = 40
add 				    = 200,200,256
mul 				    = 200,200,256
sinadd 			        = 200,200,256,150
invertall 			    = 0
color 			        = 256


[State 9050]
type 			= trans
trigger1 		= time = 0
trans 		= add

[State 9051:	End]
type			= Destroyself
trigger1		= time = 40
;--------------------------------------------------------------------------
;Ki blast destroy hitting ground
[StateDef 8753]
type = S
movetype= A
physics = N
velset = 0,0
;Anim = 8340
ctrl = 0
sprpriority = 5

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S1000,3
channel = 1
ignorehitpause = 1
;persistent =

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 8349
ID = 8340
pos = 0,0
postype = p1  ;p2,front,back,left,right
removetime = -2
bindtime = 1
scale = 1.4,1.4
sprpriority = 5
ontop = 0
ownpal = 0


[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
flag2 = invisible
ignorehitpause = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = !AnimTime

;--------------------------------------------------------------------------
; Double shot
[Statedef 70313]
type                    = U
movetype                = A
physics                 = U
anim                    = 70312
velset                  = 0,0
ctrl                    = 0
poweradd                = 0
juggle                  = 0
facep2                  = 0
hitdefpersist           = 0
movehitpersist          = 0
hitcountpersist         = 0
sprpriority             = 5
;---------------





[State 0:	VelSet]
type			        = VelSet
trigger1		        = 1
x			            = ifelse(p2movetype = H,9,9.2)

[State 0: AssertSpecial]
type                    = AssertSpecial
trigger1                = 1
flag                    = noshadow

;---------------

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NP,SP,HP
slot = 0
stateno = 8101
time = 1

[State 0:    NotHitBy]
type                    = NotHitBy
trigger1                = 1
time                    = 2
value                   = SCA,AA,AT
ignorehitpause          = 1

[State 0:    HitBy]
type                    = HitBy
trigger1                = 1
value                   = SCA,AP
time                    = 2

[State -2, ComboDampener-Increase]
type = ParentVarAdd
trigger1 = MoveType = A
trigger1 = MoveHit = 1
trigger1 = FVar(10) < 31
trigger1 = NumTarget
fv = 10
value = 1
persistent = 0

[State 0: Pause]
type                    = Pause
triggerall              = AnimElem = 1,>  0 && AnimElem = 4,<  0
trigger1                = gametime%1 = 0
time                    = 1
movetime                = 1

;---------------

[State 0: Dust]
type                    = MakeDust
trigger1                = (1)
pos                     = 20,floor(-pos y)
spacing                 = 2

[State 0: 	AfterImage]
type 			        = AfterImage
trigger1 		        = !Time
time 			        = 99999
framegap 		        = 2
length 		            = 10
paladd 		            = 0, 0, 0
palmul 		            = .50, .50, .50
palcontrast 	        = 100, 100, 100
trans 		            = add

[State 0]
type                    = AfterImageTime
trigger1                = 1
time                    = 3
ignorehitpause          = 1

;---------------
;Hit Details
;---------------

[State 0, ]
type                    = HitDef
trigger1                = !time
attr                    = S, SP
damage                  = ceil((25-(parent, var(13)*2))*parent, fvar(13)),ceil(5*parent, fvar(13))
animtype                = Heavy
guardflag               = MAFD
hitflag                 = MA
priority                = 4, Hit
pausetime               = 0, 12
sparkno                 = S8000+(random%2)
sparkxy                 = -30, 0
hitsound                = S3001, 2
guardsound              = S3001, 2
guard.sparkno           = S8020+(random%2)
ground.type             = High
ground.slidetime        = 20
ground.hittime          = 20
ground.velocity         = -5
airguard.velocity       = -5, -5
air.type                = High
air.velocity            = -8, 5
air.hittime             = 12
getpower                = 27
givepower		        = 0
Fall                    = 0
Fall.recover            = 0
yaccel		            = 0.5
envshake.time           = 3
envshake.freq           = 10
envshake.ampl           = 10
envshake.phase          = 10
id                      = 73012

[State 0: Helper]
type                    = Helper
triggerall              = !NumHelper(8101)
trigger1                = NumTarget(73012) && MoveHit || NumTarget(73012) && Movecontact
id                      = 8102
pos                     = 0,-60
postype                 = p2
stateno                 = 8101
ownpal                  = 1
size.xscale             = .5
size.yscale             = .5
ignorehitpause          = 1
persistent              = 0

;---------------

[State 0, ChangeState]
type = ChangeState
trigger1 = Movecontact
value = 1311
ctrl = 0
ignorehitpause = 1
;persistent =

[State 0:    End]
type                    = DestroySelf
trigger1                = ((frontedgedist <= -75) || (backedgedist <= -75))

;---------------------------------------------------------------------------
;Khh Blast
[Statedef 70312]
type                    = U
movetype                = A
physics                 = U
anim                    = 70312
velset                  = 0,0
ctrl                    = 0
poweradd                = 0
juggle                  = 0
facep2                  = 0
hitdefpersist           = 0
movehitpersist          = 0
hitcountpersist         = 0
sprpriority             = 5
;---------------





[State 0:	VelSet]
type			        = VelSet
trigger1		        = 1
x			            = 11

[State 0: AssertSpecial]
type                    = AssertSpecial
trigger1                = 1
flag                    = noshadow

;---------------

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NP,SP,HP
slot = 0
stateno = 8101
time = 1

[State 0, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = 1

[State 0: Pause]
type                    = Pause
triggerall              = AnimElem = 1,>  0 && AnimElem = 4,<  0
trigger1                = gametime%1 = 0
time                    = 1
movetime                = 1

;---------------

[State 0: Dust]
type                    = MakeDust
trigger1                = (1)
pos                     = 20,floor(-pos y)
spacing                 = 2

[State 0: 	AfterImage]
type 			        = AfterImage
trigger1 		        = !Time
time 			        = 99999
framegap 		        = 2
length 		            = 20
paladd 		            = 0, 0, 0
palmul 		            = .50, .50, .50
palcontrast 	        = 100, 100, 100
trans 		            = add

[State 0]
type                    = AfterImageTime
trigger1                = 1
time                    = 5
ignorehitpause          = 1

[State -2, ComboDampener-Increase]
type = ParentVarAdd
trigger1 = MoveType = A
trigger1 = MoveHit = 1
trigger1 = FVar(10) < 31
trigger1 = NumTarget
fv = 10
value = 1
persistent = 0

;---------------
;Hit Details
;---------------

[State 0, ]
type                    = HitDef
trigger1                = !time
attr                    = S, SP
damage                  = ceil((65+parent,var(20))*parent, fvar(13)),ceil((18+parent,var(20))*parent, fvar(13))
animtype                = Heavy
guardflag               = MAFD
hitflag                 = MA
priority                = 5, Hit
pausetime               = 0, 8
sparkno                 = S8000
guard.sparkno           = S8020+(random%2)
sparkxy                 = -30, 0
hitsound                = S3001, 2
guardsound              = S3001, 2
guardsound              = S400, 0
ground.type             = High
ground.slidetime        = 20
ground.hittime          = 20
ground.velocity         = -5,-5
airguard.velocity       = -5, -5
air.type                = High
air.velocity            = -5, -5
air.hittime             = 12
getpower                = 0
givepower		    = 60
Fall                    = 1
Fall.recover            = 0
yaccel		            = 0.5
envshake.time           = 20
envshake.freq           = 100
envshake.ampl           = 10
envshake.phase          = 10
id                      = 73012

[State 0: Helper]
type                    = Helper
triggerall              = !NumHelper(8101)
trigger1                = NumTarget(73012) && Movecontact
id                      = 8101
pos                     = 0,-60
postype                 = p2
stateno                 = 8101
ownpal                  = 1
size.xscale             = 1.1
size.yscale             = 1.1
ignorehitpause          = 1
persistent              = 0

;---------------

[State 0:    End]
type                    = DestroySelf
trigger1                = MoveContact || ((frontedgedist <= -75) || (backedgedist <= -75))

;---------------------------------------------------------------------------
; Quadrouple shot
[Statedef 70314]
type                    = U
movetype                = A
physics                 = U
anim                    = 70312
velset                  = 0,0
ctrl                    = 0
poweradd                = 0
juggle                  = 0
facep2                  = 0
hitdefpersist           = 0
movehitpersist          = 0
hitcountpersist         = 0
sprpriority             = 5
;---------------





[State 0:	VelSet]
type			        = VelSet
trigger1		        = 1
x			            = ifelse(p2movetype = H,9,9.2)

[State 0: AssertSpecial]
type                    = AssertSpecial
trigger1                = 1
flag                    = noshadow

;---------------

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NP,SP,HP
slot = 0
stateno = 8101
time = 1

[State 0:    NotHitBy]
type                    = NotHitBy
trigger1                = 1
time                    = 2
value                   = SCA,AA,AT
ignorehitpause          = 1

[State 0:    HitBy]
type                    = HitBy
trigger1                = 1
value                   = SCA,AP
time                    = 2

[State -2, ComboDampener-Increase]
type = ParentVarAdd
trigger1 = MoveType = A
trigger1 = MoveHit = 1
trigger1 = FVar(10) < 31
trigger1 = NumTarget
fv = 10
value = 1
persistent = 0

[State 0: Pause]
type                    = Pause
triggerall              = AnimElem = 1,>  0 && AnimElem = 4,<  0
trigger1                = gametime%1 = 0
time                    = 1
movetime                = 1

;---------------

[State 0: Dust]
type                    = MakeDust
trigger1                = (1)
pos                     = 20,floor(-pos y)
spacing                 = 2

[State 0: 	AfterImage]
type 			        = AfterImage
trigger1 		        = !Time
time 			        = 99999
framegap 		        = 2
length 		            = 10
paladd 		            = 0, 0, 0
palmul 		            = .50, .50, .50
palcontrast 	        = 100, 100, 100
trans 		            = add

[State 0]
type                    = AfterImageTime
trigger1                = 1
time                    = 3
ignorehitpause          = 1

;---------------
;Hit Details
;---------------

[State 0, ]
type                    = HitDef
trigger1                = !time
attr                    = S, SP
damage                  = ceil((15-(parent, var(13)*2))*parent, fvar(13)),ceil(5*parent, fvar(13))
animtype                = Heavy
guardflag               = MAFD
hitflag                 = MA
priority                = 4, Hit
pausetime               = 0, 12
sparkno                 = S8000+(random%2)
sparkxy                 = -30, 0
hitsound                = S3001, 2
guardsound              = S3001, 2
guard.sparkno           = S8020+(random%2)
ground.type             = High
ground.slidetime        = 20
ground.hittime          = 20
ground.velocity         = -5
airguard.velocity       = -5, -5
air.type                = High
air.velocity            = -8, 5
air.hittime             = 12
getpower                = 27
givepower		        = 0
Fall                    = 0
Fall.recover            = 0
yaccel		            = 0.5
envshake.time           = 3
envshake.freq           = 10
envshake.ampl           = 10
envshake.phase          = 10
id                      = 73012

[State 0: Helper]
type                    = Helper
triggerall              = !NumHelper(8101)
trigger1                = NumTarget(73012) && MoveHit || NumTarget(73012) && Movecontact
id                      = 8102
pos                     = 0,-60
postype                 = p2
stateno                 = 8101
ownpal                  = 1
size.xscale             = .5
size.yscale             = .5
ignorehitpause          = 1
persistent              = 0

;---------------

[State 0, ChangeState]
type = ChangeState
trigger1 = Movecontact
value = 1311
ctrl = 0
ignorehitpause = 1
;persistent =

[State 0:    End]
type                    = DestroySelf
trigger1                = ((frontedgedist <= -75) || (backedgedist <= -75))

;---------------------------------------------------------------------------
;Khh Blast
[Statedef 70315]
type                    = U
movetype                = A
physics                 = U
anim                    = 70312
velset                  = 0,0
ctrl                    = 0
poweradd                = 0
juggle                  = 0
facep2                  = 0
hitdefpersist           = 0
movehitpersist          = 0
hitcountpersist         = 0
sprpriority             = 5
;---------------





[State 0:	VelSet]
type			        = VelSet
trigger1		        = 1
x			            = 11

[State 0: AssertSpecial]
type                    = AssertSpecial
trigger1                = 1
flag                    = noshadow

;---------------

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NP,SP,HP
slot = 0
stateno = 8101
time = 1

[State 0, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = 1

[State 0: Pause]
type                    = Pause
triggerall              = AnimElem = 1,>  0 && AnimElem = 4,<  0
trigger1                = gametime%1 = 0
time                    = 1
movetime                = 1

;---------------

[State 0: Dust]
type                    = MakeDust
trigger1                = (1)
pos                     = 20,floor(-pos y)
spacing                 = 2

[State 0: 	AfterImage]
type 			        = AfterImage
trigger1 		        = !Time
time 			        = 99999
framegap 		        = 2
length 		            = 20
paladd 		            = 0, 0, 0
palmul 		            = .50, .50, .50
palcontrast 	        = 100, 100, 100
trans 		            = add

[State 0]
type                    = AfterImageTime
trigger1                = 1
time                    = 5
ignorehitpause          = 1

[State -2, ComboDampener-Increase]
type = ParentVarAdd
trigger1 = MoveType = A
trigger1 = MoveHit = 1
trigger1 = FVar(10) < 31
trigger1 = NumTarget
fv = 10
value = 1
persistent = 0

;---------------
;Hit Details
;---------------

[State 0, ]
type                    = HitDef
trigger1                = !time
attr                    = S, SP
damage                  = ceil((35+parent,var(20))*parent, fvar(13)),ceil((18+parent,var(20))*parent, fvar(13))
animtype                = Heavy
guardflag               = MAFD
hitflag                 = MA
priority                = 5, Hit
pausetime               = 0, 8
sparkno                 = S8000
guard.sparkno           = S8020+(random%2)
sparkxy                 = -30, 0
hitsound                = S3001, 2
guardsound              = S3001, 2
guardsound              = S400, 0
ground.type             = High
ground.slidetime        = 20
ground.hittime          = 20
ground.velocity         = -5,-5
airguard.velocity       = -5, -5
air.type                = High
air.velocity            = -5, -5
air.hittime             = 12
getpower                = 0
givepower		    = 60
Fall                    = 1
Fall.recover            = 0
yaccel		            = 0.5
envshake.time           = 20
envshake.freq           = 100
envshake.ampl           = 10
envshake.phase          = 10
id                      = 73012

[State 0: Helper]
type                    = Helper
triggerall              = !NumHelper(8101)
trigger1                = NumTarget(73012) && Movecontact
id                      = 8101
pos                     = 0,-60
postype                 = p2
stateno                 = 8101
ownpal                  = 1
size.xscale             = 1.1
size.yscale             = 1.1
ignorehitpause          = 1
persistent              = 0

;---------------

[State 0:    End]
type                    = DestroySelf
trigger1                = MoveContact || ((frontedgedist <= -75) || (backedgedist <= -75))

;---------------------------------------------------------------------------