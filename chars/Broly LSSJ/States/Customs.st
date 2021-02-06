;---------------------------------------------------------------------------
;Throw: Opponent
[Statedef 802]
type= A
movetype=H
physics=N
velset=0,0
ctrl=0
poweradd=0
juggle=0
facep2=1
sprpriority=2

[State 802,PlayerPush]
type=PlayerPush
trigger1=1
value=0
[State 0, ScreenBound]
type = ScreenBound
trigger1 =1
value = 1
movecamera = 1,0
ignorehitpause =1

[State 802,ChangeAnim2]
type=ChangeAnim2
trigger1=(!Time)
value=802

[State 802,SelfState]
type= SelfState
trigger1 =(EnemyNear, StateNo != [800,801])
value =5050

;---------------------------------------------------------------------------
;Throw: Opponent
[Statedef 803]
type= A
movetype=H
physics=N
velset=0,0
ctrl=0
poweradd=0
juggle=0
sprpriority=1

[State 803,PlayerPush]
type=PlayerPush
trigger1=1
value=0

[State 803,ChangeAnim2]
type=ChangeAnim2
trigger1=(!Time)
value=803

[State 803,VelSet]
type=VelSet
trigger1=(AnimElem = 1, = 10)
x=1
y=-7

[State 803,VelAdd]
type=VelAdd
trigger1=(Time > 20)
y=0.45

[State 803,EnvShake]
type=EnvShake
trigger1=(!Time)
time=26
ampl=6

[State 803,SelfState]
type=SelfState
trigger1=(Pos Y >= 0) && (Time > 20)
value=5100
;---------------------------------------------------------------------------
;Throw: Opponent
[Statedef 822]
type= A
movetype=H
physics=N
velset=0,0
ctrl=0
poweradd=0
juggle=0
facep2=1
sprpriority=2

[State 822,PlayerPush]
type=PlayerPush
trigger1=1
value=0
[State 0, ScreenBound]
type = ScreenBound
trigger1 =1
value = 1
movecamera = 1,0
ignorehitpause =1

[State 822,ChangeAnim2]
type=ChangeAnim2
trigger1=(!Time)
value=822

[State 822,SelfState]
type= SelfState
trigger1 =(EnemyNear, StateNo != [820,821])
value =5050

;---------------------------------------------------------------------------
;Throw: Opponent
[Statedef 823]
type= A
movetype=H
physics=N
vel=0,0
ctrl=0
poweradd=0
juggle=0
sprpriority=1

[State 823,PlayerPush]
type=PlayerPush
trigger1=1
value=0
[State 0, PosSet]
type = PosSet
trigger1 =!time
y =-20

[State 823,ChangeAnim2]
type=ChangeAnim2
trigger1=(!Time)
value=823
[State 0, VelSet]
type = VelSet
trigger1 =time=1
x = -12
y = -.15

[State 823,VelAdd]
type=VelAdd
trigger1=time>=5
y=0.45

[State 823,EnvShake]
type=EnvShake
trigger1 = Pos Y >= 0 && Vel Y > 0
time=32
ampl=6

[State 823,SelfState]
type=SelfState
trigger1 = Pos Y >= 0 && Vel Y > 0
value=5100
;---------------------------------------------------------------------------
;Zugai Hasatsu: Opponent
[Statedef 1056]
type= A
movetype=H
physics=N
velset=0,0
ctrl=0
juggle=0
facep2=1
sprpriority=1

[State 1056,PlayerPush]
type=PlayerPush
trigger1=1
value=0
[State 0, HitBy]
type = HitBy
trigger1 =1
value = C,ST
ignorehitpause =1
[State 1056,ChangeAnim2]
type=ChangeAnim2
trigger1=(!Time)
value=1056

[State 1056,ScreenBound]
type=ScreenBound
trigger1=1
value=1
movecamera=0,0

[State 1056,VelSet]
type=VelSet
trigger1=(Time = 50)
x=1

[State 1056,VelAdd]
type=VelAdd
trigger1=(Time > 50)
y=0.25

[State 1052,SelfState]
type=SelfState
trigger1=(Pos Y >= 1)
value=5100

[State 1052,SelfState]
type= SelfState
trigger1 =(EnemyNear, StateNo != [1050,1055])
value =5050
;---------------------------------------------------------------------------
;Jigoku Wari: Opponent
[Statedef 1104]
type= A
movetype=H
physics=N
ctrl=0
poweradd=0
juggle=0
sprpriority=3

[State 1104,ChangeAnim2]
type=ChangeAnim2
trigger1=(!Time)
value=1104
[State 0, ScreenBound]
type = ScreenBound
trigger1 =1
value = 1
movecamera=1,0
[State 1104,NotHitBy]
type=NotHitBy
trigger1=1
value=SCA

[State 1104,SelfState]
type= SelfState
trigger1 =(!GetHitVar(IsBound)) && (P2StateNo != 1103)
value =5050

;---------------------------------------------------------------------------
;Jigoku Wari: Opponent
[Statedef 1105]
type= A
movetype=H
physics=N
velset=0,0
ctrl=0
poweradd=0
juggle=0
sprpriority=-2

[State 1105,AssertSpecial]
type=AssertSpecial
trigger1=1
flag=NoShadow

[State 1105,NotHitBy]
type=NotHitBy
trigger1 =1
time=1
value=SCA

[State 1105,PosSet]
type= PosSet
trigger1 =(!Time)
y= 1000

[State 1105,PosSet]
type= PosSet
trigger1 =(Time = 60)
y= 0

[State 1105,VelSet]
type= VelSet
trigger1 =(Time = 60)
x=-1
y= -8
[State 1105,ChangeState]
type= ChangeState
trigger1 =(Alive) && (Time > 60)
value =1106
ctrl= 0

[State 1105,SelfState]
type= SelfState
trigger1 =(!Alive)
value =5150

;---------------------------------------------------------------------------
;Jigoku Wari: Opponent (Jump Up)
[Statedef 1106]
type= A
movetype=I
physics=N
juggle=0
facep2=0

[State 1106,ChangeAnim]
type= ChangeAnim
trigger1 =(!Time)
value =IfElse((Vel X) = 0,41,IfElse((Vel X) > 0,42,43))

[State 1106,ChangeAnim]
type= ChangeAnim
trigger1 =(Vel Y > -2) && (SelfAnimExist(Anim + 3))
value =(Anim + 3)
persistent =0

[State 1106,NotHitBy]
type=NotHitBy
trigger1 =1
time=1
value=SCA

[State 1106,VarSet]
type= VarSet
trigger1 =(!Time)
sysvar(1) =0

[State 1106,VelAdd]
type=VelAdd
trigger1=1
y=0.40

[State 1106,SelfState]
type=SelfState
trigger1=(Vel Y > 0) && (Pos Y >= 0)
value=52
;---------------------------------------------------------------------------
[Statedef 1107]
type    = A
movetype= H
physics = N
juggle = 1
ctrl = 0
velset=0,-8
poweradd = 0
sprpriority =3
facep2 = 1

[State 0, VA]
type = VelAdd
trigger1 =animelemtime(2)>=0
y = .5
[State 0, HitBy]
type = HitBy
trigger1 =1
value = SCA,ST
ignorehitpause =1

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = !time
value = 1107  ;<=======custom animation

[State 0, SelfState]
type = SelfState
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 5100
ctrl = 0
;---------------------------------------------------------------------------
[Statedef 1108]
type    = S
movetype= H
physics = S
juggle = 1
ctrl = 0
velset = 0,0
poweradd = 0
sprpriority = 0
facep2 = 1

[State 0, HitFallSet]
type = HitFallSet
trigger1 = 1
value = 0

[State 0, PosSet]
type = PosSet
trigger1 = !time
y = 0
[State 0, HitBy]
type = HitBy
trigger1 =1
value = S,SA
ignorehitpause =1

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = !time
value = 4058  ;<=======custom animation

[State 0, SelfState]
type = SelfState
trigger1 =animelem=5
value = 0
ctrl = 1
;========================<HIT WALL>=============================
;---Hit Pause---
[Statedef 1125]
type=A
movetype=H
physics=N
velset=0,0
[State 1125, anim]
type=changeanim
trigger1= 1
value=5012
[State 1125, end]
type=changestate
trigger1= hitshakeover
value=1126


;---Falling---
[Statedef 1126]
type=A
movetype=H
physics=N

[State 1126, vel]
type=hitvelset
trigger1= !time
x=1
y=1
[State 1126, grav]
type=veladd
trigger1= 1
y=gethitvar(yaccel)

[State 1126, screen]
type=screenbound
trigger1= 1
value=1
movecamera=0,1
[State 1126, push]
type=playerpush
trigger1= 1
value=0

[State 1126, anim]
type=changeanim
trigger1= !time
value=5030

[State 1126, bounce]
type=changestate
trigger1= backedgebodydist<=10 || frontedgebodydist<=10
value=1127
[State 1126, end]
type=selfstate
trigger1= vel y>0 && pos y>=0
value=5100


;---Hitting Wall---
[Statedef 1127]
type=A
movetype=H
physics=N

[State 1127, turn]
type=turn
trigger1= !time
trigger1= frontedgedist<backedgedist


[State 1127, pos]
type=posset
trigger1= 1
x=-160*facing
[State 1127, pos]
type=posfreeze
trigger1= 1
x=1
y=1

[State 1127, EnvShake]
type = EnvShake
trigger1 = !time
time =44
ampl = 9
ignorehitpause =1

[State 1127, screen]
type=screenbound
trigger1= 1
value=1
movecamera=0,1
[State 1127, push]
type=playerpush
trigger1= 1
value=1

[State 1127, anim]
type=changeanim
trigger1= 1
value=5000

[State 1127, snd]
type=playsnd
trigger1= !time
value=f7,0
[State 1127, fx]
type=explod
trigger1= !time
anim=f72
pos=0,floor(screenpos y)-50
postype=back
sprpriority=3

[State 1127, end]
type=changestate
trigger1= time>=4
value=1128


;---Falling---
[Statedef 1128]
type=A
movetype=H
physics=N

[State 1128, turn]
type=turn
trigger1= !time

[State 1128, grav]
type=veladd
trigger1= 1
y=.5
[State 1128, vel]
type=velset
trigger1= !time
x=-2.5
y=-9

[State 1128, anim]
type=changeanim
trigger1= !time
value=ifelse(selfanimexist(5051),5051,5030)
[State 1128, anim]
type=changeanim
trigger1= anim=5030 && !animtime
value=5050
[State 1128, Anim]
type=changeanim
trigger1= vel y>-3 && anim=5051 &&selfanimexist(5061)
value=5061
[State 1128, Anim]
type=changeanim
trigger1= vel y>-3 && anim=5051 &&!selfanimexist(5061)&&selfanimexist(5060)
value=5060
[State 1128, Anim]
type=changeanim
trigger1= vel y>-3 && anim=5051&&!selfanimexist(5060) &&!selfanimexist(5061)&&selfanimexist(5062)
value=5062
[State 1128, Anim]
type=changeanim2
trigger1= vel y>-3 && anim=5051&&!selfanimexist(5060) &&!selfanimexist(5061)&&!selfanimexist(5062)
value=5061

[State 1128, screen]
type=screenbound
trigger1= 1
value=1
movecamera=0,0
[State 1128, push]
type=playerpush
trigger1= 1
value=0

[State 1128, end]
type=selfstate
trigger1= vel y>0 && pos y>=0
value=5100
;---------------------------------------------------------------------------
;Tobi Rariatto (EX) - Opponent
[Statedef 2041]
type= A
movetype=H
physics=N
velset=0,0
ctrl=0
poweradd=0
juggle=0
facep2=0
sprpriority=-2

[State 2041,ChangeAnim2]
type= ChangeAnim2
trigger1 =1
value =2041

[State 2041,ChangeState]
type= ChangeState
trigger1 =(HitShakeOver)
value =2042

;---------------------------------------------------------------------------
;Tobi Rariatto (EX) - Opponent
[Statedef 2042]
type= A
movetype=H
physics=N
ctrl=0
poweradd=0
juggle=0
facep2=0
sprpriority=-2

[State 2042,ScreenBound]
type= ScreenBound
trigger1 =(Pos Y < -15) && ((BackEdgeBodyDist < 65) || (FrontEdgeBodyDist < 65))
value =1
movecamera =0,1

[State 2042,HitFallSet]
type= HitFallSet
trigger1 =(!Time)
value=1

[State 2042,HitVelSet]
type= HitVelSet
trigger1 =(!Time)
x= 1
y= 1

[State 2042,VelAdd]
type= VelAdd
trigger1 =1
y= 0.45
[State 2042,ChangeState]
type= ChangeState
trigger1 =(Pos Y < -15) && ((BackEdgeBodyDist <= 20) || (FrontEdgeBodyDist <= 20))
value =2043

[State 2042,SelfState]
type= SelfState
trigger1 =(Vel Y > 0) && (Pos Y >= 0)
value =5100

;---------------------------------------------------------------------------
;Tobi Rariatto (EX) - Opponent
[Statedef 2043]
type= A
movetype=H
physics=N
ctrl=0
poweradd=0
juggle=0
facep2=0
sprpriority=-2

[State 2043,ChangeAnim2]
type= ChangeAnim2
trigger1 =(!Time)
value =2043

[State 2043,ScreenBound]
type= ScreenBound
trigger1 =1
value =1
movecamera =0,1

[State 2043,Turn]
type= Turn
trigger1 =(!Time) && (FrontEdgeBodyDist <= 30)

[State 2043,PosAdd]
type= PosAdd
trigger1 =(!Time)
x= (15 - BackEdgeBodyDist)

[State 2043,PosFreeze]
type= PosFreeze
trigger1 =1
x= 1
y= 1

[State 2043,PlaySnd]
type= PlaySnd
trigger1 =(!Time)
value =F7,0

[State 2043,EnvShake]
type=EnvShake
trigger1=(!Time)
time=15
freq=140
ampl=-4
phase=120



[State 2043,Explod]
type=Explod
trigger1=(!Time)
anim=F72
id=72
pos= 0, (Floor(ScreenPos Y)-50)
postype=Back
facing=1
vfacing=1
bindtime=1
vel=0,0
accel=0,0
random=0,0
removetime=-2
supermove=0
supermovetime= 0
pausemovetime= 1
scale=1,1
sprpriority=3
ontop=0
shadow=0,0,0
ownpal=1
removeongethit= 0



[State 2043,Explod]        ;CHOCA PAREDE EXPLO
type=Explod
trigger1                = (p2stateno) && (MoveContact)
trigger2                = (!Time)
anim=9301
pos= 0, (Floor(ScreenPos Y)-50)
postype=Back
facing=-1
vfacing=1
bindtime=1
vel=0,0
accel=0,0
random=0,0
removetime=-2
supermove=0
supermovetime= 0
pausemovetime= 1
scale=1,1
sprpriority=3
ontop=0
shadow=0,0,0
ownpal=1
removeongethit= 0

[State 2043,Explod]        ;CHOCA PAREDE   ROCA
type=Explod
trigger1                = (p2stateno) && (MoveContact)
trigger2                = (!Time)
anim=23352
pos= 0, (Floor(ScreenPos Y)-50)
postype=Back
facing=-1
vfacing=1
bindtime=1
vel=0,0
accel=0,0
random=0,0
removetime=-2
supermove=0
supermovetime= 0
pausemovetime= 1
scale=0.5,0.5
sprpriority=3
ontop=0
shadow=0,0,0
ownpal=1
removeongethit= 0

[State 0, EnvShake]
type = EnvShake
trigger1 = (!Time)
time = 80
ampl = -10
ignorehitpause = 20
persistent =  20

[State 2043,ChangeState]
type= ChangeState
trigger1 =(!AnimTime)
value =2044
;---------------------------------------------------------------------------
;Tobi Rariatto (EX) - Opponent
[Statedef 2044]
type= A
movetype=H
physics=N
ctrl=0
poweradd=0
juggle=0
facep2=0
sprpriority=-2

[State 2044,Turn]
type= Turn
trigger1 =(!Time) && (BackEdgeDist < 30)

[State 2044,VelSet]
type= VelSet
trigger1 =(!Time)
x= -1.6
y= -6

[State 2044,VelAdd]
type= VelAdd
trigger1 =1
y= 0.35

[State 2044,ChangeAnim]
type= ChangeAnim
trigger1 =(!Time) && (SelfAnimExist(5052))
value =5052

[State 2044,ChangeAnim]
type= ChangeAnim
trigger1 =(!Time) && (!SelfAnimExist(5052))
value =5050

[State 2044,ChangeAnim]
type= ChangeAnim
trigger1 =(Vel Y > -2) && (Anim = 5050) && (SelfAnimExist(5060))
value =5060
persistent =0

[State 2044,ChangeAnim]
type= ChangeAnim
trigger1 =(Vel Y > -2) && (Anim = 5052) && (SelfAnimExist(5062))
value =5062
persistent =0

[State 2044,SelfState]
type= SelfState
trigger1 =(Vel Y > 0) && (Pos Y >= 0)
value =5100
;---------------------------------------------------------------------------
[Statedef 2777]
Type=A
MoveType=H
Physics=N
Ctrl=0
VelSet=0,0
sprpriority=0

[State 2777]
Type=ChangeAnim2
Trigger1=!time
Value=15001
[State 2777]
type = VelSet
trigger1=time=30
x = -20

[State 2777]
Type=SelfState
Trigger1=Alive&&Time>=50
Value=5050
[State 2777,ChangeState]
type= ChangeState
trigger1 =(!Alive)&&(Time >=20)
value =1105
ctrl= 0
;---------------------------------------------------------------------------
[Statedef 2778]
Type=A
MoveType=H
Physics=N
Ctrl=0
VelSet=0,0
sprpriority=0

[State 2778]
Type=ChangeAnim2
Trigger1=!time
Value=15001
[State 2778]
type = VelSet
trigger1=!time
x=-20
y=-3
[State 2778]
Type=SelfState
Trigger1=Alive&&Time>=20
Value=5050
[State 2778,ChangeState]
type= ChangeState
trigger1 =(!Alive)&&(Time >=15)
value =1105
ctrl= 0
;---------------------------------------------------------------------------
[Statedef 2779]
Type=A
MoveType=H
Physics=N
Ctrl=0
VelSet=0,0
sprpriority=0

[State 2779]
Type=ChangeAnim2
Trigger1=!time
Value=15001
[State 2779]
type = VelSet
trigger1=!time
x=-3
y=-2
[State 2779]
Type=SelfState
Trigger1=Time=10
Value=5050
;---------------------------------------------------------------------------
;Magyo Satsuriku: Opponent
[Statedef 3022]
type= A
movetype=H
physics=N
ctrl=0
juggle=0
sprpriority=1

[State 0, ScreenBound]
type = ScreenBound
trigger1 =1
value = 0
ignorehitpause =1
[State 3022,ChangeAnim2]
type=ChangeAnim2
trigger1=(!Time)
value=3022
ignorehitpause =1
[State 3022,SelfState]
type= SelfState
trigger1 =(EnemyNear, StateNo != [3020,3021])
value =5050

;---------------------------------------------------------------------------
;Magyo Satsuriku: Opponent
[Statedef 3023]
type= A
movetype=H
physics=N
ctrl=0
poweradd=0
juggle=0
sprpriority=1

[State 3023,ChangeAnim2]
type= ChangeAnim2
trigger1=(!Time)
value=3023
[State 0, screen]
type=screenbound
trigger1= 1
value=1
movecamera=1,0
ignorehitpause=1
[State 3023,VelAdd]
type=VelAdd
trigger1=(Time > 20)
y=0.45

[State 3023,PosAdd]
type=PosAdd
trigger1=(Time < 20)
x=(IfElse(((GameTime%2) = 0),1,-1))

[State 3023,EnvColor]
type=EnvColor
trigger1=(Time < 20) && ((GameTime%2) = 0)
value=255,255,255
time=1

[State 3023,EnvShake]
type=EnvShake
trigger1=(!Time)
time=30
freq=140
ampl=-8
phase=120

[State 3023,Explod]
type=Explod
trigger1=(!Time)
anim=F72
id=72
pos= 0, (Floor(ScreenPos Y))
postype=Back
facing=1
vfacing=1
bindtime=1
vel=0,0
accel=0,0
random=0,0
removetime=-2
supermove=0
supermovetime= 0
pausemovetime= 1
scale=1,1
sprpriority=3
ontop=0
shadow=0,0,0
ownpal=1
removeongethit= 0

[State 3023,SelfState]
type=SelfState
trigger1=(Vel Y > 0) && (Pos Y >= 0)
value=5100
;---------------------------------------------------------------------------
[Statedef 3355]
Type=A
MoveType=H
Physics=N
Ctrl=0
VelSet=0,0
sprpriority=1
[State 0, ScreenBound]
type = ScreenBound
trigger1 =1
value = 0
ignorehitpause =1
[State 3355]
Type=ChangeAnim2
Trigger1=!time
Value=3355
;---------------------------------------------------------------------------
[Statedef 3356]
Type=S
MoveType=H
Physics=S
Ctrl=0
VelSet=0,0
sprpriority=2
[State 0, ScreenBound]
type = ScreenBound
trigger1 =1
value = 0
ignorehitpause =1
[State 3356]
Type=ChangeAnim2
Trigger1=!time
Value=3356
[State 0, PosSet]
type = PosSet
trigger1 =!time
y = 0
ignorehitpause =1

[State 3356,SelfState]
type=SelfState
trigger1=time>=80
value=5120
;---------------------------------------------------------------------------
[Statedef 4040]
type    = A
movetype= H
physics = N
juggle = 1
ctrl = 0
velset = 0,0
sprpriority = 1
facep2 = 1

[State 0, HitBy]
type = NotHitBy
trigger1 =1
value = SCA
ignorehitpause =1
[State 0, ScreenBound]
type = ScreenBound
trigger1 =1
value = 1
movecamera = 1,0
ignorehitpause =1

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1=1
value = 4059
elem=3

[State 3022,SelfState]
type= SelfState
trigger1 =(EnemyNear, StateNo != [3020,3021])
value =5050
;---------------------------------------------------------------------------
[Statedef 4055]
type    = A
movetype= H
physics = N
juggle = 1
ctrl = 0
velset=-32,-5
poweradd = 0
sprpriority = 1
facep2 = 1

[State 0, VA]
type = VelAdd
trigger1 =animelemtime(5)>=0
y =.45

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = !time
value = 4056  ;<=======custom animation
[State 0, SelfState]
type = SelfState
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 5100
ctrl = 0
;---------------------------------------------------------------------------
[Statedef 4056]
type    = A
movetype= H
physics = N
juggle = 1
ctrl = 0
velset=-22,-3
poweradd = 0
sprpriority = 1
facep2 = 1

[State 0, VA]
type = VelAdd
trigger1 =animelemtime(6)>=0
y =.45

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = !time
value = 4056  ;<=======custom animation

[State 0, SelfState]
type = SelfState
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 5100
ctrl = 0
;---------------------------------------------------------------------------
[Statedef 4058]
type    = S
movetype= H
physics = S
juggle = 1
ctrl = 0
velset = 0,0
poweradd = 0
sprpriority = 0
facep2 = 1

[State 0, HitFallSet]
type = HitFallSet
trigger1 = 1
value = 0

[State 0, PosSet]
type = PosSet
trigger1 = !time
y = 0
[State 0, HitBy]
type = HitBy
trigger1 =1
value = SCA,HA,HP,HT
time = 1
ignorehitpause =1

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = !time
value = 4058  ;<=======custom animation

[State 0, SelfState]
type = SelfState
trigger1 = animtime=0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
[Statedef 4059]
type    = S
movetype= H
physics = S
juggle = 1
ctrl = 0
velset = 0,0
poweradd = 0
sprpriority = 0
facep2 = 1

[State 0, HitFallSet]
type = HitFallSet
trigger1 = 1
value = 0
[State 0, PosSet]
type = PosSet
trigger1 = !time
y = 0
[State 0, HitBy]
type = HitBy
trigger1 =1
value = SCA,HA,HP,HT
time = 1
ignorehitpause =1

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = !time
value = 4059  ;<=======custom animation
[State 0, SelfState]
type = SelfState
trigger1 = animtime=0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Wall-knockdown
[Statedef 4060]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 1

[State 4061, screen]
type=screenbound
trigger1= 1
value=1
movecamera=0,1
[State 4060, anim]
type=changeanim
trigger1= !time&&selfanimexist(5035)
value=5035
[State 4060, anim]
type=changeanim
trigger1= !time&&!selfanimexist(5035)
value=5030
[State 4060, Turn]
type = Turn
trigger1 = Time = 0
trigger1 = P2Dist X < 0

[State 4060, VelSet]
type = VelSet
trigger1 = AnimElem = 1
x = -22
y = -4

[State 4060, ChangeState]
type = ChangeState
triggerall = AnimElem = 1, > 0
trigger1 = BackEdgeBodyDist <= 5
trigger2 = Time >= 60
value = 4061

;---------------------------------------------------------------------------
[Statedef 4061]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 1

[State 4061, screen]
type=screenbound
trigger1= 1
value=1
movecamera=0,1
[State 4061, push]
type=playerpush
trigger1= 1
value=1
[State 4061, pos]
type=posset
trigger1= 1
x=-160*facing
[State 4061, pos]
type=posfreeze
trigger1= 1
x=1
y=1

[State 4061, Anim]
type=changeanim
trigger1= !time&&selfanimexist(5051)
value=5051
[State 4061, Anim]
type=changeanim
trigger1= !time&&!selfanimexist(5051)
value=5050

[State 4061, EnvShake]
type = EnvShake
trigger1 = !Time
time = 32
ampl = 6

[State 4061, snd]
type=playsnd
trigger1= !time
value=f7,0
[State 4061, fx]
type=explod
trigger1= !time
anim=f72
pos=0,floor(screenpos y)-50
postype=back
sprpriority=3

[State 4061, ChangeState]
type = ChangeState
trigger1=time=20
value = 4062
;---------------------------------------------------------------------------
[Statedef 4062]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 1

[State 0, Turn]
type = Turn
trigger1 =!time


[State 4062, Anim]
type=changeanim
trigger1= !time&&selfanimexist(5061)
value=5061
[State 4062, Anim]
type=changeanim
trigger1= !time&&!selfanimexist(5061)&&selfanimexist(5062)
value=5062
[State 4062, Anim]
type=changeanim
trigger1= !time&&!selfanimexist(5061)&&!selfanimexist(5062)
value=5070

[State 4062, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = -2
y = 2

[State 4062, VelAdd]
type = VelAdd
Trigger1 = 1
y = .5

[State 4062, SelfState]
type = SelfState
trigger1 = Pos Y >= 0&&Vel Y > 0
value = 5100
;---------------------------------------------------------------------------
; smashed down...
[Statedef 4310]
type = A
movetype = H
physics = N
velset = 0,0;-4,8
facep2=1

[State 4300, Wid]
type = Width
trigger1 = 1
edge = 25,-25

[State 4310, Vels]
type = VelSet
trigger1 = !Time
trigger1 = PrevStateNo != 4311
x = -2
y = 8
[State 4310, Vels]
type = VelSet
trigger1 = !Time
trigger1 = PrevStateNo = 4311
x = -1
y = 8

[State 4310, Gethit]
type = ChangeAnim
trigger1 = !Time
value = 5050

[State 4310, Bounce]
type = ChangeState
trigger1 = Pos Y >= -8.1
value = 4311
[State 4311, Land]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 4311
;---------------------------------------------------------------------------
; ... and bounce
[Statedef 4311]
type = A
movetype = H
physics = N
velset = 0,0
facep2=1
[State 4311, HitGround]
type = PosSet
trigger1 = !Time
y = 0
[State 0, 1]
type = PlaySnd
trigger1 = Time = 1
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)
[State 0, 2]
type = GameMakeAnim
trigger1 = Time = 0
trigger1 = !SysVar(0)
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 14
[State 0, EnvShake]
type = EnvShake
trigger1 =time=0
time=35
ampl=10
[State 4311, BounceGround]
type = ChangeAnim2
trigger1 = !Time
value = 5081
[State 4311, BounceUp]
type = VelSet
trigger1 = Anim = 5081 && AnimElemNo(0) = 2
x = -3
y = -8

[State 4311, FallAgain]
type = VelAdd
trigger1 = Anim = 5081 && AnimElemNo(0) >= 2
y = .4
persistent = 1

[State 4311, Land]
type = SelfState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 5100
;-------------------------------------------------------------------------------
 ; Hit by  - shaking from the hit
; (a custom gethit state)

[Statedef 9040]
type    = A
movetype= H
physics = N
velset = 0,0

[State 9040, Anim] ;Custom animation
type = null;ChangeAnim2
trigger1 = 1
value = 5012


[State 5020, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim ;2
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = ifelse((GetHitVar(airtype) = 1),5000,5010) + GetHitVar(animtype)


[State 5000, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030

[State 5000, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) ;5051 - 4 + type



[State 5050, 2] ; anim for trip
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(groundtype) = 3
trigger1 = SelfAnimExist(5070)
value = 5070


[State 9040, State]
type = AfterImage
trigger1 = Time = 5
length = 5
timegap = 1
framegap = 1
PalBright   = 0,0,0
PalContrast = 100,100,100
PalMul      = 1,1,1
trans = Add1
time = 0

[State 9040, State]
type = AfterImageTime
trigger1 = 1
time = 2

[State 9040, State]
type = ChangeState
trigger1 = HitShakeOver = 1
value = 9050

;----------------------------------------------------------------------
; Hit by - flying through the air
; (a custom gethit state)
[Statedef 9050]
type    = A
movetype= H
physics = N



[State 9050]
type = AfterImage
trigger1 = Time = 5
length = 5
timegap = 1
framegap = 1
PalBright   = 0,0,0
PalContrast = 100,100,100
PalMul      = 1,1,1
trans = Add1
time = 0

[State 9050]
type = AfterImageTime
trigger1 = 1
time = 2

[State 9050, Velocity]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 9050, Gravity]
type = VelAdd
trigger1 = 1
y = .39

[State 9050, No scroll]
type = null;ScreenBound
;triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist < 65
trigger2 = FrontEdgeBodyDist < 65
value = 0
movecamera = 0,1

[State 9050, Hit wall]
type = ChangeState
;triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist <= 20
trigger2 = FrontEdgeBodyDist <= 20
value = 9060


[State 5050, 1] ;Change anim when done with transition
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim = 5035
trigger2 = Time = 0     ;If no transition anim
trigger2 = Anim != 5035
trigger2 = (Anim != [5051, 5059]) && (Anim != [5061, 5069])
trigger2 = Anim != 5090 ;Not if hit off ground anim
value = 5050
trigger2 = Anim != 5070

[State 5050, 2] ;Coming down anim
type = ChangeAnim
trigger1 = anim = [5050,5059]
trigger1 = Vel Y >= ifelse(anim = 5050, 1, -2)
trigger1 = SelfAnimExist(anim+10)
value = anim+10
persistent = 0


[State 5050, 2] ;Coming down anim for trip
type = ChangeAnim
trigger1 = anim = 5070
trigger1 = Vel Y >= 0
trigger1 = SelfAnimExist(anim-10) || SelfAnimExist(5071)
value = ifelse(SelfAnimExist(5071),5071,anim-10)
persistent = 0


[State 5035, 3]
type = null;ChangeState
triggerall = !HitFall
trigger1 = HitOver  ;Hit is over
trigger2 = AnimTime = 0 ;Animation over
trigger3 = Vel Y > 0    ;Hit ground
trigger3 = Pos Y >= 10  ;.
trigger4 = Time = 0     ;No transition anim
trigger4 = Anim != 5035 ;.
value = 5040 ;HITA_RECOV

[State 5050, 4] ;Recover near ground
type = null;SelfState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = 1;Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 5050, 5]; Recover in mid air
type = null;ChangeState
triggerall = Vel Y > -1
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210 ;HITFALL_AIRRECOVER

[State 9050, Hit ground]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifelse((anim = [5051,5059]) || (anim = [5061,5071]), 0, 25)
value = 5100 ;HIT_BOUNCE

;-----------------------------------------------------------------------------------------------------
; Hit by  - hit wall
; (a custom gethit state)
[Statedef 9060]
type    = A
movetype= H
physics = N

[State 9060, Turn]
type = Turn
trigger1 = (Time = 0) && (FrontEdgeBodyDist <= 30)

[State 9060]
type = EnvShake
trigger1 = time = 0
time = 30
freq = 100
ampl = -10
phase = 10

[State 9060, Pos]
type = PosAdd
trigger1 = Time = 0
x = 15 - BackEdgeBodyDist

[State 9060, Stop moving]
type = PosFreeze
trigger1 = 1
x = 1
y = 1

[State 9060, No scroll]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 9060, Spark]
type = Explod
trigger1 = Time = 0
anim = F72
pos = 0, floor (screenpos y) - 50
postype = back
sprpriority = 3
ID=17727

[State 9060, State]
type = ChangeState
trigger1 = Time = 5
value = 9070

;----------------------------------------------------------------
; Hit by  - bounce off wall
; (a custom gethit state)
[Statedef 9070]
type    = A
movetype= H
physics = N




[State 9070, 1]
type = NotHitBy
trigger1 = 1
value = , NA, NP

[State 9070, Vel Y]
type = VelSet
trigger1 = Time = 0
y = -2

[State 9070, Vel X]
type = VelSet
trigger1 = Time = 0
x = 2


[State 9070, Turn]
type = null;Turn
trigger1 = (Time = 0) && (BackEdgeDist < 30)

[State 9070, Gravity]
type = VelAdd
trigger1 = 1
y = .39

[State 9070, Anim 5050] ;Self falling animation
type = ChangeAnim
trigger1 = Time = 0
trigger1 = !SelfAnimExist(5052)
value = 5050

[State 9070, Anim 5052] ;Self falling animation (diagup type)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5052)
value = 5052

[State 9070, Anim 5060] ;Coming down - normal
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5050
trigger1 = SelfAnimExist(5060)
persistent = 0
value = 5060

[State 9070, Anim 5062] ;Coming down - diagup type
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5052
trigger1 = SelfAnimExist(5062)
persistent = 0
value = 5062

[State 9070, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100

