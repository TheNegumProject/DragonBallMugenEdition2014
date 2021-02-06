;===========================================================================
;===========================================================================
;BasicsStateFile
;===========================================================================
;===========================================================================
;VAR
;1=Used
;2=HiJump
;3=AirDash
;4=0
;5=Walking
;6=Transformation
;8= Sayajin Charge Elbow
;9=sayjin strike
;13=kiblast combo limit (statedef 1300)
;20 charge attacks
;21 Gut check 
;25= Dissappearing 
;26= Aura power (Disabled)
;27 = palfx aura (manga palette)
;55 = juggle system (nulled)
; FVARS
; 10-13=DAMAGE DAMPNER

;SoundChannelsinuse:

;1=AttackFX
;2=Voice
;3=Walk
;4=Powerup

;---------------------------------------------------------------------------
; Lose by Time Over
[Statedef 170]
type = S
ctrl = 0
anim = 180 + Var(6)
velset = 0,0

[State 0, ]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Win state decider
[Statedef 180]
type = S

[State 0, 0]
type = ChangeState
Triggerall = !MatchOver = 1
trigger1 = !Time
value = Ifelse (random<500,181,182)

[State 0, 0]
type = ChangeState
trigger1 = MatchOver = 1
value = 183

;---------------------------------------------------------------------------
; Win pose 1
[Statedef 181]
type = S
ctrl = 0
anim = 180 
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 700, 0
volume = 255

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 181, 0
volume = 255




[State 0, PalFXWiz]
type 				    = AllPalFX
;trigger1 			    = animelemtime(52) = 82
trigger1                          =  animelem = 2
time 				    = 10
add 				    = 256,256,256
mul 				    = 256,256,256
sinadd 			        = 200,200,256,150
invertall 			    = 0
color 			        = 256


[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time < 150
flag = RoundNotOver
ignorehitpause = 1
persistent = 1

;---------------

[State 0, ]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Win pose 2
[Statedef 182]
type = S
ctrl = 0
anim = 181 + Var(6)
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S181,1
volumescale = 255



[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time < 160
flag = RoundNotOver
ignorehitpause = 1
persistent = 1

;---------------

[State 0, ]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Win pose 3 revert
[Statedef 183]
type = S
ctrl = 0
anim = 182 + Var(6)
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 7
value = S182,1
volumescale = 255

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 29
value = 700, 0
volume = 255


[State 0, PalFXWiz]
type 				    = AllPalFX
;trigger1 			    = animelemtime(52) = 82
trigger1                          =  time = 29
time 				    = 10
add 				    = 256,256,256
mul 				    = 256,256,256
sinadd 			        = 200,200,256,150
invertall 			    = 0
color 			        = 256


[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time < 296
flag = RoundNotOver
ignorehitpause = 1
persistent = 1

;---------------

[State 0, ]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;-------------------------------------------------------------------------
; PREINTRO
[Statedef 190]
type = S
ctrl = 0
velset = 0,0


[State 0, ]
type = ChangeState
trigger1 = !time
value = Ifelse(random<500, 191, 192)

;---------------------------------------------------------------------------
; PREINTRO - Intro 1 WAITING (SSJ Mode)
[Statedef 191]
type = S
movetype = I
physics = N
anim = 191 + Var(6)
velset = 0,0
ctrl = 0
poweradd = 0
juggle = 0
facep2 = 0
hitdefpersist = 0
movehitpersist = 0
hitcountpersist = 0
sprpriority = 1
;---------------

[State 0, Intro]
type = AssertSpecial
trigger1 = (1)
flag = Intro
flag2		    = NoMusic
ignorehitpause = 1

[State 0, ]
type = ChangeState
trigger1 = ID < Enemy,ID
value = 193

[State 0, ]
type = ChangeState
trigger1 = Enemy, stateno = 0 
trigger2 = Enemy, Anim = 0 && enemy, animelemtime(1) >=0
value = 193

;---------------------------------------------------------------------------
; PREINTRO - Intro 2 WAITING (Normal mode)
[Statedef 192]
type = S
movetype = I
physics = N
anim = 192 + Var(6)
velset = 0,0
ctrl = 0
poweradd = 0
juggle = 0
facep2 = 0
hitdefpersist = 0
movehitpersist = 0
hitcountpersist = 0
sprpriority = 1
;---------------

[State 0, Intro]
type = AssertSpecial
trigger1 = (1)
flag = Intro
ignorehitpause = 1


[State 0, ]
type = ChangeState
trigger1 = ID < Enemy,ID
value = 195; Ifelse (random<500, Ifelse (random<500, 192, 195), 193)

[State 0, ]
type = ChangeState
trigger1 = Enemy, stateno = 0
value = 195;Ifelse (random<500, Ifelse (random<500, 192, 195), 193)

;---------------------------------------------------------------------------
; Intro
[Statedef 193]
type = S
movetype = I
physics = N
anim = 193 
velset = 0,0
ctrl = 0
poweradd = 0
juggle = 0
facep2 = 0
hitdefpersist = 0
movehitpersist = 0
hitcountpersist = 0
sprpriority = 1

;---------------

[State 0, Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro
ignorehitpause = 1
flag2		    = NoMusic

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time = 10
value = 190, 0
channel = 1
volume = 255



[State 0, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;--------------------------------------------------------------------------
; Intro  - Come at me with full power understand?
[Statedef 194]
type = S
movetype = I
physics = N
anim = 194 + Var(6)
velset = 0,0
ctrl = 0
poweradd = 0
juggle = 0
facep2 = 0
hitdefpersist = 0
movehitpersist = 0
hitcountpersist = 0
sprpriority = 1

;---------------

[State 0, Intro]
type = AssertSpecial
trigger1 = 1
flag      = Intro
flag2	= NoMusic
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 190, 2
channel = 1
volume = 255



[State 0, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;-------------------------------------------------------------------------
; Intro  - (transformation)
[Statedef 195]
type = S
movetype = I
physics = N
anim = 195 + Var(6)
velset = 0,0
ctrl = 0
poweradd = 0
juggle = 0
facep2 = 0
hitdefpersist = 0
movehitpersist = 0
hitcountpersist = 0
sprpriority = 1

;---------------

[State 0, Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro
ignorehitpause = 1
flag2		    = NoMusic

;-------------
;Sounds

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 191, 5
channel = 1
volume = 255

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 700, 0
channel = 1
volume = 255

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !animtime
value = 700, 0
volume = 255

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 23
value = 700, 6
channel = 2
volume = 255


[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 24
value = 700, 8
channel = 1
volume = 155

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 25
value = 700, 0
volume = 255


[State 0:     PlaySND]
type                    =  PlaySnd
trigger1                = AnimElem = 2  ; aura woosh
value                   = 700, 1
volumescale                  = 70
channel = 3
loop  = 1

;----------------------

[State 0, PalFXWiz]
type 				    = AllPalFX
;trigger1 			    = animelemtime(52) = 82
trigger1                          = animelem = 2
trigger2                          = !animtime
time 				    = 7
add 				    = 200,200,256
mul 				    = 200,200,256
sinadd 			        = 200,200,256,150
invertall 			    = 0
color 			        = 256

[State 0:       EnvShake]
type 			        = EnvShake
Triggerall              = AnimElem = 26 > 0
trigger1 		        = (TimeMod = 10, 0)
time 			        = 7
freq 			        = 90
ampl 			        = 7

;--------------------

[State 0, Dust]
type = Explod
trigger1 = AnimElem = 26
anim = 8110
ID =   8142
pos = 8,0
scale = 1,1
postype = p1
bindtime = 1
sprpriority = 4
ownpal = 1
removetime = -1
supermovetime = 999
pausemovetime = 999
ontop = 0


[State 0:       GroundWaves]
type                    = Explod
trigger1                = AnimElem = 22
anim                    = 7026
ID                      = 8142
pos                     = 0,5
scale                   = 1, 1
removetime              = -1
bindtime                = -1
sprpriority             = -2
pausemovetime           = 999
ownpal                  = 1
removeongethit          = 1

[State 0:       GroundWaves]
type                    = Explod
trigger1                = AnimElem = 23
anim                    = 7026
ID                      = 8142
pos                     = 0,5
scale                   = 1.8, 1
removetime              = -1
bindtime                = -1
sprpriority             = -2
pausemovetime           = 999
ownpal                  = 1
removeongethit          = 1


[State 0: Helper]
type                    = Helper
trigger1                = animelem = 2
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





[State 0:       Elec]
type                    = Explod
trigger1                = AnimElem = 26
anim                    = 7040
ID                      = 8142
pos                     = -5,10
bindtime                = -1
scale                   = 1, 1
removetime              = -1
bindtime                = -1
pausemovetime           = 999
sprpriority             = 4
ownpal                  = 1
removeongethit          = 1


[State 0, Explod]
type = Explod
trigger1 = AnimElem = 26
trigger2 = !animtime
anim = 6120
ID =   8142
pos = 8,-60
scale = 1.2, 1.2
postype = p1
bindtime = 1
sprpriority = 4
ownpal = 1
removetime = -2
supermovetime = 999
pausemovetime = 999
ontop = 0


[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = !animtime
id = 8142
;ignorehitpause = 
persistent = 1


[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = animelem = 26 
id = 8140
;ignorehitpause = 
persistent = 1


;-----------------------



[State 0, End]
type = ChangeState
trigger1 = !animtime
value = 0
ctrl = 1

;-------------------------------------------------------------------------
; Intro Flying down
[Statedef 196]
type                    = A
movetype                = I
physics                 = N
anim                    = 196
velset                  = 0,0
ctrl                    = 0
poweradd                = 0
juggle                  = 0
facep2                  = 0
hitdefpersist           = 0
movehitpersist          = 0
hitcountpersist         = 0
sprpriority             = 1

[State 0:     Intro]
type                    = AssertSpecial
trigger1                = (1)
flag                    = Intro
flag2		    = NoMusic

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time 
value = S8900,0
volumescale = 255
channel = 3

[State 0:     PlaySND]
type                    =  PlaySnd
trigger1                = !time  ; aura woosh
value                   = 700, 1
volumescale             = 60               
channel = 2
loop  = 1




[State 0: ScreenBound]
type                    = ScreenBound
trigger1                = 1
value                   = 0



[State 0, Helper]
type = Helper
trigger1   = !time
helpertype = normal ;player
name = "flamesup"
ID = 8306
stateno = 8307
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = .7
size.yscale = 1.4


[State 0: PosSet]
type                    = PosSet
trigger1                = !Time
y                       = -250


[State 0: VelSet]
type                    = VelSet
trigger1                = !Time
y                       = .5

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 350
value = S100,0


[State 0: VelSet]
type                    = VelSet
trigger1                = time = 350
y                       = .2



[State 0:       GroundWaves]
type                    = Explod
trigger1                = Time = 350
anim                    = 8110
ID                      = 8110
pos                     = 0,ifelse(pos Y < 0,floor(0-Pos Y),0)
removetime              = -1
sprpriority             = -2
ownpal                  = 1
removeongethit          = 1
scale                   = 1,1





;---------------

[State 0:     End]
type                    = ChangeState
trigger1                = Pos Y >= 0
value                   = 197
ctrl                    = 1

;-------------------------------------------------------------------------------
;Land "Hmph"
[Statedef 197]
type = S
ctrl = 0
anim = 197
velset = 0,0


[State 0:     Intro]
type                    = AssertSpecial
trigger1                = (1)
flag                    = Intro
flag2		   = NoMusic

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 15
value = S190,1
channel = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 =(!time)
value = S52,0
channel = 6

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 200
value = 700, 0
volume = 255


[State 0, PalFXWiz]
type 				    = AllPalFX
;trigger1 			    = animelemtime(52) = 82
trigger1                          =  time = 200
time 				    = 10
add 				    = 200,200,256
mul 				    = 200,200,256
sinadd 			        = 200,200,256,150
invertall 			    = 0
color 			        = 256


[State 191, 5]
type = ChangeState
trigger1 = animtime = 0
value = 0

[State 0: RemoveExplod]
type                    = RemoveExplod
trigger1                = !Time
ID                      = 8110
;-------------------------------------------------------------------------
;taunt
[statedef 198, Taunt]
type = S
ctrl = 0
movetype = I
anim = 170 + Var(6)
physics = S
Sprpriority = 2


[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(1) = 10
value = S181,0
volumescale = 255
channel = 1



[State 0, ChangeState]
type = ChangeState
trigger1 = !animtime 
value = 0
ctrl = 1

;------------------------------------------------------------------------
; Stand - Lp
[StateDef 200]
type = S
movetype= A
physics = S
juggle = 4
velset = 0,0
ctrl = 0
anim = 200+var(6)
poweradd = 40;20
sprpriority = 2

[State 0, ]
type = PlaySnd
trigger1 = !time
value = 200,0
volume = 255

 [State 0, ]
type = PlaySnd
trigger1 = !time && random < 400
value = ifelse(random > 500,210,0),ifelse(random > 500,210,1)
volume = 255


[State 0, ]
type = HitDef
trigger1 = !time
attr = S, NA
damage = 29
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 7, 8
sparkno = S8000+(random%3)
guard.sparkno = S8020+(random%2)
sparkxy = -19, -48
hitsound = S300, 0
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 1, 2))
ground.type = High
ground.slidetime = 7
ground.hittime  = 12
ground.velocity = -2
air.type = High
air.hittime = 12
air.velocity = -3,-3
airguard.velocity = -2,0
getpower = 20
givepower = 10



[State 0, ]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
;--------------------------------------------------------------------------
;Stand - Lp (Elbow)
[StateDef 201,]
type = S
movetype= A
physics = S
juggle = 4
velset = 0,0
ctrl = 0
anim = 201+var(6)
poweradd = 40;20
sprpriority = 2

[State 0, ]
type = PlaySnd
trigger1 = !time
value = 200,0
volume = 255

 [State 0, ]
type = PlaySnd
trigger1 = !time && random < 400
value = ifelse(random > 500,210,0),ifelse(random > 500,210,1)
volume = 255

[State 0, ]
type = HitDef
trigger1 = !time
attr = S, NA
damage = 27
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 7, 10
sparkno = S8000+(random%3)
guard.sparkno = S8020+(random%2)
sparkxy = -19, -48
hitsound = S300, 0
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 1, 2))
ground.type = High
ground.slidetime = 7
ground.hittime  = 12
ground.velocity = -2.56778
air.type = High
air.hittime = 12
air.velocity = -1,-1
airguard.velocity = -2,0
getpower = 20
givepower = 10

[State 0, ]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
;--------------------------------------------------------------------------
;Stand - Hp
[Statedef 202]
type                    = S
movetype                = A
physics                 = S
anim                    = 202
ctrl                    = 0
poweradd                = 0
juggle                  = 4
velset			        = 0, 0
facep2                  = 0
hitdefpersist           = 0
movehitpersist          = 0
hitcountpersist         = 0
sprpriority             = 2
;---------------

[State 0:     PunchSound]
type                    = PlaySnd
trigger1                = (!Time)
value                   = 200,1
channel                 = -1

[State 0:       PunchSound]
type                    = PlaySnd
trigger1                = !time
value                   = 250, IfElse ((Random > 500), 1, -1)
channel                 = -1

;---------------
;Hit Details
;---------------

[State 0, ]
type                    = HitDef
trigger1                = !time
attr                    = S, NA    
damage                  = 65
animtype                = Heavy
guardflag               = M
hitflag                 = MA
priority                = 3, Hit
pausetime               = 11, 12
sparkno                 = S8000+(random%3)
guard.sparkno           = S8020+(random%3)
sparkxy                 = -13, -43
hitsound                = S300, 2
guardsound              = S400, 0
ground.type             = High
ground.slidetime        = 12
ground.hittime          = 12
ground.velocity         = -5
airguard.velocity       = -3.9,-1
air.type                = High
air.velocity            = -5,-3
air.hittime             = 12
getpower                = 95
givepower		        = 0
yaccel		            = 0.5

[State 0:     End]
type                    = ChangeState
trigger1                = (!AnimTime)
value                   = 0
ctrl		            = 1

;------------------------------------------
; Uppercut
[Statedef 204]
type                    = S
movetype                = A
physics                 = S
anim                    = 204
ctrl                    = 0
poweradd                = 0
juggle                  = 4
velset			        = 0, 0
facep2                  = 0
hitdefpersist           = 0
movehitpersist          = 0
hitcountpersist         = 0
sprpriority             = 2

[State 0:     UppercutSound]
type                    = PlaySnd
trigger1                = (!Time)
value                   = 200,1
channel                 = -1



[State 0:       PunchSound]
type                    = PlaySnd
trigger1                = !time
value                   = 250, IfElse ((Random > 500), 2, -1)
channel                 = -1

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 3 
x = 2

 
;---------------
;Hit Details
;---------------

[State 0, ]
type                    = HitDef
trigger1                = !time
attr                    = S, NA
Id                      = 204
damage                  = 66
animtype                = Heavy
guardflag               = MA
hitflag                 = MA
priority                = 3, Hit
pausetime               = 11, 12
sparkno                 = S8000+(random%3)
guard.sparkno           = S8020+(random%2)
sparkxy                 = -12, -75
hitsound                = S300, 3
guardsound              = S400, 0
ground.type             = High
ground.slidetime        = 12
ground.hittime          = 12
ground.velocity         = 0, -10
airguard.velocity       = -3, -5
air.type                = High
air.velocity            = 0, -12
air.hittime             = 22
getpower                = 95
givepower		        = 0
yaccel		            = 0.5


[State 0:     End]
type                    = ChangeState
trigger1                = (!AnimTime)
value                   = 0
ctrl		            = 1

;------------------------------------------
; Stand - Hp Two Handed Smash (Close)
[StateDef 205]
type = S
movetype= A
physics = S
juggle = 6
velset = 0,0
ctrl = 0
anim = 205+var(6)
poweradd = 30
sprpriority = 2

[State 0, ]
type = PlaySnd
trigger1 = !time
value = 200,3
volume = 255

[State 0, ]
type = PlaySnd
trigger1 = !time
value = 210,4
volume = 255

[State 0, ]
type = HitDef
trigger1 = !time
attr = S, NA
damage = 64
animtype = back
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 11,12
sparkno = S8000+(random%3)
guard.sparkno = S8020+(random%2)
sparkxy = -5, -59
hitsound = S300, 3
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 1, 2))
ground.type = low
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -9
air.type = Low
air.hittime = 15
air.velocity = -4,-3
airguard.velocity = -2,0
getpower = 20
givepower = 10
fall = 0
yaccel		            = 0.655

[State 0, ]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
;--------------------------------------------------------------------------
; Stand - Hp (Ki burst)
[StateDef 206]
type = S
movetype= A
physics = N
juggle = 2
velset = 0,0
ctrl = 0
anim = 208+var(6)
poweradd = 20
sprpriority = 2


[State 0, ]
type = PlaySnd
trigger1 = !time
value = 25,0
volume = 255

[State 0, PalFX]
type = PalFX
trigger1 = AnimElem = 3,1
time = 10
add = 128,128,128
mul = 356,356,256
sinadd = -128,-128,-128,40


[State 0, Helper]
type = Helper
trigger1 =  AnimElem = 3
helpertype = normal
name = "Ki Flare"
ID = 8336
stateno = 8336
pos = 68,-69
postype = p1
facing = 1
ownpal = 1
size.xscale = .52
size.yscale = .50

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


[State 0, ]
type = PlaySnd
trigger1 = !time && random < 400
value = ifelse(random > 500,210,-1),ifelse(random > 500,0,ifelse(random > 500,1,2))
volume = 255
channel = 2


[State 0, ]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
;--------------------------------------------------------------------------
; Stand - Lk
[Statedef 207]
type                    = S
movetype                = A
physics                 = S
anim                    = 206
ctrl                    = 0
poweradd                = 0
juggle                  = 4
velset		    = 0, 0
facep2                  = 0
hitdefpersist           = 0
movehitpersist          = 0
hitcountpersist         = 0
sprpriority             = 2

[State 0:     KickSound]
type                    = PlaySnd
trigger1                = (!Time)
value                   = 200,2

[State 0:       Sound]
type                    = PlaySnd
trigger1                = !time
value                   = 250, IfElse ((Random > 500), 0, -1)
channel                 = -1

;---------------
;Hit Details
;---------------

[State 0, ]
type                    = HitDef
trigger1                = !time
attr                    = S, NA    
damage                  = 26
animtype                = Light
guardflag               = M
hitflag                 = MA
priority                = 3, Hit
pausetime               = 7, 8
sparkno                 = S8000+(random%3)
guard.sparkno           = S8020+(random%3)
sparkxy                 = -12, -39
hitsound                = S301, 0
guardsound              = S400, 0
ground.type             = low
ground.slidetime        = 9
ground.hittime          = 9
ground.velocity         = -2
airguard.velocity       = -3.9,-1
air.type                = Light
air.velocity            = -3,-3
air.hittime             = 12
getpower                = 55
givepower		        = 0
yaccel		            = 0.5

[State 0:     End]
type                    = ChangeState
trigger1                = (!AnimTime)
value                   = 0
ctrl		            = 1

;---------------------------------------------------------------------------
; Standing Close Kick
[Statedef 208]
type                    = S
movetype                = A
physics                 = S
anim                    = 208
ctrl                    = 0
poweradd                = 100
juggle                  = 4
velset	              = 0, 0
facep2                  = 0
hitdefpersist           = 0
movehitpersist          = 0
hitcountpersist         = 0
sprpriority             = 2

[State 230:     KickSound]
type                    = PlaySnd
trigger1                = (!Time)
value                   = 200,2
channel                 = -1

[State 0:       Sound]
type                    = PlaySnd
trigger1                = !time
value                   = 250, IfElse ((Random > 500), 0, -1)
channel                 = -1

;---------------
;Hit Details
;---------------

[State 0, ]
type                    = HitDef
trigger1                = !time
attr                    = S, NA    
damage                  = 27
animtype                = Light
guardflag               = M
hitflag                 = MA
priority                = 3, Hit
pausetime               = 7, 8
sparkno                 = S8000+(random%3)
guard.sparkno           = S8020+(random%2)
sparkxy                 = -15, -39
hitsound                = S301, 0
guardsound              = S400, 0
ground.type             = Low
ground.slidetime        = 9
ground.hittime          = 9
ground.velocity         = -4
airguard.velocity       = -3.9,-1
air.type                = Low
air.velocity            = -3,-3
air.hittime             = 12
getpower                = 55
givepower		        = 0
yaccel		            = 0.5

[State 0:     End]
type                    = ChangeState
trigger1                = (!AnimTime)
value                   = 0
ctrl		            = 1

;---------------------------------------------------------------------------
; Stand - Hk
[Statedef 209]
type                    = S
movetype                = A
physics                 = S
anim                    = 209
ctrl                    = 0
poweradd                = 0
juggle                  = 4
velset			        = 0, 0
facep2                  = 0
hitdefpersist           = 0
movehitpersist          = 0
hitcountpersist         = 0
sprpriority             = 2

[State 0:     KickSound]
type                    = PlaySnd
trigger1                = (!Time)
value                   = 200,3
channel                 = -1

[State 0:       Sound]
type                    = PlaySnd
trigger1                = !time
value                   = 250, IfElse ((Random > 500), 1, -1)
channel                 = -1

;---------------
;Hit Details
;---------------

[State 0, ]
type                    = HitDef
trigger1                = !time
attr                    = S, NA    
damage                  = 64
animtype                = Heavy
guardflag               = M
hitflag                 = MA
priority                = 3, Hit
pausetime               = 11, 12
sparkno                 = S8000+(random%3)
guard.sparkno           = S8020+(random%2)
sparkxy                 = 0, -65
hitsound                = S301, 2
guardsound              = S400, 0
ground.type             = High
ground.slidetime        = 12
ground.hittime          = 12
ground.velocity         = -5
airguard.velocity       = -3.9,-1
air.type                = High
air.velocity            = -5,-3
air.hittime             = 12
getpower                = 95
givepower		        = 0
yaccel		            = 0.5

[State 0:     End]
type                    = ChangeState
trigger1                = (!AnimTime)
value                   = 0
ctrl		            = 1

;---------------------------------------------------------------------------
; Stand Hk (close)
[Statedef 210]
type                    = S
movetype                = A
physics                 = S
anim                    = 207
ctrl                    = 0
poweradd                = 0
juggle                  = 4
velset			        = 0, 0
facep2                  = 0
hitdefpersist           = 0
movehitpersist          = 0
hitcountpersist         = 0
sprpriority             = 2

[State 0:     KickSound]
type                    = PlaySnd
trigger1                = (!Time)
value                   = 200,3
channel                 = -1

[State 0:       Sound]
type                    = PlaySnd
trigger1                = !time
value                   = 250, IfElse ((Random > 500), 2, -1)
channel                 = -1

;---------------
;Hit Details
;---------------

[State 0, ]
type                    = HitDef
trigger1                = !time
attr                    = S, NA    
damage                  = 60
animtype                = Heavy
guardflag               = M
hitflag                 = MA
priority                = 3, Hit
pausetime               = 11, 12
sparkno                 = S8000+(random%3)
guard.sparkno           = S8020+(random%2)
sparkxy                 = -15, -36
hitsound                = S301, 2
guardsound              = S400, 0
ground.type             = High
ground.slidetime        = 12
ground.hittime          = 12
ground.velocity         = -4
airguard.velocity       = -3.9,-1
air.type                = High
air.velocity            = -5,-3
air.hittime             = 12
getpower                = 95
givepower		        = 0
yaccel		            = 0.5

[State 0:     End]
type                    = ChangeState
trigger1                = (!AnimTime)
value                   = 0
ctrl		            = 1

;---------------------------------------------------------------------------
; Stand - Hk (Spin Kick)
[StateDef 211]
type = S
movetype= A
physics = S
juggle = 4
velset = 0
ctrl = 0
anim = 240+var(6)
poweradd = 0;20
sprpriority =2


[State 0, ]
type = PlaySnd
trigger1 = AnimElem = 1
value = 200,4
volume = 255

 [State 0, ]
type = PlaySnd
trigger1 = !time && random < 400
value = 210,4
volume = 255

[State 0: PosAdd]
type                    = PosAdd
trigger1                = AnimElem = 1
trigger2                = AnimElem = 2
x                       = 7

[State 0, ]
type = HitDef
trigger1 = !time
attr = A, NA
damage = 64
animtype = Hard
guardflag = MA
hitflag = MA
priority = 3, Hit
pausetime = 11, 12
sparkno = S8000+(random%2)
guard.sparkno = S8020+(random%2)
sparkxy = -9, -36
hitsound = S301, 3
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 0, 1))
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -9,0
Air.Fall = 0
fall = 0
air.type = High
air.hittime = 15
air.velocity = -6,-3
airguard.velocity = -4,-2


[State 0, ]
type = ChangeState
trigger1 = !Animtime 
value = 0
ctrl = 1

;--------------------------------------------------------------------------
; Kick Launcher 
[Statedef 212]
type                    = S
movetype                = A
physics                 = S
anim                    = 212
ctrl                    = 0
poweradd                = 0
juggle                  = 4
velset		    = 0, 0
facep2                  = 0
hitdefpersist           = 0
movehitpersist          = 0
hitcountpersist         = 0
sprpriority             = 2

[State 0:     	Sound]
type                    = PlaySnd
trigger1                = (!Time)
value                   = 200,3
channel                 = -1

[State 0:       Sound]
type                    = PlaySnd
trigger1                = !time
value                   = 250, IfElse ((Random > 500), 2, -1)
channel                 = -1


[State 0, VelSet]
type = VelSet
trigger1 = animelem = 3 
x = 3.5


;---------------
;Hit Details
;---------------

[State 0, ]
type                    = HitDef
trigger1                = !time
attr                    = S, NA    
damage                  = Ceil(IfElse(Var(15) >= 5, IfElse((55*(24-Var(15)+5)/24) > 0, 55*(24-Var(15)+5)/24,10),55)), 0
animtype                = Heavy
guardflag               = MA
hitflag                 = MA
priority                = 3, Hit
pausetime               = 11, 12
sparkno                 = S IfElse(random<500,IfElse(random<500,7100,7101),IfElse(random<500,7102,7103))
guard.sparkno           = S7112
sparkxy                 = 0, -70
hitsound                = S300, 3
guardsound              = S400, 0
ground.type             = High
ground.slidetime        = 12
ground.hittime          = 12
ground.velocity         = 0, -10
airguard.velocity       = -3, -5
air.type                = High
air.velocity            = 0, -12
air.hittime             = 22
getpower                = 95
givepower		        = 0
yaccel		            = 0.5

[State 0:     End]
type                    = ChangeState
trigger1                = (!AnimTime)
value                   = 0
ctrl		            = 1

;-------------------------------------------------------------------------------------------------
;Pursuit Buster
[StateDef 220]
type = S
movetype= A
physics = S
juggle = 4
velset = 0
ctrl = 0
anim = 240+var(6)
poweradd = 0;20
sprpriority =2


[State 0, ]
type = PlaySnd
trigger1 = AnimElem = 1
value = 200,4
volume = 255

 [State 0, ]
type = PlaySnd
trigger1 = !time && random < 400
value = 210,4
volume = 255

[State 0: PosAdd]
type                    = PosAdd
trigger1                = AnimElem = 1
trigger2                = AnimElem = 2
x                       = 7

[State 0, ]
type = HitDef
trigger1 = !time
attr = A, NA
damage = 64
animtype = Hard
guardflag = MA
hitflag = MA
priority = 3, Hit
pausetime = 11, 12
sparkno = S8000+(random%2)
guard.sparkno = S8020+(random%2)
sparkxy = -9, -36
hitsound = S301, 3
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 0, 1))
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -12,-4
p2stateno = 6000
Air.Fall = 0
fall = 1
air.type = High
air.hittime = 15
air.velocity = -6,-3
airguard.velocity = -4,-2


[State 0, ]
type = ChangeState
trigger1 = !Animtime 
value = 0
ctrl = 1

;--------------------------------------------------------------------------
;Meteo Start 1 (Ground)
[StateDef 300]
type = S
movetype= A
physics = N
juggle = 0
velset = 0,0
ctrl = 0
anim = 300
poweradd = -250;30
sprpriority = -1

[State 0, VarAdd]
type = VarAdd
trigger1 = !time && var(3) <= 2
v = 3
value = 4


[State 0, ]
type = AfterImage
trigger1 = AnimElem = 2
time = 60
length = 4
palbright = 10,10,10
palcontrast = 120,120,120
paladd = 0,0,0
palmul = 1,1,1
timegap = 1
framegap = 1
trans = Add

[State 0, Pause]
type = Pause
trigger1 = (time%2)
time = 1
movetime = 1
pausebg = 0
ignorehitpause= -1
;persistent =

[State 0, EnvColor]
type = EnvColor
trigger1 = !time
value = 255,255,255
time = 2

[State 0, Explod Dust]
type = Explod
trigger1 = AnimElem = 1,1
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

[State 0, Explod Dust twirl]
type = Explod
trigger1 = AnimElem = 1,1
anim = 8141
ID =   8141
pos = 0,0
scale = .7, .7
postype = p1
bindtime = 1
sprpriority = 4
ownpal = 1
removetime = -2
supermovetime = 999
pausemovetime = 999
ontop = 0

[State 0: Helper]
type                    = Helper
trigger1                = time = 0
helpertype              = normal
ID                      = 8001
pos                     = 0,0
postype                 = p1
facing                  = 1
stateno                 = 8001
ownpal                  = 1
size.xscale             = .8
size.yscale             = .7
supermovetime = 999
pausemovetime = 999




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

[State 0, Voice]
type  = PlaySnd
trigger1 = !Time
value = ifelse(random > 500,210,-1),ifelse(random > 500,5,6)
channel = 0
volume = 255

[State 0, Dash]
type = PlaySnd
trigger1 = !Time
value = 240, 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 0, Width]
type = Width
trigger1 = 1
edge = -10,-10
player = 0,0


[State 0: VelSet]
type = VelSet
trigger1 = AnimELem = 2,>1
x = ifelse(P2Dist X < 0,13, 12+abs(P2Dist x*.1))
y = 0


[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = Pos Y < 0
statetype = A       ;S,A,C,L
physics = A         ;A,C,S,N
;ignorehitpause =
;persistent =

[State 0, ChangeState]
type = ChangeState
trigger1 = P2Dist x < -30-Vel X
value = 301
ctrl = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 60
value = 101
ctrl = 1


;--------------------------------------------------------------------------
;Meteo Attack 1
[StateDef 301]
type = C
movetype= A
physics = C
juggle  = 0
;velset = 3,0
ctrl = 0
anim = 301
poweradd = 0;20
sprpriority = -1

[State 0, Turn]
type = Turn
trigger1 = !time

[State 0, ]
type = PlaySnd
trigger1 = !time
value = 50,1
volume = 255
channel = 1

[State 0, PlayerPush]
type = PlayerPush
trigger1 = time < 4
value = 0

[State 0, ]
type = PlaySnd
trigger1 = !time && random < 400
value = ifelse(random > 500,210,-1),ifelse(random > 500,0,ifelse(random > 500,1,2))
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
trigger1 = AnimElem = 4
attr = C, NA
damage = 40, 8
animtype = Up
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 15, 15
sparkno = S8000+(random%3)
guard.sparkno = S8020+(random%2)
sparkxy = 0, -55
hitsound = S203, 1
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 0, 1))
ground.type = Low
ground.slidetime = 10
ground.hittime  = 17
ground.velocity = 0,-13
fall = 1
air.type = Low
air.hittime = 17
air.velocity = 0,-13
airguard.velocity = -2,0
getpower = 0;20
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6

[State 0, ]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;--------------------------------------------------------------------------
;Meteo Start 2 (up)
[StateDef 302]
type = S
movetype= A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 302
poweradd = -250;30
sprpriority = -1

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = Pos Y < 0
statetype = A
physics = A

[State 0, ]
type = AfterImage
trigger1 = AnimElem = 2
time = 60
length = 4
palbright = 10,10,10
palcontrast = 120,120,120
paladd = 0,0,0
palmul = 1,1,1
timegap = 1
framegap = 1
trans = Add

[State 0, Pause]
type = Pause
trigger1 = (time%2)
time = 1
movetime = 1
pausebg = 0
ignorehitpause= -1
;persistent =

[State 0, EnvColor]
type = EnvColor
trigger1 = !time
value = 255,255,255
time = 2

[State 0, Explod Dust]
type = Explod
trigger1 = AnimElem = 1,1
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

[State 0, Explod Dust twirl]
type = Explod
trigger1 = AnimElem = 1,1
anim = 8141
ID =   8141
pos = 0,0
scale = .7, .7
postype = p1
bindtime = 1
sprpriority = 4
ownpal = 1
removetime = -2
supermovetime = 999
pausemovetime = 999
ontop = 0


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

[State 0, Voice]
type  = PlaySnd
trigger1 = !Time
value = ifelse(random > 500,210,-1),ifelse(random > 500,5,6)
channel = 0
volume = 255

[State 0, Dash]
type = PlaySnd
trigger1 = !Time
value = 240, 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 0, Width]
type = Width
trigger1 = 1
edge = -10,-10
player = 0,0



[State 0: VelSet]
type = VelSet
trigger1 = AnimELem = 2,>1
x = 0
y = ifelse(P2Dist Y < 0,-12, -12-abs(P2Dist Y*.1))

[State 0, ChangeState]
type = ChangeState
triggerall = AnimELem = 2,>1
trigger1 = P2Dist Y-10 > 0 + Vel Y
value = 303
ctrl = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 60
value = 101
ctrl = 1

;--------------------------------------------------------------------------
;Meteo Attack 2
[StateDef 303]
type = A
movetype= A
physics = A
juggle  = 0
;velset = 3,0
ctrl = 0
anim = 303
poweradd = 0;20
sprpriority = 2

[State 0, VelMul]
type = VelMul
trigger1 = AnimElem = 4,<1
x = 1
y = .9
;ignorehitpause =
;persistent =


[State 0, ]
type = PlaySnd
trigger1 = !time
value = 50,1
volume = 255
channel = 1

[State 0, ]
type = PlaySnd
trigger1 = !time && random < 400
value = ifelse(random > 500,210,-1),ifelse(random > 500,0,ifelse(random > 500,1,2))
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
trigger1 = !time
attr = S, NA
damage = 48, 9
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 15, 15
sparkno = S8000+(random%3)
guard.sparkno = S8020+(random%2)
sparkxy = -10, -47
hitsound = S203, 1
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 1, 2))
ground.type = Low
ground.slidetime = 35
ground.hittime  = 35
ground.velocity = -14,-4
p2stateno = 6000
Fall = 1
air.type = Low
air.hittime = 35
air.velocity = -14,-4
airguard.velocity = -4.5,0
getpower = 0;30
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6
yaccel = .2

;--------------------------------------------------------------------------
;Meteo Start 3 (Air)
[StateDef 304]
type = A
movetype= A
physics = A
juggle = 0
velset = 0,0
ctrl = 0
anim = 300
poweradd = -250;30
sprpriority = -1

[State 0, ]
type = AfterImage
trigger1 = AnimElem = 2
time = 60
length = 4
palbright = 10,10,10
palcontrast = 120,120,120
paladd = 0,0,0
palmul = 1,1,1
timegap = 1
framegap = 1
trans = Add

[State 0, Pause]
type = Pause
trigger1 = (time%2)
time = 1
movetime = 1
pausebg = 0
ignorehitpause= -1
;persistent =

[State 0, EnvColor]
type = EnvColor
trigger1 = !time
value = 255,255,255
time = 2

[State 0, Explod Dust]
type = Explod
trigger1 = AnimElem = 1,1
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

[State 0, Explod Dust twirl]
type = Explod
trigger1 = AnimElem = 1,1
anim = 8141
ID =   8141
pos = 0,0
scale = .7, .7
postype = p1
bindtime = 1
sprpriority = 4
ownpal = 1
removetime = -2
supermovetime = 999
pausemovetime = 999
ontop = 0



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

[State 0, Voice]
type  = PlaySnd
trigger1 = !Time
value = ifelse(random > 500,210,-1),ifelse(random > 500,5,6)
channel = 0
volume = 255

[State 0, Dash]
type = PlaySnd
trigger1 = !Time
value = 240, 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 0, Width]
type = Width
trigger1 = 1
edge = -10,-10
player = 0,0


[State 0: VelSet]
type = VelSet
trigger1 = AnimELem = 2,>1
x = ifelse(P2Dist X < 0,14, 12+abs(P2Dist x*.1))
y = target, Vel Y


[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = Pos Y < 0
statetype = A       ;S,A,C,L
physics = A         ;A,C,S,N
;ignorehitpause =
;persistent =

[State 0, ChangeState]
type = ChangeState
trigger1 = P2Dist x < -30-Vel X
value = 305
ctrl = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 60
value = 101
ctrl = 1


;--------------------------------------------------------------------------
;Meteo Attack 3
[StateDef 305]
type = A
movetype= A
physics = A
juggle  = 0
;velset = 3,0
ctrl = 0
anim = 305
poweradd = 0;20
sprpriority = -1

[State 0, VelMul]
type = VelMul
trigger1 = AnimElem = 3,>1
x = .85
y = 1

[State 0, VelSet]
type = VelSet
trigger1 = movehit
x = 0



[State 0, Turn]
type = Turn
trigger1 = !time

[State 0, ]
type = PlaySnd
trigger1 = !time
value = 50,1
volume = 255
channel = 1

[State 0, ]
type = PlaySnd
trigger1 = !time && random < 400
value = ifelse(random > 500,210,-1),ifelse(random > 500,0,ifelse(random > 500,1,2))
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
trigger1 = !time
attr = S, NA
damage = 48, 9
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 30, 15
sparkno = S8000+(random%3)
guard.sparkno = S8020+(random%2)
hitsound = S203, 1
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 1, 2))
ground.type = Low
ground.slidetime = 35
ground.hittime  = 35
ground.velocity = -2,14
p2stateno = 6000
Fall = 1
air.type = Low
air.hittime = 35
air.velocity = -2,14
airguard.velocity = -2,0
getpower = 0;30
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6

[State 0, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 50
ctrl = 1
;anim =
;ignorehitpause = 
;persistent = 

;--------------------------------------------------------------------------
;Crouch Light Punch
[StateDef 400]
type = C
movetype= A
physics = C
juggle = 2
velset = 0,0
ctrl = 0
anim = 400
poweradd = 20
sprpriority = 2

[State 0, ]
type = PlaySnd
trigger1 = !time
value = 200,0
volume = 255
channel = 1

[State 0, ]
type = PlaySnd
trigger1 = !time && random < 400
value = ifelse(random > 500,210,-1),ifelse(random > 500,0,ifelse(random > 500,1,2))
volume = 255
channel = 2

[State 0, ]
type = HitDef
trigger1 = !time
attr = C, NA
damage = 24
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 7, 11
sparkno = S8000+(random%3)
guard.sparkno = S8020+(random%2)
sparkxy = -1, -37
hitsound = S300, 0
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 1, 2))
ground.type = low
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -3
air.type = Low
air.hittime = 12
air.velocity = -1,1
airguard.velocity = -2,0
getpower = 20
givepower = 10

[State 0, ]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;--------------------------------------------------------------------------
;Crouch  - Hp
[StateDef 401]
type = C
movetype= A
physics = N
juggle = 2
velset = 0,0
ctrl = 0
anim = 402
poweradd = 20
sprpriority = 2

[State 0, ]
type = PlaySnd
trigger1 = !time
value = 50,0
volume = 255
channel = 1


[State 0, ]
type = PlaySnd
trigger1 = !time && random < 400
value = ifelse(random > 500,210,-1),ifelse(random > 500,0,ifelse(random > 500,1,2))
volume = 255


[State 0, PosAdd]
type = velset
trigger1 = animelem = 2 
x = 5


[State 0, PosAdd]
type = velset
trigger1 = animelem = 4 || movehit
x = 0

[State 0, ]
type = HitDef
trigger1 = !time
attr = C, NA
damage = 63
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,12
sparkno = S8000+(random%3)
guard.sparkno = S8020+(random%2)
sparkxy = -18, -47
hitsound = S300, 3
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 1, 2))
ground.type = Low
ground.slidetime = 9
ground.hittime  = 12
ground.velocity = -9
fall = 0
air.type = Low
air.hittime = 12
air.velocity = -1,1
airguard.velocity = -2,0
getpower = 20
givepower = 10

[State 0, ]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;--------------------------------------------------------------------------
;Crouch - Lk 
[StateDef 402]
type = C
movetype= A
physics = C
juggle = 4
velset = 0,0
ctrl = 0
anim = 401
poweradd = 20
sprpriority = 2

[State 0, ]
type = PlaySnd
trigger1 = !time
value = 200,2
volume = 255
channel = 1

[State 0, ]
type = PlaySnd
trigger1 = !time && random < 400
value = ifelse(random > 500,210,-1),ifelse(random > 500,0,ifelse(random > 500,1,2))
volume = 255


[State 0, ]
type = HitDef
trigger1 = AnimElem = 2
attr = C, NA
damage = 24
animtype = Light
guardflag = L
hitflag = MAF
priority = 3, Hit
pausetime = 10, 10
sparkno = S8000+(random%3)
guard.sparkno = S8020+(random%2)
sparkxy = -19, -15
hitsound = S301, 0
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 1, 2))
ground.type             = low
ground.slidetime        = 9
ground.hittime          = 9
ground.velocity         = -3
air.type = Low
air.hittime = 12
air.velocity = -1,1
airguard.velocity = -2,0


[State 0, ]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;-------------------------------------------------------------------------
;Crouch - Hk
[StateDef 403]
type = C
movetype= A
physics = C
juggle  = 4
;velset = 4,0
ctrl = 0
anim = 411
poweradd =  20
sprpriority = 2

[State 0, ]
type = PlaySnd
trigger1 = !time
value = 50,0
volume = 255
channel = 1

[State 0, ]
type = PlaySnd
trigger1 = !time && random < 400
value = ifelse(random > 500,210,-1),ifelse(random > 500,0,ifelse(random > 500,1,2))
volume = 255
channel = 2

[State 0, PosAdd]
type = velset
trigger1 = animelem = 2 
x = 9


[State 0, PosAdd]
type = velset
trigger1 = animelem = 5 || movehit
x = 0

[State 0, ]
type = HitDef
trigger1 = !time
attr = C, NA
damage = 61
animtype = Light
guardflag = L
hitflag = M
priority = 3, Hit
pausetime = 11, 12
sparkno = S8000+(random%3)
guard.sparkno = S8020+(random%2)
sparkxy = -10, -5
hitsound = S301, 2
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 1, 2))
ground.type = trip
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -1,-3
air.type = Low
air.hittime = 12
air.velocity = -1,1
airguard.velocity = -2,0
getpower = 20
givepower = 10
fall = 0
yaccel = 0.26




[State 0, ]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;--------------------------------------------------------------------------
;Jump Lp
[StateDef 600]
type = A
movetype= A
physics = A
juggle = 0
;velset = 0,0
ctrl = 0
anim = 600
poweradd = 20
sprpriority = 2

[State 0, ]
type = PlaySnd
trigger1 = !time
value = 200,1
volume = 255
channel = 1

[State 0, ]
type = PlaySnd
trigger1 = !time && random < 400
value = ifelse(random > 500,210,-1),ifelse(random > 500,0,ifelse(random > 500,1,2))
volume = 255
channel = 2

[State 0, ]
type = HitDef
trigger1 = AnimElem = 3
attr = A, NA
damage = 35
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 7, 8
sparkno =S8000+(random%3)
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 0, 1))
guard.sparkno = S8020+(random%2)
sparkxy = -10, -32
hitsound = S300, 1
guardsound = S2,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
air.type = High
air.hittime = 12
air.velocity = -1,Vel Y
airguard.velocity = -2,0
getpower = 20
givepower = 10

[State 0, ]
type = ChangeState
trigger1 = !AnimTime
value = 50
ctrl = 1
;--------------------------------------------------------------------------
; Jump Hp
[StateDef 601]
type = A
movetype= A
physics = A
juggle = 0
;velset = 0,0
ctrl = 0
anim = 620
poweradd = 20
sprpriority = 2

[State 0, ]
type = PlaySnd
trigger1 = !time
value = 200,3
volume = 255
channel = 1

[State 0, ]
type = PlaySnd
trigger1 = !time && random < 600
value = ifelse(random > 500,210,210),ifelse(random > 500,4,2)
volume = 255
channel = 2

[State 0, ]
type = HitDef
trigger1 = !time
attr = A, NA
damage = 62
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 12, 12
sparkno = S8000+(random%3)
guard.sparkno = S8020+(random%2)
sparkxy = -25, -22
hitsound = S300, 3
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 0, 1))
ground.type = High
ground.slidetime = 15
ground.hittime  = 16
ground.velocity = -8
Fall = 0
Air.Fall = 1
fall.recover = 0
air.type = Low
air.hittime = 16
air.velocity = -8,7
airguard.velocity = -2,0
envshake.time           = 10
envshake.freq           = 100
envshake.ampl           = -4
envshake.phase          = 10



[State 0, ]
type = ChangeState
trigger1 = !AnimTime
value = 50
ctrl = 1

;-------------------------------------------------------------------------------
;Jump Lk
[StateDef 602]
type = A
movetype= A
physics = A
juggle = 0
;velset = 0,0
ctrl = 0
anim = 610
poweradd = 25
sprpriority = 2

[State 0, ]
type = PlaySnd
trigger1 = !time
value = 200,2
volume = 255

[State 0, ]
type = HitDef
trigger1 = AnimElem = 2
attr = A, NA
damage = 33
animtype = Hard
guardflag      = HA
hitflag = MAF
priority = 4, Hit
pausetime = 7,8
sparkno = S8000+(random%3)
guard.sparkno = S8020+(random%2)
sparkxy = -10, -15
hitsound = S301, 0
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 0, 1))
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -7
air.type = High
air.hittime = 20
air.velocity = -1,Vel Y
airguard.velocity = -2,0
getpower = 20
givepower = 10

[State 0, ]
type = ChangeState
trigger1 = !AnimTime
value = 50
ctrl = 1

;--------------------------------------------------------------------------
;Jump Hk
[StateDef 603]
type = A
movetype= A
physics = A
juggle = 0
;velset = 0,0
ctrl = 0
anim = 615
poweradd = 25
sprpriority = 2

[State 0, ]
type = PlaySnd
trigger1 = !time
value = 200,3
volume = 255


[State 0, ]
type = PlaySnd
trigger1 = !time && random < 600
value = ifelse(random > 500,210,210),ifelse(random > 500,4,2)
volume = 255


[State 0, ]
type = HitDef
trigger1 = AnimElem = 2
attr = A, NA
damage = 65
animtype = Heavy
guardflag      = HA
hitflag = MAF
priority = 4, Hit
pausetime = 11,12
sparkno = S8000+(random%3)
guard.sparkno = S8020+(random%2)
sparkxy = -10, -15
hitsound = S301, 3
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 0, 1))
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -3
air.type = High
air.hittime = 20
air.velocity = -1,-1
airguard.velocity = -2,0
getpower = 20
givepower = 10
fall = 0

[State 0, ]
type = ChangeState
trigger1 = !AnimTime
value = 50
ctrl = 1

;--------------------------------------------------------------------------
;Jumping hard attack 1
[StateDef 615]
type = A
movetype= A
physics = A
juggle = 0
;velset = 0,0
ctrl = 0
anim = 615
poweradd = 25
sprpriority = 2

[State 0, ]
type = PlaySnd
trigger1 = !time
value = 200,3
volume = 255
channel = 1

[State 0, ]
type = PlaySnd
trigger1 = !time && random < 600
value = ifelse(random > 500,210,210),ifelse(random > 500,4,2)
volume = 255
channel = 2

[State 0, ]
type = HitDef
trigger1 = AnimElem = 3
attr = A, NA
damage = 25
animtype = Hard
guardflag      = HA
hitflag = MAF
priority = 4, Hit
pausetime = 8, 3
sparkno = S8000+(random%10)
guard.sparkno = S8020+(random%2)
sparkxy = -10, -5
hitsound = S300, 4
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 0, 1))
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -7
air.type = High
air.hittime = 20
air.velocity = -6,9
airguard.velocity = -2,0


[State 0, ]
type = ChangeState
trigger1 = !AnimTime
value = 50
ctrl = 1

;--------------------------------------------------------------------------
;Air Launcher: Smash Down
[StateDef 620]
type = A
movetype= A
physics = A
juggle = 0
;velset = 0,0
ctrl = 0
anim = 620
poweradd = 20
sprpriority = 2

[State 0, ]
type = PlaySnd
trigger1 = !time
value = 200,3
volume = 255
channel = 1

[State 0, ]
type = PlaySnd
trigger1 = !time && random < 600
value = ifelse(random > 500,210,210),ifelse(random > 500,4,2)
volume = 255
channel = 2

[State 0, ]
type = HitDef
trigger1 = AnimElem = 3
attr = A, NA
damage = 45
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 11, 12
sparkno = S8000+(random%10)
guard.sparkno = S8020+(random%2)
sparkxy = 0, -15
hitsound = S300, 4
guardsound = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 0, 1))
ground.type = High
ground.slidetime = 15
ground.hittime  = 16
ground.velocity = -6,0
Fall = 0
Air.Fall = 1
fall.recover = 0
air.type = Low
air.hittime = 16
air.velocity = -8,15
airguard.velocity = -2,0



[State 0, ]
type = ChangeState
trigger1 = !AnimTime
value = 50
ctrl = 1

;-------------------------------------------------------------------------------
; Grab Attack
[Statedef 800]
type 			        = S
movetype		        = A
physics		            = N
juggle		            = 1
anim			        = 800
ctrl			        = 0
poweradd		        = 0
velset			        = 0, 0
facep2		            = 0
hitdefpersist	        = 0
movehitpersist	        = 0
hitcountpersist	        = 0
sprpriority		        = 2

;---------------

[State 0:       Sound]
type                    = PlaySnd
trigger1                = !time
value                   = 800, 0
channel                 = -1

;---------------

[State 0, ]
type                    = HitDef
trigger1                = !time
attr                    = S, NT
damage                  = 0, 0
snap                    = 20, 0
animtype                = Light
hitflag                 = MA
priority                = 3, Hit
pausetime               = 5, 25
guard.pausetime         = 15,3
sparkno                 = S8000+(random%3)
guard.sparkno           = S8020+(random%5)
sparkxy                 = -12,-47
hitsound                = S600, 0
guardsound              = S400, Ifelse (Random < 500, 0, Ifelse (Random < 500, 1, 2))
ground.type             = Low
ground.type             = Low
air.type                = Low
ground.slidetime        = 7
ground.hittime          = 7
air.hittime             = 7
ground.velocity         = 0
air.velocity            = 0,0
airguard.velocity       = 0,0
getpower                = 55
givepower		        = 20
p1stateno               = 801
yaccel		            = 0.5

[State 0:     End]
type                    = ChangeState
trigger1                = (!AnimTime)
value                   = 0
ctrl		            = 1

;---------------------------------------------------------------------------
; Grab Attack - Kick
[Statedef 801]
type 			        = S
movetype		        = A
physics		            = N
juggle		            = 1
anim			        = 801
ctrl			        = 0
poweradd		        = 0
velset			        = 0, 0
facep2		            = 0
hitdefpersist	        = 0
movehitpersist	        = 0
hitcountpersist	        = 0
sprpriority		        = -1

;---------------

[State 0: Turn]
type                    = Turn
trigger1                = !Time

[State 0:       Sound]
type                    = PlaySnd
trigger1                = AnimElem = 2
value                   = 200, 3
channel                 = -1

[State 0: VelSet]
type                    = VelSet
Trigger1                = AnimElem = 1, > 0 &&  AnimElem = 4, < 0
x                       = -10

[State 0: PlayerPush]
type                    = PlayerPush
trigger1                = AnimElem = 1, > 0 &&  AnimElem = 4, < 0
value                   = 0

[State 0: VelSet]
type                    = VelSet
Trigger1                = AnimElem = 4, > 0
Trigger2                = MoveContact
x                       = 0
y                       = 0

[State 0: SprPriority]
type                    = SprPriority
trigger1                = AnimElem = 4, > 0
value                   = 2

;---------------

[State 0, ]
type                    = HitDef
trigger1                = !time
attr                    = S, NA    
damage                  = 150
animtype                = Hard
guardflag               = MA
hitflag                 = MA
priority                = 3, Hit
pausetime               = 7, 8
sparkno                 = S8000+(random%2)
guard.sparkno           = S6005
sparkxy                 = -40,-50
hitsound                = S300, 3
guardsound              = S400, IfElse ((Random > 500), 0, 1)
ground.type             = Low
air.type                = Low
ground.slidetime        = 14
ground.hittime          = 14
air.hittime             = 14
ground.velocity         = -12,-5
air.velocity            = -12,0
airguard.velocity       = -3.9,0
ground.cornerpush.veloff = -25
air.cornerpush.veloff   = -25
getpower                = 55
givepower		        = 20
fall                     = 1
yaccel		            = 0.3
p2facing                = 1

[State 0:     End]
type                    = ChangeState
trigger1                = (!AnimTime)
value                   = 0
ctrl		            = 1

;---------------------------------------------------------------------------
; P2 Get Hit State
[Statedef 810]
type                    = S
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

[State 0:     VelSet]
type                    = VelSet
trigger1                = 1
x		                = 0
y		                = 0

[State 0:     ChangeAnim]
type 			        = ChangeAnim2
trigger1 		        = (!Time)
value 		            = 810 + Var(6)

[State 0:     HitBy]
type                    = HitBy
trigger1                = (1)
value                   = SCA
time                    = 1

[State 0:     VelSet]
type                    = VelSet
trigger1                = AnimElem = 3
x		                = 6

[State :o ]
type                    = Selfstate
triggerall              = numenemy > 0
trigger1                = enemynear,movetype = H
trigger2                = enemynear,stateno!= [800,805]
value                   = 5050

[State 0: ChangeState]
type                    = ChangeState
trigger1                = !Animtime
value                   = 812

;-------------------------------------------------------------------------
; P2 Gets Thrown
[Statedef 812]
type                    = L
movetype                = H
physics                 = N
velset                  = -15,0.0
ctrl                    = 0
poweradd                = 0
juggle                  = 0
facep2                  = 0
hitdefpersist           = 0
movehitpersist          = 0
hitcountpersist         = 0
sprpriority             = -1
;---------------

[State 0: ScreenBound]
type                    = ScreenBound
trigger1                = 1
value                   = 0

[State 0:       SelfState]
type                    = Selfstate
trigger1                = command = "recovery"
value                   = 5200

[State 0:     ChangeAnim2]
type                    = ChangeAnim2
Trigger1                = (!Time)
value                   = 812 + Var(6)

[State 0:     ComeDown]
type                    = VelAdd
Trigger1                = 1
x                       = .05

[State 0: ChangeState]
type                    = ChangeState
trigger1                = BackEdgedist <= 0
value                   = 815

;---------------------------------------------------------------------------
; Throw - Hit wall
[Statedef 815]
type                    = A
movetype                = H
physics                 = N

[State 0: VelSet]
type                    = VelSet
trigger1                = !Time
x                       = 0

[State 0:      Hit]
type                    = PlaySnd
trigger1                = (!Time)
value                   = 815
channel                 = -1

[State 0: LifeAdd]
type                    = LifeAdd
trigger1                = !Time
value                   = -20

[State 0, Anim]
type                    = ChangeAnim2
trigger1                = !Time
value                   = 815 + Var(6)

[State 0, Turn]
type                    = Turn
trigger1                = (!Time) && (FrontEdgeBodyDist <= 30)

[State 0, Pos]
type                    = PosAdd
trigger1                = !Time
x                       = BackEdgeBodyDist

[State 0: PosSet]
type                    = PosSet
trigger1                = !Time
y                       = -70

[State 0: ChangeState]
type                    = ChangeState
trigger1                = !AnimTime
value                   = 820

;---------------------------------------------------------------------------
; Throw - bounce off wall fall
[Statedef 820]
type                    = A
movetype                = H
physics                 = N

[State 0, Break Fall Air]
Type                    = SelfState
TriggerAll              = Alive && CanRecover
Trigger1                = Command = "recovery"
Value                   = 5210

[State 0: PosSet]
type                    = PosSet
trigger1                = !Time
y                       = 0

[State 0, Vel Y]
type                    = VelSet
trigger1                = !Time
y                       = -8

[State 0, Vel X]
type                    = VelSet
trigger1                = !Time
x                       = 2

[State 0, Turn]
type                    = Turn
trigger1                = (BackEdgeDist < 30)

[State 0, Gravity]
type                    = VelAdd
trigger1                = 1
y                       = .35

[State 0, Anim 5050] ;Self falling animation
type                    = ChangeAnim
trigger1                = !Time
trigger1                = !SelfAnimExist(5052 + Var(6))
value                   = 5050 + Var(6)

[State 0, Anim 5052] ;Self falling animation (diagup type)
type                    = ChangeAnim
trigger1                = !Time
trigger1                = SelfAnimExist(5052 + Var(6))
value                   = 5052 + Var(6)

[State 0, Anim 5060] ;Coming down - normal
type                    = ChangeAnim
trigger1                = Vel Y > -2
trigger1                = Anim = 5050
trigger1                = SelfAnimExist(5060 + Var(6))
persistent              = 0
value                   = 5060 + Var(6)

[State 0, Anim 5062] ;Coming down - diagup type
type                    = ChangeAnim
trigger1                = Vel Y > -2
trigger1                = Anim = 5052 + Var(6)
trigger1                = SelfAnimExist(5062 + Var(6))
persistent              = 0
value                   = 5062 + Var(6)

[State 0, Hit ground]
type                    = SelfState
trigger1                = (Vel y > 0) && (Pos y >= 0)
value                   = 5100

;-------------------------------------------------------------------------

;------------------
; Hit by Fast Kung Fu Palm - shaking from the hit
; (a custom gethit state)
; See State 1020 for details
[Statedef 6000]
type    = A
movetype= H
physics = N
velset = 0,0

[State 6000, Anim] ;Custom animation
type = ChangeAnim2
trigger1 = 1
value = 6000

[State 6000, State]
type = ChangeState
trigger1 = HitShakeOver = 1
value = 6001

;------------------
; Hit by Fast Kung Fu Palm - flying through the air
; (a custom gethit state)
[Statedef 6001]
type    = A
movetype= H
physics = N

[State 6001, Velocity]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 6001, Gravity]
type = VelAdd
trigger1 = 1
y = gethitvar(yaccel)

[State 6001, No scroll]
type = ScreenBound
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist < 65
trigger2 = FrontEdgeBodyDist < 65
value = 1
movecamera = 1,1

[State 6001, Hit wall]
type = ChangeState
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist <= 20
trigger2 = FrontEdgeBodyDist <= 20
value = 6002

[State 6001, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100

;------------------
; Hit by Fast Kung Fu Palm - hit wall
; (a custom gethit state)
[Statedef 6002]
type    = A
movetype= H
physics = N

[State 6002, Turn]
type = Turn
trigger1 = (Time = 0) && (FrontEdgeBodyDist <= 30)

[State 6002, Pos]
type = PosAdd
trigger1 = Time = 0
x = 15 - BackEdgeBodyDist

[State 6002, Stop moving]
type = PosFreeze
trigger1 = 1
x = 1
y = 1

[State 6002, No scroll]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,1

[State 6002, Spark]
type = Explod
trigger1 = Time = 0
anim = F72
pos = 0, floor (screenpos y) - 50
postype = back
sprpriority = 3

[State 6002, Anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 6001

[State 1312, Sound]
type = PlaySnd
trigger1 = Time = 0
value = F7,0

[State 0, ]
type = EnvShake
trigger1 = !Time
time = 16
freq = 100
ampl = -6

[State 6002, State]
type = ChangeState
trigger1 = AnimTime = 0
value = 6003

;------------------
; Hit by Fast Kung Fu Palm - bounce off wall
; (a custom gethit state)
[Statedef 6003]
type    = A
movetype= H
physics = N

[State 6003, Vel Y]
type = VelSet
trigger1 = Time = 0
y = -7

[State 6003, Vel X]
type = VelSet
trigger1 = Time = 0
x = 2.5

[State 6003, Turn]
type = Turn
trigger1 = (Time = 0) && (BackEdgeDist < 30)

[State 6003, Gravity]
type = VelAdd
trigger1 = 1
y = .35

[State 60033, Anim 5050] ;Self falling animation
type = ChangeAnim
trigger1 = Time = 0
trigger1 = !SelfAnimExist(5052)
value = 5050

[State 6003, Anim 5052] ;Self falling animation (diagup type)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5052)
value = 5052

[State 6003, Anim 5060] ;Coming down - normal
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5050
trigger1 = SelfAnimExist(5060)
persistent = 0
value = 5060

[State 6003, Anim 5062] ;Coming down - diagup type
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5052
trigger1 = SelfAnimExist(5062)
persistent = 0
value = 5062

[State 6003, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100
;----------------------------------------------------------------------
;  Ultimate sayajin custom state
; HITA_UP (initial going up)
[Statedef 6030]
type    = A
movetype= H
physics = N
ctrl = 0
facep2 = 1

[State 5030, 1]
type = VelAdd;Gravity
trigger1 = 1
y = GetHitVar(yaccel)

[State 5030, 2]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1


[State 5030, 4]
type = ChangeState
triggerall = HitFall
trigger1 = HitOver
trigger2 = Vel Y > 0    ;Hit ground
trigger2 = Pos Y >= 10  ;.
value = 6050 ;HITA_FALL

[State 5030, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 6035 ;HITA_UP (transition)

;---------------------------------------------------------------------------
; HITA_UP_T (transition)
[Statedef 6035]
type    = A
movetype= H
physics = N
facep2 = 1

[State 5035, 1]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5035 + Var(6))
trigger1 = Anim != [5051 + Var(6),5059 + Var(6)] ;Not if in hit up anim
trigger1 = Anim != 5090 + Var(6) ;Not if hit off ground anim
value = 5035 + Var(6)

[State 5035, 2]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5035, 4]
type = ChangeState
triggerall = HitFall
trigger1 = HitOver  ;Hit is over
trigger2 = AnimTime = 0 ;Anim is over
trigger3 = Vel Y > 0    ;Hit ground
trigger3 = Pos Y >= 10  ;.
trigger4 = Time = 0     ;No transition anim
trigger4 = Anim != 5035 + Var(6) ;.
value = 6050 ;HITA_FALL

;---------------------------------------------------------------------------
; HITA_FALL (knocked up, falling)
[Statedef 6050]
type    = A
movetype= H
physics = N


[State 5050, 1] ;Change anim when done with transition
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim = 5035
trigger2 = Time = 0     ;If no transition anim
trigger2 = Anim != 5035
trigger2 = (Anim != [5051, 5059]) && (Anim != [5061, 5069])
trigger2 = Anim != 5090 ;Not if hit off ground anim
value = 5050

[State 5050, 2] ;Coming down anim
type = ChangeAnim
trigger1 = anim = [5050,5059]
trigger1 = Vel Y >= ifelse(anim = 5050, 1, -2)
trigger1 = SelfAnimExist(anim+10)
value = anim+10
persistent = 0

[State 5050, 3] ;Gravity
type = VelAdd
trigger1 = time > 0  ;Vans Fix !!!
y = GetHitVar(yaccel)


[State 5050, 6]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifelse((anim = [5051,5059]) || (anim = [5061,5069]), 0, 25)
value = 6100 ;HIT_BOUNCE
;---------------------------------------------------------------------------
; HIT_BOUNCE (hit ground)
[Statedef 6100]
type    = L
movetype= H
physics = N

[State 5100, 1]
type = VelSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
trigger1 = vel x > 1
x = 1

[State 5100, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 5100, Var] ;Save fall velocity
type = VarSet
trigger1 = Time = 0
;trigger1 = GetHitVar(fall.yvel) = 0
sysvar(1) = floor(vel y)

[State 5100, 2] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = (anim != [5051 + Var(6),5059 + Var(6)]) && (anim != [5061 + Var(6),5069 + Var(6)])
trigger2 = !SelfAnimExist(5100 + Var(6) + (anim % 10))
value = 5100 + Var(6)

[State 5100, 3] ;Hit ground anim (for hit up)
type = ChangeAnim
trigger1 = time = 0
trigger1 = (anim = [5051 + Var(6),5059 + Var(6)]) || (anim = [5061 + Var(6),5069 + Var(6)])
trigger1 = SelfAnimExist(5100 + Var(6) + (anim % 10))
value = 5100 + (anim % 10) + Var(6)

[State 5100, 4]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5100, 5]
type = VelSet
trigger1 = Time = 0
y = 0

[State 5100, 6] ;Reduce speed
type = VelMul
trigger1 = Time = 0
x = 0.75

[State 5100, 7]
type = ChangeState
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
value = 6110 ;HIT_LIEDOWN

[State 5100, 8]
type = GameMakeAnim
trigger1 = Time = 1
;value = 61
;pos = 0, 0
;under = 1
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 10

[State 5100, 9]
type = HitFallDamage
trigger1 = Time = 3

[State 5100, 10]
type = PlaySnd
trigger1 = Time = 1
;value = F7, 0 ;Hit ground
value =F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[State 5100, 11]
type = PosFreeze
trigger1 = 1

[State 5100, 12]
type = ChangeState
trigger1 = AnimTime = 0
value = 6101

[State 5100, 13]
type = ForceFeedback
trigger1 = Time = 0
waveform = sinesquare
ampl = 128,-3,-.2,.005
time = 20

;---------------------------------------------------------------------------
; HIT_BOUNCE (bounce into air)
[Statedef 6101]
type    = L
movetype= H
physics = N

[State 5101, 1] ;Coming hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim != [5101,5109]
trigger2 = !SelfAnimExist(5160 + (anim % 10))
value = 5160

[State 5101, 2] ;Coming hit ground anim (for hit up)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim = [5101,5109]
trigger1 = SelfAnimExist(5160 + (anim % 10))
value = 5160 + (anim % 10)

[State 5100, 4] ;Hit ground anim (for flip knockout)
type = ChangeAnim
triggerall = var(47)=1 && selfanimexist(5937)
trigger1 = time = 0
value = 5937
elem = 3
[State 5100, 4] ;Hit ground anim (for flip knockout)
type = VelSet
triggerall = var(47)=1 && selfanimexist(5937)
trigger1 = time = 0
X = -2

[State 5101, 3]
type = HitFallVel
trigger1 = Time = 0

[State 5101, 4]
type = PosSet
trigger1 = Time = 0
y = 20

[State 5101, 5] ;Acceleration
type = VelAdd
trigger1 = 1
y = .4

[State 5101, 6] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 12
type = ChangeState
value = 6110

;---------------------------------------------------------------------------
; HIT_LIEDOWN
[Statedef 6110]
type    = L
movetype= H
physics = N

[State 5110, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 5110, 1] ;For hit up/up-diag type (from state 5081)
type = ChangeAnim
persistent = 0
trigger1 = SelfAnimExist(5110 + (anim % 10))
trigger1 = anim = [5081,5089]
value = 5110 + (anim % 10)

[State 5110, 2] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
triggerall = anim != [5110,5119] ;Not already changed anim
trigger1 = anim != [5161,5169]
trigger2 = !SelfAnimExist(5170 + (anim % 10))
value = 5170

[State 5110, 3] ;Hit ground anim (for hit up)
type = ChangeAnim
triggerall = time = 0
triggerall = anim != [5110,5119] ;Not already changed anim
trigger1 = anim = [5161,5169]
trigger1 = SelfAnimExist(5170 + (anim % 10))
value = 5170 + (anim % 10)

[State 5110, 4]
type = HitFallDamage
trigger1 = Time = 0

[State 5110, 5]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5110, Var] ;Get fall velocity
type = VarSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) != 0
sysvar(1) = floor(vel y)

[State 5110, 6]
type = PlaySnd
trigger1 = Time = 0
trigger1 = !SysVar(0)
;value = F7, 0 ;Hit ground
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[State 5110, 7]
type = GameMakeAnim
trigger1 = Time = 0
trigger1 = !SysVar(0)
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 10

[State 5110, 8]
type = VelSet
trigger1 = Time = 0
y = 0

[State 5110, 9] ;For hit up type
type = ChangeAnim
persistent = 0
triggerall = anim = [5171,5179]
triggerall = SelfAnimExist(5110 + (anim % 10))
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground anim
value = 5110 + (anim % 10)

[State 5110, 10] ;For normal
type = ChangeAnim
persistent = 0
triggerall = Anim != [5111,5119]
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground frame
value = 5110

[State 5110, 11] ;If just died
type = ChangeState
triggerall = !alive
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground frame
trigger3 = Anim = [5110,5119]
value = 5150

[State 5110, 12]
type = VarSet
trigger1 = SysVar(0)
trigger1 = Time = 0
sysvar(0) = 0

[State 5110, 13] ;Friction
type = VelMul
trigger1 = 1
x = 0.85

[State 5110, 14]
type = ForceFeedback
trigger1 = alive
trigger1 = Time = 0
time = 8
ampl = 240
waveform = sine

[State 5110, 15]
type = ForceFeedback
trigger1 = !alive
trigger1 = Time = 0
ampl = 200, 7, -.467
time = 30
waveform = sine

[State 5110, 11] ;If just died
type = ChangeState
trigger1 = Time = 12
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground frame
trigger3 = Anim = [5110,5119]
value = 6120

;---------------------------------------------------------------------------
; HIT_GETUP
[Statedef 6120]
type    = L
movetype= I
physics = N

[State 5120, 1a] ;Get up anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim != [5111,5119]
trigger2 = !SelfAnimExist(5120 + (anim % 10))
value = 5120

[State 5120, 1b] ;Get up anim (for hit up/diag-up)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim = [5111,5119]
trigger1 = SelfAnimExist(5120 + (anim % 10))
value = 5120 + (anim % 10)

[State 5120, 2]
type = VelSet
trigger1 = Time = 0
x = 0

[State 5120, 3]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 5120, 4]
type = HitFallSet
trigger1 = AnimTime = 0
value = 1

[State 5120, 5] ;Can't be thrown right after getting up
type = NotHitBy
trigger1 = AnimTime = 0
value = , NT,ST,HT
time = 12

[State 5120, 6] ;Can't be hit right after getting up (short time)
type = NotHitBy
trigger1 = AnimTime = 0
value2 = SCA
time = 3

[State 5120, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 6300
ctrl = 0
;---------------------------------------------------------------------------
;Tired
[Statedef 6300]
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

[State 9000, Next]
type = SelfState
trigger1 = var(2)>= 580
value = 0
ctrl = 1
;-----------------------------------------------------------------------
;statedef - 2
[statedef -2]
[State -2, ]
type = DisplayToClipboard
trigger1 = numhelper(1315) > 0
text = "Var13 = %d, numtarget = %d"
params = var(13), helper(1315), numtarget
ignorehitpause = 1

;-------------------------------------------------------------------------
[State -2, Display to Clipboard]
type = DisplaytoClipboard
trigger1 = (GameTime%100) = 0
ignorehitpause = 1
text = "Dragonball Allstars Gohan By Neocide"

;-----------------------------------------------------------------------

[State 0, ResetZanzouken]
type = VarSet
triggerall = Var(3) != 0 && stateno != [2100,2114]
trigger1 = !NumTarget
trigger2 = NumTarget
trigger2 = Target, movetype != H
v = 3
value = 0

;---------------------------------------------------------------------------
[State 0, Resetkiblast]
type = VarSet
triggerall = Var(13) != 0 && stateno != [1300,1305]
trigger1 = cond(numhelper(1310),(helper(1310),numtarget=0),1)
trigger1 = cond(numhelper(1315),(helper(1315),numtarget=0),1)
trigger1 = !NumTarget
v = 13
value = 0

;--------------------------------------------------------------------
[State 0, Reset Galick Ho]
type = VarSet
triggerall = Var(14) != 0 && stateno !=3001 && time = 50
trigger1 = cond(numhelper(8516),(helper(8516),numtarget=0),1)
trigger1 = !NumTarget
v = 14
value = 0

;--------------------------------------------------------------------

[State -2, AssertSpecial]
type = AssertSpecial
trigger1 = var(25) = 1
trigger2 = enemy,Authorname = "Neocide" && var(25) = 1
flag = invisible

;-------------------------------------------------------------------------
[State -2, VarSet]
type = VarSet
trigger1 = movetype = H
v = 25    ;fv = 10
value = 0
;ignorehitpause = 
;persistent = 
;-----------------------------------------------------------------------


[State 0, VarSet]
type = VarSet
trigger1 = palno = 6
v = 27    ;fv = 10
value = 1
;ignorehitpause = 
;persistent = 


[State 0, VarSet]
type = null; VarSet
trigger1 = power >= 5000
v = 26    ;fv = 10
value = 1
;ignorehitpause = 
;persistent = 

[State 0, VarSet]
type =null; VarSet
trigger1 = power <= 4000
v = 26    ;fv = 10
value = 0
;ignorehitpause = 
;persistent = 


[State 0, Helper]
type = Helper
trigger1   = var(26) = 1
helpertype = normal ;player
name = "flamesup"
ID = 8305
stateno = 8306
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = 1
size.yscale = 1

;=============================DAMAGE DAMPENER===============================
;---------------------------------------------------------------------------
[State -2, DamageDampener-Reset]
type = VarSet
triggerall = FVar(10) != 1
trigger1 = !NumTarget
trigger2 = NumTarget && Target, StateNo >= 5100
fvar(10) = 1
ignorehitpause = 1
;---------------------------------------------------------------------------
[State -2, DamageDampener-Increase]
type = VarAdd
trigger1 = MoveType = A
trigger1 = MoveHit = 1
trigger1 = FVar(10) < 31
trigger1 = NumTarget
fv = 10
value = 1
persistent = 0
;---------------------------------------------------------------------------
[State -2, DamageDampener-Calculus]
type = VarSet
trigger1 = 1
fvar(11) = (31-FVar(10))/28
ignorehitpause = 1
;---------------------------------------------------------------------------
[State -2, CvS2DamageScaling-Power&Life]
type = VarSet
trigger1 = 1
fvar(12) = (.85+.05*(power>=1000)+.05*(power>=2000)+.05*(power>=3000)+.05*(life<=250))
ignorehitpause = 1
;---------------------------------------------------------------------------
[State -2, DamageScaling-FinalFormula-Common]
type = VarSet
trigger1 = 1
fvar(13) = FVar(12) * IfElse(FVar(10) < 3, 1, FVar(11))
ignorehitpause = 1

[State 0, AttackMulSet]
type = AttackMulSet
trigger1 = 1
value = fvar(13)
ignorehitpause = 1

;==============================COMBO DAMPENER===============================


[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = (stateno != 212)
trigger2 = (stateno = 212 && AnimElem = 3)
id  = 8450
ignorehitpause = 1
;persistent =


;------------------Invisible super stuff-----------------------------------




;--------------------------------------------------------------------
;statedef - 3
[Statedef -3]

[State -3, back to camera!]
type = ChangeState
trigger1 = (BackEdgeDist <0) && (StateNo != 100) && (ctrl) && (statetype = S)
value =  100
ctrl = 0

[State 0, StopSnd]
type = StopSnd
triggerall = anim = 3102 && animelemtime(4)>=0 || stateno != 3101
trigger1   = enemy, Pos y > -160 
channel = 10
;ignorehitpause = 
persistent = 0


[State 0, StopSnd]
type = StopSnd
trigger1 = stateno = 0 
channel = 1

[State 0, StopSnd]
type = StopSnd
trigger1 = stateno = 0 
channel = 2

[State 0, StopSnd]
type = StopSnd
trigger1 = stateno = 0 
channel = 3



[State 0, StopSnd]
type = StopSnd
trigger1 = stateno = 0 || movetype = h
channel = 5

[State 0, Stopchargesnd]
type = StopSnd
trigger1 = stateno != 2001
channel = 7

[State 0, Stopchargesnd]
type = StopSnd
trigger1 = stateno != 2001
channel = 11

[State 0, Stopchargesnd]
type = StopSnd
trigger1 = stateno != 2001
channel = 12

