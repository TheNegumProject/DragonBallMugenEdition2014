;fading afterimage fast
[statedef 1003]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0,0

[State 1001]
type = parentvarset
trigger1 = time = 0
v = 23
value = 1

[state 1001]
type = assertspecial
trigger1 = time = 0
flag = invisible

[state 1001]
type = varset
trigger1 = time = 0
v = 0
value = parent, anim

[state 1001]
type = varset
trigger1 = time = 0
v = 1
value = parent, animelemno(0)

[state 1001]
type = nothitby
trigger1 = 1
value = SCA

[state 1001]
type = trans
trigger1 = time < 3
trans = addalpha
alpha = 240,256

[state 1001]
type = trans
trigger1 = time >= 3
trans = addalpha
alpha = 240-((time-4)*5),256

[state 1001]
type = changeanim
trigger1 = 1
value = var(0)
elem = var(1)

[State 1001]
type = parentvarset
trigger1 = time = 28
v = 23
value = 0

[state 1001]
type = destroyself
trigger1 = time = 70
;--------------------------------------------------------------------------
;Shunkan Idou afterimage
[statedef 1005]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0,0

[State 1001]
type = parentvarset
trigger1 = time = 0
v = 23
value = 1

[state 1001]
type = assertspecial
trigger1 = time = 0
flag = invisible

[state 1001]
type = varset
trigger1 = time = 0
v = 0
value = parent, anim

[state 1001]
type = varset
trigger1 = time = 0
v = 1
value = parent, animelemno(0)

[state 1001]
type = nothitby
trigger1 = 1
value = SCA


[state 1001]
type = trans
trigger1 = time < 25
trans = addalpha
alpha = 210,226

[state 1001]
type = trans
trigger1 = time >= 25
trans = addalpha
alpha = 210-((time-4)*1),256

[state 1001]
type = changeanim
trigger1 = 1
value = var(0)
elem = var(1)

[State 1001]
type = parentvarset
trigger1 = time = 200
v = 23
value = 0

[state 1001]
type = destroyself
trigger1 = time = 200
;--------------------------------------------------------------------------
;ki blast
[StateDef 1310]
type = A
movetype= A
physics = N
juggle  = 1
velset = 5,5-(random%8)
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
attr = A,NP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = Hard         ;light,medium,hard,back,up,diagup
air.animtype = Hard
;fall.animtype = Back
priority = 4,Hit   ;Hit,Miss,Dodge
damage = ceil((25-(parent, var(13)*2))*parent, fvar(13)),ceil(5*parent, fvar(13))
pausetime = 0,12
;guard.pause,0
sparkno                 =  -1
guard.sparkno = -1
sparkxy = -8, -20
hitsound = S815,2
guardsound = S400,0
ground.type = High      ;Low,Trip,None
ground.slidetime = 20
ground.hittime = 20
air.hittime = 20
ground.velocity = -7,0
air.velocity = -4,-3
sprpriority = 3
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
trigger1 = time = 50
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
type =  PalFX
trigger1 = Parent, Var(6) = 0
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
velset = 7+(random%5),7+(random%5)
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
type =  PalFX
trigger1 = Parent, Var(6) = 0
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
attr = A,NP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
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
palfx.add = -100,-100,-40
palfx.mul = 256,256,512
palfx.sinadd = 0,100,100,15
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
type =  PalFX
trigger1 = Parent, Var(27) = 1
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
x = parent, pos x-12*facing
y = parent, pos y-55


[State 0, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S3003,0
volume = 255
channel = 2

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
type = A
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
y = parent, pos y-110


[State 0, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S3003,0
volume = 255
channel = 2

[State 0, PalFXWiz]
type =PalFX
trigger1 = Parent, Var(6) = 0
time = 999
add = 0,0,0
mul = 256,126,512
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
trigger1 = parent, stateno != 723 
trigger2 =(parent, stateno = 723) && (Parent,animelem = 2)
ignorehitpause = 1 

;--------------------------------------------------------------------------
;ki blast hard
[StateDef 1330]
type = A
movetype= A
physics = N
juggle  = 0
velset = 7,0
ctrl = 0
anim = 8336
poweradd = 0;0
sprpriority = 5

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S3003,1
volume = 255
channel = 2

[State 0, ]
type = Explod
trigger1 = (time%6)=0
anim = 8100
ID = 8100
pos = 0,0-ceil(pos Y)
facing = 1
scale = 1,.5
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 1


[State 0, Explod]
type = null; Explod
trigger1 = !time
anim = 8310
ID = 8310
pos = 0,0
postype = p1  ;p2,front,back,left,right
removetime = -2
bindtime = 1
scale = .6,.6
sprpriority = 6
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0




[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,SP,HP
slot = 0
stateno = 1311
time = 1

[State 0, HitBy]
type = HitBy
trigger1 = 1
value = SCA,SP,HP
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
ignorehitpause = 1

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
damage = ceil((90+parent,var(20))*parent, fvar(13)),ceil((18+parent,var(20))*parent, fvar(13))
pausetime = 0,10
;guard.pause,0
sparkno = -1
guard.sparkno =-1
sparkxy = -20,0
hitsound = S300,2
guardsound = S815,0
ground.type = Low      ;Low,Trip,None
ground.slidetime = 25
ground.hittime = 25
air.hittime = 25
ground.velocity = -7
fall = 0
air.velocity = -7,-2
sprpriority = 3
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
value = 1331
ctrl = 0
ignorehitpause = 1
;persistent =

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 35
value = 1332
ctrl = 0
ignorehitpause = 1
;persistent =

;--------------------------------------------------------------------------
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
scale = .5,.5
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

[State 0, PalFXWiz]
type = PalFX
trigger1 = !var(6)
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

;---------------------------------------------------------------------------
[StateDef 1340, Kamehameha beam]
type = S
movetype= A
physics = S
ctrl = 0
anim = 6051
sprpriority = 3


[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, BindToParent]
type = BindToParent
trigger1 = 1
pos = 44,-52

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA;,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 0: HitOverride]
type                    = HitOverride
trigger1                = 1
slot                    = 0
attr                    = SCA, NP, SP, HP
stateno                 = -1
time                    = -1

[State 0, HitDef]
type = HitDef
trigger1 = Animelem=1
trigger2 = Animelem=4
trigger3 = Animelem=7
attr = S,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAFDP        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 0,0
givepower = 0,0
animtype = hard          ;light,medium,hard,back,up,diagup
air.animtype = hard
priority = 8,Hit   ;Hit,Miss,Dodge
damage = 20
pausetime = 2,10
sparkno = S IfElse(random<500,IfElse(random<500,7300,7301),IfElse(random<500,7302,7303))
guard.sparkno = S ifelse(random<200,9053,9003)
sparkxy = 0,0
hitsound = S480
guardsound = 0,0
ground.type = High      ;Low,Trip,None
air.type = High
ground.slidetime = 10
ground.hittime = 11
air.hittime = 20
ground.velocity = -9
guard.velocity = -15
air.velocity = -3,-5
sprpriority = 2
fall = 0
fall.recover = 0
guard.kill = 1
envshake.time = 30
envshake.freq = 80
envshake.ampl = -9


[State 0, DestroySelf]
type = DestroySelf
trigger1 = Animtime=0
;-------------------------------------------------------------------
[StateDef 6107,Zanzoken helper]
type = S
movetype= I
physics = S
ctrl = 0
anim = 6107
sprpriority =8


[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
trigger2 = animelem = 2
trigger3 = animelem = 3
trigger4 = animelem = 4
trigger5 = animelem = 5
trigger6 = animelem = 6
trigger7 = animelem = 7
trigger8 = animelem = 8
value = S2100,0


[State 0, PosAdd]
type = null; posadd
trigger1 = time = 0
x = 40*random%8+1
y = 90*random%4+1

[State 0, PosAdd]
type = posset
trigger1 = animelem = 1
x = -140
y = -40


[State 0, PosAdd]
type = posset
trigger1 = animelem = 2
x = -10
y = -10

[State 0, PosAdd]
type = posset
trigger1 = animelem = 3
x = 180
y = -60

[State 0, PosAdd]
type = posset
trigger1 = animelem = 4
x = 140
y = 0

[State 0, PosAdd]
type = posset
trigger1 = animelem = 5
x = 40
y = -70

[State 0, PosAdd]
type = posset
trigger1 = animelem = 6
x = -110
y = -90

[State 0, PosAdd]
type = posset
trigger1 = animelem = 7
x = -160
y = -30



[State 0, AfterImage]
type         = AfterImage
trigger1     = time = 0
time 	     = 120
timegap	     = 9
framegap     = 1
length 	     = 5
paladd 	     = 0, 0, 0
palmul       = .80, .80, .80
palcontrast  =	110,110,110
trans 	     = add
persistent   = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1 =  time = 120

;-------------------------------------------------------------------------
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

; Push Effect 2
[Statedef 8032]
type                    = S
movetype                = I
physics                 = S
anim                    = 8080
ctrl                    = 0
facep2                  = 1

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
 

;--------------------------------------------------------------------------
; Kiaiho Helper
[Statedef 8005]
type                    = U
movetype                = A
physics                 = U
anim                    = 8516
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

[State 0: AssertSpecial]
type                    = AssertSpecial
trigger1                = 1
flag                    = noshadow

[State 0: VelSet]
type                    = VelSet
trigger1                = 1
x                       = 12

;---------------

[State 0:     Screen Flash]
type                    = EnvColor
trigger1                = (movecontact = 1)
value                   = 255,255,255
time                    = 1
under                   = 0

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
attr                    = S, SA
ID                      = 8005  
damage                  = ceil((120-(parent, var(13)*2))*parent, fvar(13)),ceil(5*parent, fvar(13))
animtype                = diagup
guardflag               = MA
hitflag                 = MAF
priority                = 3, Hit
pausetime               = 0, 7
sparkno                 = S8349
guard.sparkno           = S7113
sparkxy                 = -23, -63
hitsound                = S815, 0
guardsound              = S400, 0
ground.type             = High
ground.slidetime        = 12
ground.hittime          = 12
ground.velocity         = -12, -7
airguard.velocity       = -5, -5
air.type                = High
air.velocity            = -9, -7
air.hittime             = 12
fall                    = 1
getpower                = 0
givepower		        = 0
envshake.time           = 10
envshake.freq           = 30
envshake.ampl           = 7
yaccel		            = 0.5
p2stateno               = 6000

[State 0: Explod]
type                    = Explod
trigger1                = NumTarget(8005) && MoveHit
anim                    = IfElse(random<500,IfElse(random<500,7104,7105),IfElse(random<500,7106,7107))
pos                     = 0,-50
postype                 = p2
sprpriority             = 3
ownpal                  = 1
ignorehitpause          = 1
persistent              = 0

;---------------

[State 0:        DestroySelf]
type 			        = DestroySelf
trigger1 		        = MoveHit || (frontedgedist <= -175 || backedgedist <= -175)

;---------------------------------------------------------------------------
; Buster Ball
[Statedef 7023]
type 		        = U
movetype		        = A
physics		        = U
juggle	    	        = 1
anim    		        = 70312
velset		        = 0,0
ctrl		        = 0
poweradd		        = 0
facep2		        = 0
hitdefpersist	        = 0
movehitpersist	        = 0
hitcountpersist	        = 0
sprpriority	        = 3

[State 0:	VelSet]
type			        = VelSet
trigger1		        = 1
x			            = 8
y                                         = 2

[State 0: AssertSpecial]
type                    = AssertSpecial
trigger1                = 1
flag                    = noshadow

;---------------

[State 0:    HitOverride]
type                    = HitOverride
trigger1                = 1
slot                    = 1
time                    = -1
stateno                 = 7023
attr                    = SCA,AA,SP,AT

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
palcontrast 	        = 50, 50, 50
trans 		            = add

;---------------

[State 0, ]
type                    = HitDef
;triggerall              = p2stateno != 1024
trigger1                = !Time
attr                    = S, SP
damage                  = 0, 10
animtype                = hard
guardflag               = MAFD
hitflag                 = MAF, NP, SP, NT, ST, HT
priority                = 5, Miss
pausetime               = 0, 0
sparkno                 = S8030+(random%5)
guard.sparkno           = S8020+(random%2)
sparkxy                 = 19, 0
guardsound              = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 1, 2))
guardsound              = S2010, 3
ground.type             = High
ground.slidetime        = 20
ground.hittime          = 20
ground.velocity         = -7, -7
airguard.velocity       = -7, -7
air.type                = High
air.velocity            = -7, -7
air.hittime             = 12
getpower                = 27
givepower		        = 0
Fall                    = 1
Fall.recover            = 0
yaccel		            = 0.5
envshake.time           = 20
envshake.freq           = 80
envshake.ampl           = 10
id                      = 7023
p2facing                = 1
p1stateno               = 70231
p2stateno               = 3510

[State 0:    End]
type                    = DestroySelf
trigger1                = MoveGuarded || ((frontedgedist <= -175) || (backedgedist <= -175))

;--------------------------------------------------------------------------------------------------------------
; Blaster Ball - Grab
[Statedef 70231]
type 			        = U
movetype		        = A
physics		            = N
juggle	    	        = 1
anim    			    = 70312
velset		            = 8,8
ctrl			        = 0
poweradd		        = 0
facep2		            = 0
hitdefpersist	        = 0
movehitpersist	        = 0
hitcountpersist	        = 0
sprpriority		        = 2

[State 0: TargetBind]
type                    = TargetBind
trigger1                = 1
pos                     = 0,-5
ID                      = 7023

[State 0]
type                    = AfterImageTime
trigger1                = 1
time                    = 1
ignorehitpause          = 1

[State 0, ]
type                    = PlaySnd
trigger1                = !Time
value                   = 3003,0
Volume                  = 255

[State 0: MakeDust]
type                    = MakeDust
trigger1                = 1
pos                     = 20,floor(-pos y)
spacing                 = 2


[State 0: Width]
type                    = width
trigger1                = 1
edge                    = 10,0

[State 0: ChangeState]
type                    = ChangeState
trigger1                = Time > 2 && FrontEdgeBodydist <= -5
trigger2                = Time > 2 && Pos Y >=0
value                   = 70232

;---------------------------------------------------------------------------
; Wall Explode
[Statedef 70232]
type 		= U
movetype		= I
physics		= U
juggle	    	= 1
anim    	          = 90
velset		            = 0,0
ctrl			        = 0
poweradd		        = 0
facep2		            = 0
hitdefpersist	        = 0
movehitpersist	        = 0
hitcountpersist	        = 0
sprpriority		        = 2

[State 0: AssertSpecial]
type                    = AssertSpecial
trigger1                = 1
flag                    = Invisible

[State 0: TargetBind]
type                    = TargetBind
trigger1                = !Time
pos                     = 50,0
ID                      = 7023

[State 0: Width]
type                    = width
trigger1                = 1
edge                    = 10,0

[State 0: TargetLifeAdd]
type                    = TargetLifeAdd
trigger1                = !Time
value                   = -90
ID                      = 7023

[State 0: TargetState]
type                    = Targetstate
trigger1                = !Time
value                   = 3511
ID                      = 7023

[State 0, Sound]
type                    = PlaySnd
trigger1                = !Time
value                   = 3001,2

[State 0: Helper]
type                    = Helper
triggerall              = !NumHelper(8101)
trigger1                = !Time
id                      = 8101
pos                     = 0,0
postype                 = p1
stateno                 = 8101
ownpal                  = 1
size.xscale             = 1.2
size.yscale             = 1.2
ignorehitpause          = 1
persistent              = 0




[State 0:       EnvShake]
type 			        = EnvShake
trigger1 		        = !Time
time 			        = 20
freq 			        = 100
ampl 			        = 10
phase                   = 20

[State 0:    End]
type                    = DestroySelf
trigger1                = Time = 200

;---------------------------------------------------------------------------
;Khh Blast
[Statedef 70312]
type                    = U
movetype                = A
physics                 = U
anim                    = 70311
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
damage                  = ceil((130+parent,var(20))*parent, fvar(13)),ceil((18+parent,var(20))*parent, fvar(13))
animtype                = Heavy
guardflag               = MAFD
hitflag                 = MA
priority                = 3, Hit
pausetime               = 0, 8
sparkno                 = S8001
guard.sparkno           = S8020+(random%2)
sparkxy                 = -30, 0
hitsound                = S3001, 2
guardsound              = S3001, 2
guardsound              = S400, 0
ground.type             = High
ground.slidetime        = 20
ground.hittime          = 20
ground.velocity         = -5,ifelse(p2movetype = H,-5,0)
airguard.velocity       = -5, -5
air.type                = High
air.velocity            = -5, -5
air.hittime             = 12
getpower                = 0
givepower		    = 60
Fall                    = ifelse(p2movetype = H,1,0)
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
pos                     = 20,0
postype                 = p1
stateno                 = 8101
ownpal                  = 1
size.xscale             = .8
size.yscale             = .8
ignorehitpause          = 1
persistent              = 0

;---------------

[State 0:    End]
type                    = DestroySelf
trigger1                = MoveContact || ((frontedgedist <= -75) || (backedgedist <= -75))

;---------------------------------------------------------------------------
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
damage                  = ceil((65-(parent, var(13)*2))*parent, fvar(13)),ceil(5*parent, fvar(13))
animtype                = Heavy
guardflag               = MAFD
hitflag                 = MA
priority                = 4, Hit
pausetime               = 0, 8
sparkno                 = S8000+(random%2)
guard.sparkno           = S7113
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
pos                     = 20,0
postype                 = p1
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
;Binding Blast
[StateDef  70314]
type = A
movetype= A
physics = N
ctrl = 0
anim = 70312
sprpriority =8



[State 0:	VelSet]
type			        = VelSet
trigger1		        = 1
x			            = 7
y                       = 7
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
stateno = 1311
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

[State 0: Pause]
type                    = Pause
triggerall              = AnimElem = 1,>  0 && AnimElem = 4,<  0
trigger1                = gametime%1 = 0
time                    = 1
movetime                = 1

;--------------------
;Blast effects
;--------------------


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


[State 0, ]
type                    = HitDef
triggerall              = p2stateno != 1024
trigger1                = !Time
attr                    = S, SP
damage                  = 0, 20
animtype                = hard
guardflag               = MAFD
hitflag                 = MAF, NP, SP, NT, ST, HT
priority                = 5, Miss
pausetime               = 0, 0
sparkno                 = -1
guard.sparkno           = S7113
sparkxy                 = 0, 0
guardsound              = S400, 0
guardsound              = S2010, 3
ground.type             = High
ground.slidetime        = 20
ground.hittime          = 20
ground.velocity         = -7, -7
airguard.velocity       = -7, -7
air.type                = High
air.velocity            = -7, -7
air.hittime             = 12
getpower                = 27
givepower		        = 0
Fall                    = 1
Fall.recover            = 0
yaccel		            = 0.5
envshake.time           = 20
envshake.freq           = 80
envshake.ampl           = 10
id                      = 8014
p2facing                = 1
p1stateno               = 80141
p2stateno               = 3511



[State 0, PlaySnd]
type = PlaySnd
trigger1 = Pos y>= 0
value = S800,0

[State 0:    End]
type                    = DestroySelf
trigger1                = movehit

;------------------------------------------------------------------------
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

;-------------------------------------------------------------------------
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
type =  PalFX
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
type =  PalFX
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
type =  PalFX
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
;Aura up
[StateDef 8303]
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
type =  PalFX
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
trigger1 = parent, stateno!= 3101
ignorehitpause = 1

;-------------------------------------------------------------------------
; Chou Kamehameha Beam
[Statedef 8305]
movetype		        = A
ctrl			        = 0
anim                    = 8305
SprPriority             = 4

[State 0: PlayerPush]
type                    = PlayerPush
trigger1                = (1)
value                   = 0
persistent              = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S3002,1

[State 0, ]
type                    = BindToParent
trigger1                = 1
time                    = 1
pos		                = 21, -62

[State 0:    No Shadow]
Type                    = AssertSpecial
Trigger1                = 1
Flag                    = NoShadow
Flag2                   = Invisible

[State 0: Explod]
type                    = Explod
trigger1                = !Time
anim                    = 8305
ID                      = 8305
bindtime                = -1
sprpriority             = 5
ownpal                  = 1

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
damage                  = ceil((260-(parent, var(13)*2))*parent, fvar(13)),ceil(5*parent, fvar(13))
animtype                = Heavy
guardflag               = M
hitflag                 = MAF
priority                = 7, Hit
pausetime               = 0, 12
sparkno                 = S8340
guard.sparkno           = S7113
sparkxy                 = 0, 0
hitsound                = S815, 1
guardsound              = S815, 1
ground.type             = high
ground.slidetime        = 20
ground.hittime          = 20
ground.velocity         = -11, -7
airguard.velocity       = -11, -7
air.type                = high
air.velocity            = -11, -7
air.hittime             = 12
getpower                = 0
givepower		        = 0
Fall                    = 1
Fall.recover            = 0
yaccel		            = 0.5
envshake.time           = 40
envshake.freq           = 100
envshake.ampl           = 10
id                      = 8305



[State 0:        DestroySelf]
type 			        = DestroySelf
trigger1 		        = !AnimTime
trigger2 		        = parent,stateno != 3000  
trigger3 		        = parent,movetype = H

;---------------------------------------------------------------------------
; Chou Kamehameha Beam (Warp)
[Statedef 8306]
movetype		        = A
ctrl			        = 0
anim                    = 8305
SprPriority             = 4

[State 0: PlayerPush]
type                    = PlayerPush
trigger1                = (1)
value                   = 0
persistent              = 1

[State 0, ]
type                    = BindToParent
trigger1                = 1
time                    = 1
pos		                = 21, -62

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S3002,1


[State -2, ComboDampener-Increase]
type = ParentVarAdd
trigger1 = MoveType = A
trigger1 = MoveHit = 1
trigger1 = FVar(10) < 31
trigger1 = NumTarget
fv = 10
value = 1
persistent = 0

[State 0:    No Shadow]
Type                    = AssertSpecial
Trigger1                = 1
Flag                    = NoShadow
Flag2                   = Invisible

[State 0: Explod]
type                    = Explod
trigger1                = !Time
anim                    = 8305
ID                      = 8305
bindtime                = -1
sprpriority             = 5
ownpal                  = 1

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

[State 0, ]
type                    = HitDef
trigger1                = !Time
attr                    = S, HP
damage                  = ceil((295-(parent, var(13)*2))*parent, fvar(13)),ceil(5*parent, fvar(13))
animtype                = Heavy
guardflag               = M
hitflag                 = MAF
priority                = 7, Hit
pausetime               = 0, 12
sparkno                 = S8340
guard.sparkno           = S7113
sparkxy                 = 0, 0
hitsound                = S815, 1
guardsound              = S815, 1
ground.type             = high
ground.slidetime        = 20
ground.hittime          = 20
ground.velocity         = -11, -7
airguard.velocity       = -11, -7
air.type                = high
air.velocity            = -11, -7
air.hittime             = 12
getpower                = 0
givepower		        = 0
Fall                    = 1
Fall.recover            = 0
yaccel		            = 0.5
envshake.time           = 40
envshake.freq           = 100
envshake.ampl           = 10
id                      = 8305



[State 0:        DestroySelf]
type 			        = DestroySelf
trigger1 		        = !AnimTime
trigger2 		        = parent,stateno != 3002
trigger3 		        = parent,movetype = H

;---------------------------------------------------------------------------
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
x = parent, pos x+47*facing
y = parent, pos y-65



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


[State 0, PalFXWiz]
type = PalFX
trigger1 = 1
time = 999
add = -80,0,0
mul = 340,300,425
sinadd = 0,0,0,10
invertall = 0
color = 5



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
attr                    = C, NA
damage                  = 21
animtype                = back
guardflag               = MA
hitflag                 = MAF
priority                = 3, Hit
pausetime               = 0, 12
sparkno                 = S8000+(random%2)
guard.sparkno           = S8020+(random%2)
sparkxy                 = -19, -26
hitsound                = S815, 0
guardsound              = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 1, 2))
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
;Genki Dama Energy
[Statedef 8400]
type 		= S
movetype		        = I
physics		            = N
anim			        = 8500
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

[State 0:   VelAdd]
type                    = VelAdd
trigger1                = (vel y < 50)
x                       = ifelse(random>500,-.5,.5)
y                       = ifelse(random>500,-1,ifelse(random>500,-0.8,ifelse(random>500,-0.7,-0.6)))

[State 0:	VarRandom]
type			        = VarRandom
trigger1		        = (!Time)
v			            = 0
range			        = -200,200

[State 0:	PosSet]
type			        = PosSet
trigger1		        = (!Time)
x			            = var(0)
y			            = 0

[State 0: AfterImage]
type 			        = AfterImage
trigger1 		        = !time
time 			        = 99999
TimeGap                 = 1
FrameGap                = 2
length                  = 60
palbright               = 180,180,180
paladd 		            = 120, 120, 120
palmul 		            = .3,.3,.3
palcontrast 	        = 256,256,256
trans 		            = add
persistent		        = 1

[State 0, AfterImage]
type                    = AfterImageTime
trigger1                = 1
time                    = 2

[State 0:	DestroySelf]
type			        = DestroySelf
trigger1		        = (Pos Y < -210) || (!AnimTime)

;---------------------------------------------------------------------------
;Genki Dama Charge
[Statedef 8401]
type                    = U
movetype                = U
physics                 = U
anim                    = 8501
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
type                    = BindToParent
trigger1                = 1
time                    = 1
pos		                = -3,-250

[State 0: VarSet]
type 			        = VarSet
trigger1 		        = (!Time)
fv 			            = 1
value 		            = 1

[State 0: VarAdd]
type 			        = VarAdd
trigger1 		        = Time < 45 && (TimeMod = 5,0)
fv 			            = 1
value 		            = -0.45

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
trigger1 		        = parent, AnimElem = 2 || parent,stateno != 4001

;---------------------------------------------------------------------------
; Genki Dama Ball Helper
[Statedef 8402]
type                    = A
movetype                = A
physics                 = N
anim                    = 8502
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
triggerall              = Parent, AnimElem = 2
trigger1		        = !time
x			            = .2
y                       = .5

[State 0:	VelSet]
type			        = VelSet
trigger1		        = Parent, AnimElem = 2, > 110
x			            = 4
y                       = 5.5

[State 0: AssertSpecial]
type                    = AssertSpecial
trigger1                = 1
flag                    = noshadow

[State 0:   HitOverride]
type                    = HitOverride
trigger1                = 1
attr                    = SCA, NP, SP, HP
time                    = -1
StateNo                 = 8402

[State 0: HitBy]
type                    = HitBy
trigger1                = 1
value                   = SCA, NP, SP, HP

;---------------

[State 0: Dust]
type                    = MakeDust
trigger1                = (1)
pos                     = 50,floor(-pos y)
spacing                 = 3

[State 0: Dust]
type                    = MakeDust
trigger1                = (1)
pos                     = 40,floor(-pos y)
spacing                 = 3

[State 0: Dust]
type                    = MakeDust
trigger1                = (1)
pos                     = 30,floor(-pos y)
spacing                 = 3

[State 0: Dust]
type                    = MakeDust
trigger1                = (1)
pos                     = 20,floor(-pos y)
spacing                 = 3

[State 0: Dust]
type                    = MakeDust
trigger1                = (1)
pos                     = 10,floor(-pos y)
spacing                 = 3

[State 0: Dust]
type                    = MakeDust
trigger1                = (1)
pos                     = 0,floor(-pos y)
spacing                 = 3

[State 0: Dust]
type                    = MakeDust
trigger1                = (1)
pos                     = -10,floor(-pos y)
spacing                 = 3

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
attr                    = S, HP
ID                      = 8402   
damage                  = ceil((400-(parent, var(13)*2))*parent, fvar(13)),ceil(5*parent, fvar(13))
animtype                = Heavy
guardflag               = MAFD
hitflag                 = MAF, NP, SP, HP, NT, ST, HT
priority                = 3, Hit
pausetime               = 0, 22
sparkno                 = -1
guard.sparkno           = -1
sparkxy                 = 0, 0
hitsound                = S4000, 4
guardsound              = S4000, 4
ground.type             = High
ground.slidetime        = 12
ground.hittime          = 12
ground.velocity         = -12, -12
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
envshake.freq           = 190
envshake.ampl           = 20

;---------------

[State 0:        DestroySelf]
type 			        = DestroySelf
trigger1 		        =  parent,stateno != 4001

[State 0:    End]
type                    = ChangeState
trigger1                = (movecontact) || ((frontedgedist <= -175) || (backedgedist <= -175)) || (Pos Y >= 0) 
value                   = 8403

;---------------------------------------------------------------------------
; Genki Dama Explode
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
trigger1 			    = Time = 15
time 				    = 90
add 				    = 200,200,256
mul 				    = 200,200,256
sinadd 			        = 200,200,256,150
invertall 			    = 0
color 			        = 256

;---------------
[State 0:    Done]
type                    = DestroySelf
trigger1                = (Time >= 200)

;---------------------------------------------------------------------------
;Genki Dama Explode Helper
[Statedef 8404]
type                    = U
movetype                = U
physics                 = U
anim                    = 8502
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
trigger1 		        = Time = 30

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
trigger1 		        = Time = 100
trigger2 		        = parent,stateno != 4001
trigger3 		        = parent,movetype = H

;---------------------------------------------------------------------------

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
x = parent, pos x-17*facing
y = parent, pos y-66

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S3001,0
volume = 0
channel = 3

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
;Galick Gun - Charge
[StateDef 8507]
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
x = parent, pos x-18*facing
y = parent, pos y-68

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S3001,0
volume = 0
channel = 3

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
trigger1 = parent, stateno != 3003
ignorehitpause = 1

;-------------------------------------------------------------------------
;Million Dollar Renzoku (Ball charge) 
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
flag2 = nobardisplay
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
;Galick Gun - Fire!
[StateDef 8516]
type = S
movetype= A
physics = N
velset = 0,0
ctrl = 0
anim = 8516
poweradd = 0
sprpriority = 5
juggle = 1



[state 8516, Juggle Set for Basics]
type =  parentvarset
trigger1 = numtarget
trigger1 = movehit = 1
v = 14
value = 10 


[State 0, PosSet]
type = PosSet
trigger1 = 1
x = parent, pos x+43*facing
y = parent, pos y-57

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S3001,2

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

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, HitDef]
type = HitDef
trigger1 = !time
ID = 8516
nochainID = 8516
nochainid = 1365
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
pausetime = 0,20
;guard.pause,0
air.juggle = 1
sparkno = -1
guard.sparkno = S8345+(random%4)
sparkxy = -20,0
;hitsound = S3001,2
;guardsound = S3001,2
ground.type = Low      ;Low,Trip,None
ground.slidetime = 20
ground.hit = 35
air.hittime = 35
Fall = 1
p2stateno = 6000
ground.velocity = -15,-4
air.velocity = -15,-4
sprpriority = 5
palfx.time = 55
palfx.add = 240,50,250
palfx.mul = 250,224,220
palfx.sinadd = 110,55,185,15
envshake.time = 35
envshake.freq = 120
envshake.ampl = 8

[State 0, ChangeState]
type = ChangeState
trigger1 = !AnimTime || Moveguarded
value = 8317
ctrl = 0
ignorehitpause = 1
;persistent =

[State 0, DestroySelf]
type = DestroySelf
trigger1 = parent, stateno != 3001 && time = 34
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
trigger1 = time = 10

[State 0, ChangeState]
type = ChangeState
trigger1 = Pos Y >=0
value = 2516
ctrl = 0
ignorehitpause = 1
;--------------------------------------------------------------------------
;Galic Gun push (Kamekaze code thanks!)
[Statedef 8318]
physics = N
velset = 0,0
anim = 5333
ctrl = 0

[State 0, VelSet]
type = VelSet
trigger1 = !time
x = 30

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 161

[State 0, VelMul]
type = VelMul
trigger1 = time > 20
x = .85

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S5,1

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0

[State 4003, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1
ignorehitpause = 1
persistent = 1

[State 911, Destroy]
type = destroyself
trigger1 = time >= 35
;--------------------------------------------------------------------------
;Galick Ho Blast - AIR
[StateDef 2515]
type = A
movetype= A
physics = N
juggle  = 0
velset = 9,12
ctrl = 0
anim = 8334
poweradd = 0;0
sprpriority = 5

[State 0, PalFXWiz]
type =PalFX
trigger1 = Parent, Var(6) = 0
time = 999
add = 0,0,0
mul = 380,230,512
sinadd = 0,0,0,10
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
stateno = 2516
time = 1

[State 0, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time 
value = S1000,2



[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, HitDef]
type = HitDef
trigger1 = !time
attr = A,SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAFD        ;HLAFD+-
guardflag = MA         ;HLA
animtype = medium         ;light,medium,hard,back,up,diagup
air.animtype = Hard
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 225
pausetime = 0,9
;guard.pause,0
sparkno = -1
guard.sparkno = S8340+(random%4)
sparkxy = -20,0
hitsound = S1000,3
guardsound = S300,2
ground.type = Low      ;Low,Trip,None
Air.type = Low      ;Low,Trip,None
ground.slidetime = 20
ground.hittime = 20
air.hittime = 20
ground.velocity = -7,0
air.velocity = -9,8
palfx.time = 35
palfx.add = 240,50,250
palfx.mul = 250,224,220
palfx.sinadd = 110,55,185,15
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6
getpower = 0;0
Fall = 1


[State 9050:	Stop]
type			= velset
trigger1		= movecontact && !animtime
y			= 0

[State 9050:	Explode]
type			= Changestate
trigger1		= movecontact  || pos Y >= 0
value			= 2516

;--------------------------------------------------------------------------
;Galick Ho blast destroy hitting ground
[StateDef 2516]
type = S
movetype= A
physics = N
velset = 0,0
Anim = 8335
ctrl = 0
sprpriority = 5

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1


[State 9050]
type 			= trans
trigger1 		= time = 0
trans 		= add

[State 9051:	End]
type			= Destroyself
trigger1		= animtime = 0
;-------------------------------------------------------------------------------
;Galick Ho blast destroy
[StateDef 2511]
type = S
movetype= A
physics = N
velset = 0,0
Anim = 8335
ctrl = 0
sprpriority = 5

[State 0, PalFXWiz]
type =PalFX
trigger1 = Parent, Var(6) = 0
time = 999
add = 0,0,0
mul = 256,126,512
sinadd = 0,0,0,1
invertall = 0
color = 1

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
trigger1 = time = 45


;-----------------------------------------------------------------------
;ki blast hard
[StateDef 1335]
type = A
movetype= A
physics = N
juggle  = 0
velset = 10,0
ctrl = 0
anim = 8330
poweradd = 0;0
sprpriority = 5

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S3003,1
volume = 255
channel = 2

[State 0, ]
type = Explod
trigger1 = (time%6)=0
anim = 8100
ID = 8100
pos = 0,0-ceil(pos Y)
facing = 1
scale = 1,.5
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 1


[State 0, Explod]
type = Explod
trigger1 = !time
anim = 8310
ID = 8310
pos = -25,-4
postype = p1  ;p2,front,back,left,right
removetime = -2
bindtime = 1
scale = .6,.6
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
ignorehitpause = 1

[State 0, HitDef]
type = HitDef
trigger1 = !time
attr = A,SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = Hard         ;light,medium,hard,back,up,diagup
air.animtype = Hard
;fall.animtype = Back
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 5
pausetime = 0,25
;guard.pause,0
sparkno = S8340
guard.sparkno = S8340+(random%4)
sparkxy = -20,0
hitsound = S815,0
guardsound = S815,0
ground.type = Low      ;Low,Trip,None
ground.slidetime = 25
ground.hittime = 25
air.hittime = 25
ground.velocity = -7,-2
fall = 0
air.velocity = -7,-2
sprpriority = 3
palfx.time = 15
palfx.add = -100,-100,-100
palfx.mul = 350,350,256
palfx.sinadd = 100,100,0,15
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6
getpower = 0;0
p2stateno = 761

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
value = 1331
ctrl = 0
ignorehitpause = 1
;persistent =

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 35
value = 1332
ctrl = 0
ignorehitpause = 1
;persistent =

;-----------------------------------------------------------------------
;ki blast hard
[StateDef 1340]
type = A
movetype= A
physics = N
juggle  = 0
velset = 10,0
ctrl = 0
anim = 8330
poweradd = 0;0
sprpriority = 5

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S1000,0
volume = 255
channel = 2

[State 0, ]
type = Explod
trigger1 = (time%6)=0
anim = 8100
ID = 8100
pos = 0,0-ceil(pos Y)
facing = 1
scale = 1,.5
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
ignorehitpause = 1

[State 0, HitDef]
type = HitDef
trigger1 = !time
attr = A,SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = Hard         ;light,medium,hard,back,up,diagup
air.animtype = Hard
;fall.animtype = Back
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 50
pausetime = 0,10
;guard.pause,0
sparkno = S8340
guard.sparkno = S8340+(random%4)
sparkxy = -20,0
hitsound = S815,0
guardsound = S815,0
ground.type = Low      ;Low,Trip,None
ground.slidetime = 25
ground.hittime = 25
air.hittime = 25
ground.velocity = -10,-6
fall = 1
air.velocity = -7,-2
sprpriority = 3
palfx.time = 15
palfx.add = -100,-100,-100
palfx.mul = 350,350,256
palfx.sinadd = 100,100,0,15
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
value = 1331
ctrl = 0
ignorehitpause = 1
;persistent =

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 35
value = 1332
ctrl = 0
ignorehitpause = 1


;--------------------------------------------------------------------------
;Renzoku
[StateDef 1360]
type = A
movetype= A
physics = N
juggle  = 2
velset = 9+(random%2),4-(random%8)
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
type = null; PalFX
trigger1 = Parent, Var(6) = 0
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
stateno = 1351
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
;nochainid = 1370
trigger1 = parent,anim =3101 &&!time
attr = A,HP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = Hard         ;light,medium,hard,back,up,diagup
air.animtype = diagup
;fall.animtype = diagup
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 5,1
pausetime = 0,15
;guard.pause,0
sparkno = -1
guard.sparkno = -1
sparkxy = -20,0
hitsound = S300,2
guardsound     = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 1, 2)) 
ground.type = High      ;Low,Trip,None
ground.slidetime = 20
ground.hittime = 20
air.hittime = 20
ground.velocity = -4
air.velocity = -2,-1
palfx.time = 15
palfx.add = -100,-100,-100
palfx.mul = 350,350,256
palfx.sinadd = 100,100,0,15
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6
getpower = 0;0
fall = 0
fall.recover = 0

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
value = 1361
ctrl = 0
ignorehitpause = 1
;persistent =

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 45
value = 1362
ctrl = 0
ignorehitpause = 1
;persistent =

;--------------------------------------------------------------------------
;Renzoku bigger blast
[StateDef 1365]
type = A
movetype= A
physics = N
juggle  = 8
velset = 12
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
type = null; PalFX
trigger1 = Parent, Var(6) = 0
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
stateno = 1351
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
trigger1 = parent,anim =3101 &&!time
attr = A,HP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = Hard         ;light,medium,hard,back,up,diagup
air.animtype = diagup
;fall.animtype = diagup
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 5,1
pausetime = 0,9
;guard.pause,0
sparkno = s8345
guard.sparkno = S8020+(random%2)
sparkxy = -20,0
hitsound = S300,2
guardsound          = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 1, 2)) 
ground.type = High      ;Low,Trip,None
ground.slidetime = 20
ground.hittime = 20
air.hittime = 20
ground.velocity = -2,-12
air.velocity = -1,-11
palfx.time = 15
palfx.add = -100,-100,-100
palfx.mul = 350,350,256
palfx.sinadd = 100,100,0,15
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6
getpower = 0;0
fall = 1
fall.recover = 0

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
value = 1361
ctrl = 0
ignorehitpause = 1
;persistent =

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 45
value = 1362
ctrl = 0
ignorehitpause = 1
;persistent =

;-------------------------------------------------------------------------
;Ki Bullet
[StateDef 1370]
type = A
movetype= A
physics = N
juggle  = 8
velset = 19.5,
ctrl = 0
anim = 8336
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
pos = -27,6
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
type = null; PalFX
trigger1 = Parent, Var(6) = 0
time = 999
add = 0,0,0
mul = 256,256,512
sinadd = 0,0,0,1
invertall = 0
color = 1

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
palcontrast 	        = 50, 50, 50
trans 		            = add


[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = Parent, Var(6) = 0
trigger1 = time = [0,1]
flag = invisible
ignorehitpause = 1

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr =,HP
slot = 0
stateno = 1351
time = 1

[State 0, HitBy]
type = HitBy
trigger1 = 1
value = ,HP
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
ID = 1370
trigger1 = !time
attr = A,HP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = diagup        ;light,medium,hard,back,up,diagup
air.animtype = diagup
fall.animtype = diagup
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 125,15
pausetime = 0,12
;guard.pause,0
sparkno = s8345
guard.sparkno = S8020+(random%2)
sparkxy = -20,0
hitsound = S1000,3
guardsound     = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 1, 2)) 
ground.type = High      ;Low,Trip,None
ground.slidetime = 20
ground.hittime = 20
air.hittime = 20
ground.velocity = -2,-5
air.velocity = -7,-7
palfx.time = 15
;p1stateno               = 70231
;p2stateno               = 1022
palfx.add = -100,-100,-100
palfx.mul = 350,350,256
palfx.sinadd = 100,100,0,15
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6
getpower = 0;0
fall =1
fall.recover = 1

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
value = 1361
ctrl = 0
ignorehitpause = 1
;persistent =

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 45
value = 1362
ctrl = 0
ignorehitpause = 1
;persistent =

;-------------------------------------------------------------------------
;Ki blast destroy
[StateDef 1361]
type = S
movetype= A
physics = N
velset = 0,0
Anim = 1
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
scale = .35,.35
sprpriority = 6
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0


[State 0, PalFXWiz]
type = null; PalFX
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
ignorehitpause = 1


[State 9050]
type 			= trans
trigger1 		= time = 0
trans 		= add

[State 9051:	End]
type			= Destroyself
trigger1		= numtarget = 0
trigger2            = time = 15
;-------------------------------------------------------------------------
;Kiblast fade away
[StateDef 1362]
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
type = null;PalFX
trigger1 = Parent, Var(6) = 0
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
;ki blast hard -charge effect
[StateDef 1400]
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
y = parent, pos y-110


[State 0, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S3003,0
volume = 255
channel = 2

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
ignorehitpause = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = parent, stateno != 1261
trigger2 = (parent, stateno = 1261) && (parent, Animelem = 2)
ignorehitpause = 1
;----------------------------------------------------------------------
;ki blast hard
[StateDef 1410]
type = A
movetype= A
physics = N
juggle  = 0
velset = 10,0
ctrl = 0
anim = 8330
poweradd = 0;0
sprpriority = 5

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S3003,1
volume = 255
channel = 2

[State 0, ]
type = Explod
trigger1 = (time%6)=0
anim = 8100
ID = 8100
pos = 0,0-ceil(pos Y)
facing = 1
scale = 1,.5
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 1


[State 0, Explod]
type = Explod
trigger1 = !time
anim = 8310
ID = 8310
pos = -55,-5
postype = p1  ;p2,front,back,left,right
removetime = -2
bindtime = 1
scale = .5,.5
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
ignorehitpause = 1

[State 0, HitDef]
type = HitDef
trigger1 = !time
attr = A,SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = Hard         ;light,medium,hard,back,up,diagup
air.animtype = Hard
;fall.animtype = Back
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 60
pausetime = 0,10
;guard.pause,0
sparkno = -1
guard.sparkno = S8340+(random%4)
sparkxy = -20,0
hitsound = S300,2
guardsound = S815,0
ground.type = Low      ;Low,Trip,None
ground.slidetime = 25
ground.hittime = 25
air.hittime = 25
ground.velocity = -7
fall = 0
air.velocity = -7,-2
sprpriority = 3
palfx.time = 15
palfx.add = -100,-100,-100
palfx.mul = 350,350,256
palfx.sinadd = 100,100,0,15
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
value = 1331
ctrl = 0
ignorehitpause = 1
;persistent =

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 35
value = 1332
ctrl = 0
ignorehitpause = 1

;-------------------------------------------------------------------------
;Air Raid KI
[Statedef 9050]
type 			= A
movetype 		= A
physics 		= N
ctrl 			= 0
anim 			= 8500
sprpriority		= 4


[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 9050]
type 			=  trans
trigger1 		= time = 0
trans 		= add

[state 9050:	Accel]
type			= velset
trigger1		= time = 0
y			= 15


[State 0, PalFXWiz]
type = PalFX
trigger1 = Parent, Var(6) = 0 && time = 0
time = 999
add = 0,0,0
mul = 256,256,512
sinadd = 0,0,0,1
invertall = 0
color = 1

[State 9050:	NoShadow]
type 			= AssertSpecial
trigger1 		= 1
flag 			= NoShadow
ignorehitpause 	= 1
persistent = 1

[State 9050:	HitDef]
type			= HitDef
trigger1		= !time
attr			= S, NP
hitflag		= MAFPD
guardflag		= MA
animtype		= Hard
priority		= 3, Hit
damage		= 110,12
pausetime		= 0,12
guard.pausetime	= 1,4
sparkno		= S8030+(random%5)
guard.sparkno	= S8020+(random%2)
sparkxy		= -32,0
hitsound		= S2,9
guardsound          = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 1, 2))
ground.type         = High
air.type		= high
ground.slidetime	= 25
ground.hittime	= 10
air.hittime         = 10
ground.velocity	= -1,5
guard.velocity	= -1
air.velocity	= -2,4
airguard.velocity	= -2,4
ground.cornerpush.veloff = 0
down.velocity	= -1,-2
getpower		= 0
givepower		= 0
ownpal 		= 1
envshake.time 	= 12
envshake.freq 	= 120
envshake.ampl 	= -4
fall = 1

[State 9050:	Stop]
type			= velset
trigger1		= movecontact
y			= 0

[State 9050:	Explode]
type			= Changestate
trigger1		= movecontact || pos Y >= 0
value			= 9051

;-------------------------------------------------------------------------
;Air Raid KI
[Statedef 9051]
type 			= A
movetype 		= I
physics 		= N
ctrl 			= 0
anim 			= 8501
vel 			= 0,0
sprpriority		= 4

[State 0, PalFXWiz]
type = PalFX
trigger1 = Parent, Var(6) = 0 && time = 0
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


[State 9050]
type 			= trans
trigger1 		= time = 0
trans 		= add

[State 9051:	End]
type			= Destroyself
trigger1		= animtime = 0

;-------------------------------------------------------------------------
;Bakuhatsuha
[Statedef 9310]
type 		= S
movetype 		= A
physics 		= N
ctrl 		= 0
anim 		= 8700
sprpriority	= 4

[State 3102, AssertSpecial]
type = AssertSpecial
trigger1 = 1
ignorehitpause = 1
persistent = 1
flag = noshadow

[State 9310, PosSet]
type = PosSet
triggerall = p2bodydist x < 180
trigger1 = !time
x = enemynear, Pos X-0
y = 0



[State 9310:	Ground]
type		= null
trigger1		= time = 0
y		= 0



[State 9310:	SND]
type		= playSND
trigger1		= time = 0
value		= S1900,0

[State 9310:	Hit]
type 		= HitDef
trigger1 		= time = 0
attr 		= S,HA
hitflag 		= MAFD
guardflag 	= MA 
animtype 		= Hard
priority 		= 9999,Hit
ID                  = 3201
hitsound 		= S203,2
guardsound 	= S1611,0
sparkno 		= S IfElse(random<500,IfElse(random<500,8015,8016),IfElse(random<500,8017,8018))
guard.sparkno 	= -1
sparkxy 		= -22,-40
spark.postype	= p2
damage 		= 80
pausetime 	= 0,10
ground.type 	= High
ground.velocity     = 9,-7
air.velocity 	= 5,-12
fall 		= 1
fall.recover	= 1
envshake.time 	= 10
envshake.freq 	= 60
envshake.ampl 	= -4
ignorehitpause      = 1

[state 9091,pause]
type = pause
trigger1 = animelem = 8
trigger2 = time%4 = 0
time = 3

[State 1000:    	Screen Flash]
type          	= EnvColor
trigger1      	= movecontact && animelem = 5
value         	= 255,255,255
time            	= 1
under           	= 0

[State 800, 1]
type = Explod
trigger1 = movecontact && numexplod(6069) = 0
Anim = 8111
pos = 0,0
postype = p2
Id = 6069
sprpriority = 1
removeongethit = 1
removetime = -2
scale = 1,1
bindtime = 1
SuperMove = 1
ownpal = 1
persistent = 0

[State 9310]
type			= destroyself
trigger1		= !animtime

;---------------------------------------------------------------------------


