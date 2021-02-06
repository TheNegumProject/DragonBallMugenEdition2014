;---------------------------------------------------------------------------
;Gekimetsu Dama
[Statedef 3000]
type= S
movetype=A
physics=N
anim=3000
velset=0,0
ctrl=0
juggle=0
facep2=1
sprpriority=2

[State 0, VarSet]
type = VarSet
trigger1=!time
var(8)=0
ignorehitpause =1
[State 0, VarSet]
type = VarSet
triggerall=animelemtime(1)>=10&&animelemtime(4)<0
trigger1 =!AILevel&&command="holdup"
trigger2 =AILevel&&enemynear,Statetype=A&&(p2bodydist Y<=-90)
var(8)=1
ignorehitpause =1
[State 0, VarSet]
type = VarSet
triggerall=animelemtime(1)>=10&&animelemtime(4)<0
trigger1 =!AILevel&&command="holddown"
trigger2 =AILevel&&enemynear,Statetype=L&&(p2bodydist x=[40,100])
var(8)=2
ignorehitpause =1

[State 1000, Explod]
type = Explod
trigger1=!time
anim = 2224
ID = 2224
pos = -30,20
postype = p1
facing = 1
vfacing = 1
bindtime = 1
scale = 1,1
sprpriority = 0
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999
[State 0, NotHitBy]
type = NotHitBy
trigger1 =animelemtime(4)<=1
value = SCA
ignorehitpause =1
[State 0, SuperPause]
type=SuperPause
trigger1=!time
time=60
movetime =60
anim=-1
sound=S3100,0
darken=0
poweradd=-1000
unhittable=1
[State 0, Helper]
type = Helper
trigger1 =!time
helpertype = normal ;player
name = "Super Fx"
ID = 2061
stateno = 2061
pos = 55,-95
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 48
[State 0, Helper]
type = Helper
trigger1 =time=0
helpertype = normal ;player
name = "portrait"
ID = 6033
stateno = 6033
postype = back
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 99999
size.xscale =.5
size.yscale =.5
[State 3000, Black BG]
type = Explod
trigger1 = Time = 0
removetime = -1
id = 6035
anim = 6035
pos = 0,0
postype = Left
scale = 1,1
sprpriority = -99999
facing = 1
vfacing = 1
ownpal = 1
bindtime = -1
ontop = 0
ownpal = 1
supermove = 1
pausemove = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 60
pausemovetime =  60
[State 6034, HyperBG]
type=helper
trigger1 = AnimElem = 4
helpertype=normal
stateno=6031
ID=6034
name="HyperBG"
postype=Back
supermovetime=99999
pausemovetime=99999
ownpal=1
ignorehitpause=1
size.xscale=.6
size.yscale=.6
[State 0,LV1]
type=afterimage
trigger1=Time=5
time = 999
timegap = 1
framegap = 10
length = 30
paladd = 0, 0, 0
palmul = 0.75, 0.75, 0.75
palcontrast = 128, 128, 128
palpostbright = 0, 0, 0
trans = add

[State 3000,Width]
type=Width
trigger1=animelemtime(4)=0
value=50,0
[State 3000,PlaySnd]
type=PlaySnd
trigger1=animelem=2
value=S3000,11
channel=0
[State 3000,PlaySnd]
type=PlaySnd
trigger1=animelem=2
value=S3000,11
channel=1
[State 3000,PlaySnd]
type=PlaySnd
trigger1=animelem=2
value=S3000,11
channel=9
[State 3000,PlaySnd]
type=PlaySnd
trigger1=animelem=2
value=S3000,11
channel=12

[State 3000,PlaySnd]
type=PlaySnd
trigger1=(AnimElem = 2, = 10)
value=S23,0
channel=5
[State 3000,PlaySnd]
type=PlaySnd
trigger1=(AnimElem = 4)
value=S2,6
channel=7

[State 3000,Explod]
type=Explod
trigger1=(AnimElem = 2, > 10) && (AnimElem = 3, < 0) && (NumExplod(9800) = 0)
anim=9800
id=9800
pos=55,-95
postype=p1
facing=1
vfacing=1
bindtime=-1
vel=0,0
accel=0,0
random=0,0
removetime=40
supermovetime = 99999
scale=1.5,1.5
sprpriority=4
ontop=0
shadow=0,0,0
ownpal=1
removeongethit= 1

[State 3000,Explod]
type=Explod
trigger1=(AnimElem = 4)
anim=9870
id=9870
pos=60,-110
postype=p1
facing=1
bindtime=1
removetime=-2
scale=.65,.65
sprpriority=5
supermovetime = 99999
ontop=1
shadow=0,0,0
ownpal=1
removeongethit= 0

[State 3000,RemoveExplod]
type=RemoveExplod
trigger1=(AnimElem = 4)
id= 9800
[State 3000,RemoveExplod]
type=RemoveExplod
trigger1=(AnimElem = 3)
id= 9890

[State 3000,Helper]
type=Helper
trigger1=(AnimElem = 2, = 1) || (AnimElem = 2, = 21)
helpertype=Normal
name="Kikou Ha Effect"
id=9900
pos=38,-110
postype=p1
facing=1
stateno=9900
keyctrl=0
ownpal=1
supermovetime= 9999
size.xscale=.75
size.yscale=.75

[State 3000,Helper]
type=Helper
trigger1=animelem=4
helpertype=Normal
name="Kikou Ha Effect"
id=3005
pos=38,-90
postype=p1
facing=1
stateno=3005
keyctrl=0
ownpal=1
supermovetime= 9999
size.xscale=1
size.yscale=1

[State 3000,ChangeState]
type=ChangeState
trigger1=(!AnimTime)
value=0
ctrl=1

;---------------------------------------------------------------------------
;Minami Ginga Gouka
[Statedef 3010]
type= S
movetype=A
physics=N
anim=3010
velset=0,0
ctrl=0
juggle=0
facep2=1
sprpriority=2

[State 1000, Explod]
type = Explod
trigger1=!time
anim = 2224
ID = 2224
pos = -30,20
postype = p1
facing = 1
vfacing = 1
bindtime = 1
scale = 1,1
sprpriority = 0
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999
[State 0, NotHitBy]
type = NotHitBy
trigger1 =animelemtime(4)<=1
value = SCA
ignorehitpause =1
[State 0, SuperPause]
type=SuperPause
trigger1=!time
time=60
movetime =60
anim=-1
sound=S3100,1
darken=0
poweradd=-2000
unhittable=1
[State 0, Helper]
type = Helper
trigger1 =!time
helpertype = normal ;player
name = "Super Fx"
ID = 2062
stateno = 2062
pos = 25,-95
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 48
[State 0, Helper]
type = Helper
trigger1 =time=0
helpertype = normal ;player
name = "portrait"
ID = 6036
stateno = 6036
postype = back
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 99999
size.xscale =.5
size.yscale =.5
[State 3000, Black BG]
type = Explod
trigger1 = Time = 0
removetime = -1
id = 6035
anim = 6035
pos = 0,0
postype = Left
scale = 1,1
sprpriority = -99999
facing = 1
vfacing = 1
ownpal = 1
bindtime = -1
ontop = 0
ownpal = 1
supermove = 1
pausemove = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 60
pausemovetime =  60
[State 6034, HyperBG]
type=helper
trigger1 = AnimElem = 8
helpertype=normal
stateno=6031
ID=6034
name="HyperBG"
postype=Back
supermovetime=99999
pausemovetime=99999
ownpal=1
ignorehitpause=1
size.xscale=.6
size.yscale=.6
[State 0, LV-2]
type = AfterImage
trigger1 = Animelem = 1
time = 9999
timegap = 1
framegap = 10
length = 30
paladd = 0, 0, 0
palmul = 0.75, 0.75, 0.75
palcontrast = 32, 32, 160
palpostbright = 0, 0, 0
trans = add

[State 3010,Width]
type=Width
trigger1=animelemtime(8)=0
value=50,0
[State 3010,PlaySnd]
type=PlaySnd
trigger1=animelem=2
value=S3000,13
channel=0
[State 3010,PlaySnd]
type=PlaySnd
trigger1=animelem=2
value=S3000,13
channel=1
[State 3010,PlaySnd]
type=PlaySnd
trigger1=animelem=2
value=S3000,13
channel=9
[State 3010,PlaySnd]
type=PlaySnd
trigger1=animelem=2
value=S3000,13
channel=12
[State 3010,PlaySnd]
type=PlaySnd
trigger1=animelem=2
value=S1,12
channel=3

[State 3010,PlaySnd]
type=PlaySnd
trigger1=(AnimElem = 2)
value=S1,13
channel=4
[State 3010,PlaySnd]
type=PlaySnd
trigger1=(AnimElem = 1)
value=S1,16
channel=5

[State 3010,EnvShake]
type=EnvShake
trigger1=(AnimElem = 2, > 0) && (AnimElem = 8, < 0) && ((GameTime%5) = 0)
time=4
ampl=5
[State 3010,EnvShake]
type=EnvShake
trigger1=(AnimElem = 8)
time=20
ampl=7
[State 3010,Helper]
type=Helper
trigger1=(AnimElem = 1, > 0) && (AnimElem = 7, < 0) && ((GameTime%20) = 0)
helpertype=Normal
name="Rocks"
id=9500
pos=0,0
postype=p1
facing=0
stateno=Ifelse(random<=200,9500,Ifelse(random<=200,9510,Ifelse(random<=200,9520,Ifelse(random<=200,9530,9540))))
keyctrl=0
ownpal=1
supermovetime = 99999
size.xscale=(IfElse(Random <= 799,0.25,.5))
size.yscale=(IfElse(Random <= 799,0.25,.5))

[State 0, Helper]
type = Helper
trigger1=(AnimElem = 1, > 0) && (AnimElem = 8, < 0) && ((GameTime%20) = 0) &&!NumHelper(9700)
helpertype = normal ;player
name ="electricity"
ID =9700
stateno =9700
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 9999
size.xscale =.4
size.yscale =.4

[State 3010,Explod]
type=Explod
trigger1=(AnimElem = 2, > 0) && (AnimElem = 8, < 0) && ((GameTime%20) = 0) && (NumExplod(9820) < 6) && (Random <= 499) && (Pos Y >= 0)
anim=9820
id=9820
pos=0,0
postype=p1
facing=1
vfacing=1
bindtime=1
vel=0,IfElse(Random <= 499,-0.9,-1.2)
accel=0,0
random=60,5
removetime=60
supermovetime = 99999
scale=0.1,0.1
sprpriority=3
ontop=0
shadow=0,0,0
ownpal=1
removeongethit= 0

[State 3010,Explod]
type=Explod
trigger1=(AnimElem = 2, > 10) && (AnimElem = 3, < 0) && ((GameTime%15) = 0) && (NumExplod(9830) < 6) && (Random <= 499)
anim=9830
id=9830
pos=38,-74
postype=p1
facing=1
vfacing=1
bindtime=1
vel=0,IfElse(Random <= 499,-0.9,-1.2)
accel=0,0
random=10,10
removetime=60
supermovetime = 99999
scale=0.1,0.1
sprpriority=3
ontop=0
shadow=0,0,0
ownpal=1
removeongethit= 0

[State 3010,Explod]
type=Explod
trigger1=(AnimElem = 2, > 10) && (AnimElem = 6, < 0) && (NumExplod(9890) = 0) && (Pos Y >= 0)
anim=9890
id=9890
pos=0,0
postype=p1
facing=1
vfacing=1
bindtime=-1
vel=0,0
accel=0,0
random=0,0
removetime=-2
supermovetime = 99999
scale=1,1
sprpriority=0
ontop=0
shadow=0,0,0
ownpal=1
removeongethit= 1

[State 3010,RemoveExplod]
type=RemoveExplod
trigger1=(AnimElem = 8)
id= 9800
[State 3010,RemoveExplod]
type=RemoveExplod
trigger1=(AnimElem = 7)
id= 9890

[State 3010,Helper]
type= Helper
trigger1 =time=10&&!numhelper(9936)
helpertype =Normal
name= "Ki Shouheki"
id= 9936
pos= 0,0
postype =p1
stateno =9936
keyctrl=0
ownpal=1
ignorehitpause= 1
supermovetime=9999
size.xscale=.75
size.yscale=.75

[State 3010,Helper]
type=Helper
trigger1=animelemtime(2)>=0&&animelemtime(6)<0&&!numhelper(9902)
helpertype=Normal
name="Kikou Ha Effect"
id=9902
pos=0,0
postype=p1
facing=1
stateno=9902
keyctrl=0
ownpal=1
supermovetime= 9999
size.xscale=.75
size.yscale=.75
[State 3010,Helper]
type=Helper
trigger1=animelemtime(2)=0&&!numhelper(9801)
helpertype=Normal
name="Kikou Ha Effect"
id=9801
pos=0,0
postype=p1
facing=1
stateno=9801
keyctrl=0
ownpal=1
supermovetime= 9999
size.xscale=1
size.yscale=1

[State 3010,Helper]
type=Helper
trigger1=animelem=8
helpertype=Normal
name="Kikou"
id=3015
pos=75,-90
postype=p1
facing=1
stateno=3015
keyctrl=0
ownpal=1
supermovetime= 9999
size.xscale=.65
size.yscale=.65

[State 3010,ChangeState]
type=ChangeState
trigger1=(!AnimTime)
value=0
ctrl=1
;---------------------------------------------------------------------------
;Magyo Satsuriku: Attempt
[Statedef 3020]
type= S
movetype=A
physics=N
anim=3020
velset=0,0
ctrl=0
juggle=0
facep2=1
sprpriority=2

[State 0, VarSet]
type = VarSet
trigger1=!time
var(7)=Ifelse(enemynear,Movetype=H,1,0)
ignorehitpause =1

[State 1000, Explod]
type = Explod
trigger1=!time
anim = 2224
ID = 2224
pos = -30,20
postype = p1
facing = 1
vfacing = 1
bindtime = 1
scale = 1,1
sprpriority = 0
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999
[State 0, NotHitBy]
type = NotHitBy
trigger1 =animelemtime(4)<=1
value = SCA
ignorehitpause =1
[State 0, SuperPause]
type=SuperPause
trigger1=!time
time=60
movetime =60
anim=-1
sound=S3100,0
darken=0
poweradd=-1000
unhittable=1
[State 0, Helper]
type = Helper
trigger1 =!time
helpertype = normal ;player
name = "Super Fx"
ID = 2061
stateno = 2061
pos = 15,-100
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 48
[State 0, Helper]
type = Helper
trigger1 =time=0
helpertype = normal ;player
name = "portrait"
ID = 6033
stateno = 6033
postype = back
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 99999
size.xscale =.5
size.yscale =.5
[State 3000, Black BG]
type = Explod
trigger1 = Time = 0
removetime = -1
id = 6035
anim = 6035
pos = 0,0
postype = Left
scale = 1,1
sprpriority = -99999
facing = 1
vfacing = 1
ownpal = 1
bindtime = -1
ontop = 0
ownpal = 1
supermove = 1
pausemove = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 60
pausemovetime =  60
[State 6034, HyperBG]
type=helper
trigger1 = AnimElem = 4
helpertype=normal
stateno=6031
ID=6034
name="HyperBG"
postype=Back
supermovetime=99999
pausemovetime=99999
ownpal=1
ignorehitpause=1
size.xscale=.6
size.yscale=.6
[State 0,LV1]
type=afterimage
trigger1=Time=5
time = 999
timegap = 1
framegap = 10
length = 30
paladd = 0, 0, 0
palmul = 0.75, 0.75, 0.75
palcontrast = 128, 128, 128
palpostbright = 0, 0, 0
trans = add

[State 3020,PlaySnd]
type= PlaySnd
trigger1=!time
value =S3000,7
channel=0
[State 3020,PlaySnd]
type= PlaySnd
trigger1=!time
value =S3000,7
channel=1
[State 3020,PlaySnd]
type=PlaySnd
trigger1=(AnimElem = 2)
value=S0,24
channel=2
[State 3020,PlaySnd]
type=PlaySnd
trigger1=(AnimElem = 4)
value=S1,3
channel=3
[State 3020,PlaySnd]
type=PlaySnd
trigger1=(AnimElem = 4)
value=S1,21
channel=4
[State 3020,PlaySnd]
type=PlaySnd
trigger1=(!Time)
value=S1,24
channel=5
[State 3000,Width]
type=Width
trigger1=animelemtime(4)=0
player=40,0
[State 3020,VelSet]
type=VelSet
trigger1=Animelem=4
x=16
[State 3020,Explod]
type=Explod
trigger1 =(AnimElem = 4)
anim=9810
id=9810
pos=-10,Ceil(Pos Y * (-1))
postype=p1
facing=1
vfacing=1
bindtime=1
vel=0,0
accel=0,0
random=0,0
removetime=-2
supermove=0
supermovetime= 0
pausemovetime= 0
scale=1,1
sprpriority=3
ontop=0
shadow=0,0,0
ownpal=1
removeongethit= 1

[State 3020,Explod]
type=Explod
trigger1=(AnimElem = 4)
anim=9870
id=9870
pos=0,-50
postype=p1
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
sprpriority=5
ontop=0
shadow=0,0,0
ownpal=1
removeongethit= 0

[State 3020,HitDef]
type=HitDef
trigger1=Animelem=4
attr=S, HT
hitflag=MAF
guardflag=M
priority=4, Miss
damage =0,75
pausetime=1
guard.pausetime= 12,12
sparkno=-1
guard.sparkno= -1
hitsound=S1,25
sparkno=S8020+random%8
guard.sparkno= S7105
sparkxy=-10,-120
guardsound=S2,7
p2facing=1
p1stateno=3021
p2stateno=3022
forcestand=1
fall=1
id=3020
getpower=0
givepower=0
numhits=0

[State 3020,ChangeState]
type=ChangeState
trigger1=animelem=5
trigger2=moveguarded
value=1210
;---------------------------------------------------------------------------
;Magyo Satsuriku: Success
[Statedef 3021]
type= S
movetype=A
physics=N
anim=3021
velset=0,0
ctrl=0
sprpriority=-1

[State 0, PosSet]
type = PosSet
trigger1 =!time
y = 0
ignorehitpause =1

[State 3021,ChangeAnim]
type=ChangeAnim
trigger1=(Time > 100)
trigger2=(Target, BackEdgeBodyDist <= 25)&&(Time > 50)
value=3021
elem=4
persistent=0

[State 3021,ChangeAnim]
type=ChangeAnim
triggerall =(NumTarget > 0) && (Target, BackEdgeBodyDist > 25)
trigger1 =(Target, Alive = 0)
value=3020
elem=5
persistent=0
[State 0, Width]
type = Width
trigger1 =animelemtime(2)<0
edge =20,0
ignorehitpause =1
[State 3021,NotHitBy]
type=NotHitBy
trigger1=1
value=SCA
ignorehitpause= 1
[State 3021,PlayerPush]
type=PlayerPush
trigger1=1
value=0
ignorehitpause= 1
[State 3021,SprPriority]
type=SprPriority
trigger1=(AnimElem = 3, > 0)
value=2

[State 3021,TargetBind]
type=TargetBind
trigger1=(AnimElem = 1)
time=-1
id=3020
pos=1,-56
[State 3021,TargetBind]
type=TargetBind
trigger1=(AnimElem = 2)
time=-1
id=3020
pos=26,-65
[State 3021,TargetBind]
type=TargetBind
trigger1=(AnimElem = 3)
time=-1
id=3020
pos=38,-79
[State 3021,TargetBind]
type=TargetBind
trigger1=(AnimElem = 3, = 4)
time=-1
id=3020
pos=57,-79
[State 3021,TargetBind]
type=TargetBind
trigger1=(AnimElem = 4)
time=1
id=3020
pos=90,-79
[State 0, Width]
type = Width
trigger1=(AnimElem = 4)
edge = 110,0
player = 90,0
ignorehitpause =1
[State 3021,VelSet]
type=VelSet
trigger1=(AnimElem = 1, > 0) && (AnimElem = 2, < 0)
x=12

[State 3021,VelSet]
type=VelSet
trigger1=(AnimElem = 3, > 0)
x=0

[State 3021,PlaySnd]
type= PlaySnd
trigger1=(AnimElem = 4)
value =S1,0
channel=7
[State 3021,PlaySnd]
type=PlaySnd
trigger1=(AnimElem = 4)
value=S1,5
channel=8
[State 3021,PlaySnd]
type= PlaySnd
trigger1=(AnimElem = 1)
value =S1,16
channel=0
channel=9
[State 3021,PlaySnd]
type= PlaySnd
trigger1=(AnimElem = 2)
value =S1,32
channel=10
[State 3021,PlaySnd]
type=PlaySnd
trigger1=(AnimElem = 4)
value=S2,6
channel=11
[State 3021,Pause]
type=Pause
trigger1=(AnimElem = 4, > 0) && ((GameTime%3) = 0)
time=1
movetime=0

[State 3021,PlaySnd]
type=PlaySnd
trigger1=(AnimElem = 4)
value=S1,5
channel=12
[State 3021,PlaySnd]
type=PlaySnd
trigger1=(AnimElem = 1)
value=S22,1
channel=13
[State 3021,Explod]
type=Explod
trigger1=(AnimElem = 4)
anim=9301;9320
id=9320
pos=75,-59
postype=p1
facing=1
bindtime=1
vel=0,-0.5
random=10,10
removetime=-2
scale=1.6,1.6
sprpriority=3
shadow=0,0,0
ownpal=1
removeongethit= 0
persistent=0
ignorehitpause= 1
[State 3021,Explod]
type=Explod
trigger1=(AnimElem = 4)
anim=23352;9320
id=23352
pos=110,20
postype=p1
facing=1
bindtime=1
random=10,10
removetime=-2
scale=1.2,1.2
sprpriority=3
shadow=0,0,0
ownpal=1
removeongethit= 0
persistent=0
ignorehitpause= 1

[State 3021,Explod]
type=Explod
trigger1=(AnimElem = 4)
anim=888
id=888
pos=50,-59
postype=p1
facing=1
bindtime=1
vel=0,-0.5
random=10,10
removetime=-2
scale=1.6,1.6
sprpriority=4
shadow=0,0,0
ownpal=1
persistent=0
ignorehitpause= 1

[State 3021,Explod]
type=Explod
trigger1=(AnimElem = 4)
anim=9320
id=9320
pos=75,-79
postype=p1
facing=1
bindtime=1
vel=0,-0.5
random=10,10
removetime=-2
scale=1,1
sprpriority=3
shadow=0,0,0
ownpal=1
persistent=0
ignorehitpause= 1

[State 3021,Explod]
type=Explod
trigger1=(AnimElem = 1, > 0) && (AnimElem = 2, < 0) && ((GameTime%3) = 0) && (NumExplod(9830) < 8) && (Random <= 499)
anim=9830
id=9830
pos=1,-56
postype=p1
facing=1
vfacing=1
bindtime=1
vel=-0.6,1
accel=0,0
random=15,15
removetime=60
supermove=0
supermovetime= 0
pausemovetime= 0
scale=0.15,0.15
sprpriority=3
ontop=0
shadow=0,0,0
ownpal=1
removeongethit= 0

[State 3021,Explod]
type=Explod
trigger1 =(AnimElem = 4)
anim=9840
id=9840
pos=75,-79
postype=p1
facing=1
vfacing=1
bindtime=-1
vel=0,0
accel=0,0
random=0,0
removetime=-2
supermove=0
supermovetime= 0
pausemovetime= 0
scale=1.5,1.5
sprpriority=3
ontop=1
shadow=0,0,0
ownpal=1
removeongethit= 0
persistent=0
ignorehitpause= 1

[State 3021,Explod]
type=Explod
trigger1=(AnimElem = 1, = 0) || (AnimElem = 1, = 15)
anim=9900
id=9900
pos=-20,-80
postype=p1
facing=1
vfacing=1
bindtime=-1
vel=0,0
accel=0,0
random=0,0
removetime=-2
supermove=0
supermovetime= 0
pausemovetime= 0
scale=1,1
sprpriority=3
ontop=1
shadow=0,0,0
ownpal=1
removeongethit= 0
[State 3021,Helper]
type=Helper
trigger1=!time
helpertype=Player
name="Hold"
id=3025
pos=0,0
postype=p1
stateno=3025
keyctrl=0
ownpal=1
persistent=0
size.xscale =.25
size.yscale =.25

[State 3021,RemoveExplod]
type=RemoveExplod
trigger1=(AnimElem = 4)
id=9610
[State 3021,RemoveExplod]
type=RemoveExplod
trigger1=(AnimElem = 4)
id=9810
[State 0, HitAdd]
type = HitAdd
trigger1=(AnimElem = 4)
value=1
ignorehitpause=1
persistent=0
[State 3021,TargetLifeAdd]
type=TargetLifeAdd
trigger1=(AnimElem = 4)
value =Ifelse(var(7),-150,-250)
absolute=1
persistent=0
[State 3021,TargetState]
type=TargetState
trigger1=(AnimElem = 4)
value=3023

[State 3021,ChangeState]
type=ChangeState
trigger1=(!AnimTime)
value=3028
;---------------------------------------------------------------------------
[Statedef 3028]
type= S
movetype = I
physics = S
velset = 0, 0
anim = 3028
ctrl = 0
sprpriority = 1
facep2=1

[State 0,VelSet]
type= VelSet
trigger1 =animelem=2
x=-12
y=-3
[State 0, VelAdd]
type = VelAdd
trigger1=time>12
y = .45

[State 0,PlaySnd]
type=PlaySnd
trigger1=(AnimElem = 2)
value=S1,8

[State 0,ChangeState]
type=ChangeState
trigger1 = Pos Y >= 0 && Vel Y > 0
value=52
;---------------------------------------------------------------------------
;Ki Shield Tackle
[Statedef 3050]
type= S
movetype=A
physics=S
anim=3050
velset=0,0
ctrl=0
juggle=0
facep2=1
sprpriority=1

[State 0, VarSet]
type = VarSet
trigger1 =!time
var(4)=0
ignorehitpause =1
[State 3000,Width]
type=Width
trigger1=animelemtime(2)=0
value=40,0
[State 3050, Explod]
type = Explod
trigger1=!time
anim = 2224
ID = 2224
pos = -30,20
postype = p1
facing = 1
vfacing = 1
bindtime = 1
scale = 1,1
sprpriority = 0
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999
[State 1000, Explod]
type = Explod
trigger1=!time
anim = 2224
ID = 2224
pos = -30,20
postype = p1
facing = 1
vfacing = 1
bindtime = 1
scale = 1,1
sprpriority = 0
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999
[State 0, NotHitBy]
type = NotHitBy
trigger1 =animelemtime(2)<=1
value = SCA
ignorehitpause =1
[State 0, SuperPause]
type=SuperPause
trigger1=!time
time=60
movetime =60
anim=-1
sound=S3100,0
darken=0
poweradd=-1000
unhittable=1
[State 0, Helper]
type = Helper
trigger1 =!time
helpertype = normal ;player
name = "Super Fx"
ID = 2061
stateno = 2061
pos = 15,-60
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 48
[State 0, Helper]
type = Helper
trigger1 =time=0
helpertype = normal ;player
name = "portrait"
ID = 6033
stateno = 6033
postype = back
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 99999
size.xscale =.5
size.yscale =.5
[State 3000, Black BG]
type = Explod
trigger1 = Time = 0
removetime = -1
id = 6035
anim = 6035
pos = 0,0
postype = Left
scale = 1,1
sprpriority = -99999
facing = 1
vfacing = 1
ownpal = 1
bindtime = -1
ontop = 0
ownpal = 1
supermove = 1
pausemove = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 60
pausemovetime =  60
[State 6034, HyperBG]
type=helper
trigger1 = AnimElem = 2
helpertype=normal
stateno=6031
ID=6034
name="HyperBG"
postype=Back
supermovetime=99999
pausemovetime=99999
ownpal=1
ignorehitpause=1
size.xscale=.6
size.yscale=.6
[State 0,LV1]
type=afterimage
trigger1=Time=5
time = 999
timegap = 1
framegap = 10
length = 30
paladd = 0, 0, 0
palmul = 0.75, 0.75, 0.75
palcontrast = 128, 128, 128
palpostbright = 0, 0, 0
trans = add

[State 0, VarAdd]
type = VarAdd
trigger1 =movecontact
var(4)=1
[State 3050,VelSet]
type=VelSet
trigger1=animelemtime(2)>=0&&animelemtime(19)<0&&var(4)<5
x=16
[State 0, dust]
type= makedust
trigger1 =animelemtime(16)>=0&&time%2
pos=30,0
[State 0, EnvShake]
type = EnvShake
trigger1=animelemtime(2)<=0
time=3
ampl=5
[State 0, VelMul]
type = VelMul
trigger1 =animelemtime(16)>=0
trigger2=var(4)=5
x = .6
[State 3050,VelSet]
type=VelSet
trigger1=var(4)>=6
x=0
ignorehitpause=1
[State 3050,PlaySnd]
type=PlaySnd
trigger1=(AnimElem = 2)
value=S1,21
channel=2
[State 3050,PlaySnd]
type=PlaySnd
trigger1=(AnimElem = 2)
value=S1,34
channel=5
[State 3050,PlaySnd]
type=PlaySnd
trigger1=!time
value=S3000,9
channel=1
[State 3050,PlaySnd]
type=PlaySnd
trigger1=!time
value=S3000,9
channel=0
[State 3050,Explod]
type=Explod
trigger1 =(AnimElem = 2)
anim=9810
id=9810
pos=-10,0
postype=p1
facing=1
vfacing=1
bindtime=1
vel=0,0
accel=0,0
random=0,0
removetime=-2
supermove=0
supermovetime= 0
pausemovetime= 0
scale=1,1
sprpriority=3
ontop=0
shadow=0,0,0
ownpal=1
removeongethit= 1

[State 3050,Helper]
type= Helper
trigger1 =time=50&&!numhelper(9930)
helpertype =Normal
name= "Ki Shouheki"
id= 9935
pos= 0,0
postype =p1
stateno =9935
keyctrl=0
ownpal=1
ignorehitpause= 1
supermovetime=50
size.xscale=.7
size.yscale=.7

[State 3050,HitDef]
type=HitDef
trigger1=var(4)<6
attr=S,HA
hitflag=MAF
guardflag=M
animtype=Hard
air.animtype= Back
priority=4, Hit
damage =41,15
pausetime=6,8
guard.pausetime= 6,6
sparkno=-1
guard.sparkno= -1
sparkxy=10,-90
hitsound=S1,44
guardsound=S2,7
ground.type=High
ground.slidetime=10
ground.hittime=22
air.hittime=22
yaccel=0.35
ground.velocity= -14,-5
guard.velocity= -14
air.velocity= -14,-4
airguard.velocity= -14,-5
ground.cornerpush.veloff = 0
fall=1
fall.recover=0
air.recover=0
id=3050
getpower=0
givepower=25,25
envshake.time=14
envshake.ampl=6

[State 0, p2state]
type=targetstate
trigger1= var(4)=6&&movehit && numtarget(3050)
trigger1= target(3050),Movetype=H
ID=3050
value=1125
ignorehitpause=1
persistent=0

[State 3050, Sparks]
type = explod
trigger1 = movecontact = 1 && numtarget
trigger1 = (target, movetype = H) && !(target, time)
anim = ifelse(moveguarded, 7105, 8020 + (random % 8))
ID = 8020
sprpriority = 5
postype = p2
pos = (target, const(size.ground.front) -10), (target, const(size.mid.pos.y))
removetime = -2
ownpal = 0
facing = -1
ignorehitpause = 1
pausemovetime = 100
supermovetime = 100

[State 3050,ChangeState]
type=ChangeState
trigger1=(!AnimTime)
value=1210
ctrl=0
;---------------------------------------------------------------------------
;Ki Ki Shield Assault
[Statedef 3055]
type= A
movetype=A
physics=N
anim=3055
velset=0,0
ctrl=0
juggle=0
facep2=1
sprpriority=1

[State 0, VarSet]
type = VarSet
trigger1 =!time
var(4)=0
ignorehitpause =1
[State 3000,Width]
type=Width
trigger1=animelemtime(2)=0
value=40,0

[State 0, NotHitBy]
type = NotHitBy
trigger1 =animelemtime(2)<=1
value = SCA
ignorehitpause =1
[State 0, SuperPause]
type=SuperPause
trigger1=!time
time=60
movetime =60
anim=-1
sound=S3100,0
darken=0
poweradd=-1000
unhittable=1
[State 0, Helper]
type = Helper
trigger1 =!time
helpertype = normal ;player
name = "Super Fx"
ID = 2061
stateno = 2061
pos = 15,-60
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 48
[State 0, Helper]
type = Helper
trigger1 =time=0
helpertype = normal ;player
name = "portrait"
ID = 6033
stateno = 6033
postype = back
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 99999
size.xscale =.5
size.yscale =.5
[State 3000, Black BG]
type = Explod
trigger1 = Time = 0
removetime = -1
id = 6035
anim = 6035
pos = 0,0
postype = Left
scale = 1,1
sprpriority = -99999
facing = 1
vfacing = 1
ownpal = 1
bindtime = -1
ontop = 0
ownpal = 1
supermove = 1
pausemove = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 60
pausemovetime =  60
[State 6034, HyperBG]
type=helper
trigger1 = AnimElem = 2
helpertype=normal
stateno=6031
ID=6034
name="HyperBG"
postype=Back
supermovetime=99999
pausemovetime=99999
ownpal=1
ignorehitpause=1
size.xscale=.6
size.yscale=.6
[State 0,LV1]
type=afterimage
trigger1=Time=5
time = 999
timegap = 1
framegap = 10
length = 30
paladd = 0, 0, 0
palmul = 0.75, 0.75, 0.75
palcontrast = 128, 128, 128
palpostbright = 0, 0, 0
trans = add
[State 0, AngleDraw]
type = AngleDraw
trigger1 =animelemtime(2)>=0
value =-20
ignorehitpause =1

[State 0, VarAdd]
type = VarAdd
trigger1 =movecontact
var(4)=1
[State 3055,VelSet]
type=VelSet
trigger1=animelemtime(2)>=0
x=12
y=5

[State 0, EnvShake]
type = EnvShake
trigger1=animelemtime(2)<=0
time=3
ampl=5
[State 0, VelMul]
type = VelMul
trigger1 =animelemtime(16)>=0
trigger2=var(4)=5
x = .6
[State 3055,VelSet]
type=VelSet
trigger1=var(4)>=6
x=0
ignorehitpause=1
[State 3055,PlaySnd]
type=PlaySnd
trigger1=(AnimElem = 2)
value=S1,21
channel=2
[State 3055,PlaySnd]
type=PlaySnd
trigger1=(AnimElem = 2)
value=S1,34
channel=5
[State 3055,PlaySnd]
type=PlaySnd
trigger1=!time
value=S3000,6
channel=1
[State 3055,PlaySnd]
type=PlaySnd
trigger1=!time
value=S3000,6
channel=0

[State 3055,Helper]
type= Helper
trigger1 =time=50&&!numhelper(9930)
helpertype =Normal
name= "Ki Shouheki"
id= 9935
pos= 0,0
postype =p1
stateno =9935
keyctrl=0
ownpal=1
ignorehitpause= 1
supermovetime=20
size.xscale=.7
size.yscale=.7

[State 3055,HitDef]
type=HitDef
trigger1=var(4)<6
attr=A,HA
hitflag=MAFD
guardflag=M
animtype=Hard
air.animtype= Back
priority=4, Hit
damage =41,15
pausetime=6,8
guard.pausetime= 6,6
sparkno=-1
guard.sparkno= -1
sparkxy=10,-90
hitsound=S1,44
guardsound=S2,7
ground.type=High
ground.slidetime=10
ground.hittime=22
air.hittime=22
yaccel=0.35
ground.velocity= -14,-1
guard.velocity= -14
air.velocity= -14,-1
airguard.velocity= -14,-5
ground.cornerpush.veloff = 0
fall=1
fall.recover=0
air.recover=0
id=3055
getpower=0
givepower=25,25
envshake.time=14
envshake.ampl=6

[State 0, p2state]
type=targetstate
trigger1= var(4)=6&&movehit && numtarget(3055)
trigger1= target(3055),Movetype=H
ID=3055
value=4310
ignorehitpause=1
persistent=0

[State 3055, Sparks]
type = explod
trigger1 = movecontact = 1 && numtarget
trigger1 = (target, movetype = H) && !(target, time)
anim = ifelse(moveguarded, 7105, 8020 + (random % 8))
ID = 8020
sprpriority = 5
postype = p2
pos = (target, const(size.ground.front) -10), (target, const(size.mid.pos.y))
removetime = -2
ownpal = 0
facing = -1
ignorehitpause = 1
pausemovetime = 100
supermovetime = 100

[State 3055,ChangeState]
type=ChangeState
trigger1 = Pos Y >= 0 && Vel Y > 0
value=1210
[State 3055,ChangeState]
type=ChangeState
trigger1=(!AnimTime)
value=50
;========================================================================
[Statedef 4022,shinkidama]
type    = S
movetype= A
physics = S
velset = 0,0
juggle = 4
ctrl = 0
poweradd= -2000
anim = 4022 ; animacion char

[State 830, carga];
type = PlaySnd
trigger1 = time = 0
;trigger1 = AnimElem = 3
value = 1,24
volume = 255
channel = 2

[State 830, lanzamiento];
type = PlaySnd
trigger1 = AnimElem = 2
value = 22,ifelse(Random < 100,1,ifelse(Random < 110,4,ifelse(Random < 120,0,1)))
volume = 255
channel = 3

[State 830, lanzamiento];   ;carga bola
type = PlaySnd
trigger1 = time =1
value = 22,ifelse(Random < 100,3,ifelse(Random < 110,2,ifelse(Random < 120,3,2)))
volume = 255
channel = 3

[State 2700]
type = superpause
trigger1 = time = 0
time = 50
movetime = 50
anim = 198
darken = 1

[State 2501,PalFX]
type=PalFX
trigger1=(!Time)
time=40
add=0,0,0 ;100,100,100
mul=256,256,256
sinadd=-100,-100,-100, 40
invertall=0
color=256


[State 4000,BGPalFX]
type=BGPalFX
trigger1=ProjContact = 1 ;(MoveHit)
time=5
add=75,75,75
mul=256,256,256
sinadd=80,80,80,4
invertall=0
color=256
persistent=0
ignorehitpause= 1


[State 900, Turn]
type = Turn
Trigger1 = P2Dist X < 0



[State 4000, acumulacion];efecto de acumulacion energia.
type = Explod
trigger1 = time =2
anim = 777
ID = 777
postype = p1
pos = -40, -100
sprpriority = 3 ;-1
supermovetime = 50 ; tiempo q la animacion no se congelara durante una superpausa
removetime = -2 ;30
bindtime = -1
ownpal = 1
shadow = 0,0,0 ; 0-255
removeongethit = 1
scale = 1,1
ontop = 0
ignorehitpause = 1
persistent = 1

[State 4000, acumulacion];efecto de acumulacion energia.
type = Explod
trigger1 = time =4
anim = 777
ID = 777
postype = p1
pos = -40, -100
sprpriority = 3 ;-1
supermovetime = 50 ; tiempo q la animacion no se congelara durante una superpausa
removetime = -2 ;30
bindtime = -1
ownpal = 1
shadow = 0,0,0 ; 0-255
removeongethit = 1
scale = 0.6,0.6
ontop = 0
ignorehitpause = 1
persistent = 1

[State 4000, acumulacion];efecto de acumulacion energia.
type = Explod
trigger1 = time =5
anim = 9901
ID = 9902
postype = p1
pos = -25, -120
sprpriority = 3 ;-1
supermovetime = 50 ; tiempo q la animacion no se congelara durante una superpausa
removetime = -2 ;30
bindtime = -1
ownpal = 1
shadow = 0,0,0 ; 0-255
removeongethit = 1
scale = 0.38,0.38
ontop = 0
ignorehitpause = 1
persistent = 1

[State 400, efecto];efecto energia acumulada  1  mano
type = Explod
trigger1 = animelem = 1
anim = 9903
ID = 8060
postype = p1
pos = -25, -120
sprpriority = 3 ;-1
supermovetime = 50 ; tiempo q la animacion no se congelara durante una superpausa
removetime = 50 ;30
bindtime = -1
ownpal = 1
shadow = 0,0,0 ; 0-255
removeongethit = 1
scale = .2,.2
ontop = 0
ignorehitpause =1
persistent =1

[State 400, efecto];efecto energia acumulada  2  mano
type = Explod
trigger1 = animelem = 2
anim = 9903
ID = 8060
postype = p1
pos = -30, -60
sprpriority = 3 ;-1
supermovetime = 50 ; tiempo q la animacion no se congelara durante una superpausa
removetime = 9 ;30
bindtime = -1
ownpal = 1
shadow = 0,0,0 ; 0-255
removeongethit = 1
scale = .3,.3
ontop = 0
ignorehitpause =1
persistent =1

[State 400, efecto];efecto energia acumulada  3  mano
type = Explod
trigger1 = animelem = 3
anim = 9903
ID = 8060
postype = p1
pos = 10, -75
sprpriority = 1 ;-1
supermovetime = 50 ; tiempo q la animacion no se congelara durante una superpausa
removetime = 5 ;30
bindtime = -1
ownpal = 1
shadow = 0,0,0 ; 0-255
removeongethit = 1
scale = .30,.30
ontop = 0
ignorehitpause =1
persistent =1

[State 400, efecto];efecto energia acumulada  4  mano
type = Explod
trigger1 = animelem = 4
anim = 9903
ID = 8060
postype = p1
pos = 48, -89
sprpriority = -3 ;-1
supermovetime = 50 ; tiempo q la animacion no se congelara durante una superpausa
removetime = 5 ;30
bindtime = -1
ownpal = 1
shadow = 0,0,0 ; 0-255
removeongethit = 1
scale = .25,.25
ontop = 0
ignorehitpause =1
persistent =1

[State 4000 , lanzado]
type = Projectile
trigger1 = AnimElem = 5 ; imagem que lançara o fire ball
projanim = 778 ; numero do fire ball
projhitanim =9330 ; quando acerta o p2 ,efeito
projhittime = 5
projshadow = 0,0,0
projpriority = 1
projremovetime = 120 ; tempo que o fire ball ficara ativo
;projid = 9651
velocity =  IfElse(Random <= 499,2,10) ; velocidade do fire ball  4,0
accel = IfElse(Random <= 499,1,2)   ;.1
offset = 50,-80 ; a posiçao onde o fire ball vai sair
attr = S, SP ; indica que é um SP , special Atack
damage   = 250,200 ; damage que tira , e damage defendendo
animtype = low
guardflag = MA
hitflag = H;MAFPDP
pausetime = 1,3
hitsound   = S1,5 ; som quando acerta o fire ball
guardsound = S1,6
sparkno=S8020+random%8
ground.type=High
air.type=Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -50,-8
air.animtype = hard
air.velocity = -1,-1
air.juggle = 2
projscale = 1,1
p2stateno = 2041
palfx.time=20
palfx.mul=256,256,256
palfx.add=150,150,100  ;200,50,10
palfx.sinadd= 175,25,5,4
envshake.time=12
envshake.freq=120
envshake.ampl=-5
persistent=0


[State 0, VelSet]
type = VelSet
trigger1 = animelem = 6
x = -3

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 60
time = 100
freq = 60
ampl = 5

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = S2050,2
volume = 255
=


[State 4000: StopSnd]
type = nULL;StopSnd
trigger1 = (!AnimTime)
channel = 1


[State 4000,ChangeState]
type=ChangeState
trigger1=(!AnimTime)
value=IfElse(Pos Y >= 0,0,8021)
ctrl=1

[State 4000, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
;Omega Bakuenha
[Statedef 3100]
type= S
movetype=A
physics=N
anim=3100
velset=0,0
ctrl=0
juggle=0
facep2=1
sprpriority=2

[State 1000, Explod]
type = Explod
trigger1=!time
anim = 2224
ID = 2224
pos = -30,20
postype = p1
facing = 1
vfacing = 1
bindtime = 1
scale = 1,1
sprpriority = 0
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999

[State 0, NotHitBy]
type = NotHitBy
trigger1 =animelemtime(3)<=1
value = SCA
ignorehitpause =1
[State 0, SuperPause]
type=SuperPause
trigger1=!time
time=60
movetime =60
anim=-1
sound=S3100,0
darken=0
poweradd=-1000
unhittable=1
[State 0, Helper]
type = Helper
trigger1=!time
helpertype = normal ;player
name = "Super Fx"
ID = 2061
stateno = 2061
pos = -55,-115
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 48
[State 0, Helper]
type = Helper
trigger1 =time=0
helpertype = normal ;player
name = "portrait"
ID = 6033
stateno = 6033
postype = back
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 99999
size.xscale =.5
size.yscale =.5
[State 3000, Black BG]
type = Explod
trigger1 = Time = 0
removetime = -1
id = 6035
anim = 6035
pos = 0,0
postype = Left
scale = 1,1
sprpriority = -99999
facing = 1
vfacing = 1
ownpal = 1
bindtime = -1
ontop = 0
ownpal = 1
supermove = 1
pausemove = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 60
pausemovetime =  60
[State 6034, HyperBG]
type=helper
trigger1 = AnimElem = 3
helpertype=normal
stateno=6031
ID=6034
name="HyperBG"
postype=Back
supermovetime=99999
pausemovetime=99999
ownpal=1
ignorehitpause=1
size.xscale=.6
size.yscale=.6
[State 0,LV1]
type=afterimage
trigger1=Time=5
time=999
TimeGap =2
FrameGap=4
length=14
PalBright=1,1,1
PalContrast=150,150,150
PalAdd=0,0,0
PalMul=.5,.5,.5
trans=add

[State 3100,Width]
type=Width
trigger1=(AnimElem = 2, > 0) && (AnimElem = 4, < 0)
value=50,0

[State 3100,PlaySnd]
type=PlaySnd
trigger1=!time
value=S22,2
channel=4
[State 3100,PlaySnd]
type=PlaySnd
trigger1=time=20
value=S3000,8
channel=0
[State 3100,PlaySnd]
type=PlaySnd
trigger1=time=20
value=S3000,8
channel=1
[State 3100,PlaySnd]
type=PlaySnd
trigger1=time=20
value=S3000,8
channel=9
[State 3100,PlaySnd]
type=PlaySnd
trigger1=time=20
value=S3000,8
channel=14
[State 3100,PlaySnd]
type=PlaySnd
trigger1=(AnimElem = 2)
value=S1,32
channel=2
[State 3100,PlaySnd]
type=PlaySnd
trigger1=(AnimElem = 3)
value=S1,34
channel=3
[State 0, Helper]
type = Helper
trigger1=(AnimElem = 1, > 0) && (AnimElem = 3, < 0) && ((GameTime%20) = 0) &&!NumHelper(9700)
helpertype = normal ;player
name ="electricity"
ID =9700
stateno =9700
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 9999
size.xscale =.4
size.yscale =.4

[State 1000,Helper]
type=Helper
trigger1=!numhelper(9901)&&animelemtime(2)<0
helpertype=Normal
name="KikouFX1"
id=9901
pos=0,0
postype=p1
facing=1
stateno=9901
supermovetime = 9999
keyctrl=0
ownpal=1
size.xscale=.5
size.yscale=.5

[State 0, Helper]
type = Helper
trigger1=!time &&!NumHelper(9800)
helpertype = normal ;player
name ="Goucharge"
ID =9800
stateno =9800
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 9999
size.xscale =1
size.yscale =1

[State 3100,Helper]
type=Helper
trigger1 =(AnimElem = 3, = 0)
helpertype=Normal
name="Bakuenha"
id=9631
pos=110
postype=p1
facing=1
stateno=9631
keyctrl=0
ownpal=1
supermovetime= 0
pausemovetime= 0
size.xscale=2;1;0.75
size.yscale=2;0.75

[State 3100,Helper]
type=Helper
trigger1 =(AnimElem = 3, = 10)
helpertype=Normal
name="Bakuenha"
id=9631
pos=190
postype=p1
facing=1
stateno=9631
keyctrl=0
ownpal=1
supermovetime= 0
pausemovetime= 0
size.xscale=1.5;0.75
size.yscale=1.5;0.75

[State 3100,Helper]
type=Helper
trigger1 =(AnimElem = 3, = 20)
helpertype=Normal
name="Bakuenha"
id=9631
pos=260
postype=p1
facing=1
stateno=9631
keyctrl=0
ownpal=1
supermovetime= 0
pausemovetime= 0
size.xscale=1.3;0.75
size.yscale=1.3;0.75

[State 3100,ChangeState]
type=ChangeState
trigger1=(!AnimTime)
value=0
ctrl=1
;---------------------------------------------------------------------------
;Meteor Crush
[Statedef 3150]
type= S
movetype=A
physics=N
anim=3150
velset=0,0
ctrl=0
juggle=0
facep2=1
sprpriority=1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1=movecontact&&animelemtime(2)>=0&&animelemtime(7)<0
value=3150
elem = 7
ignorehitpause =1
persistent =0

[State 3150, Explod]
type = Explod
trigger1=!time
anim = 2224
ID = 2224
pos = -30,20
postype = p1
facing = 1
vfacing = 1
bindtime = 1
scale = 1,1
sprpriority = 0
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999

[State 0, NotHitBy]
type = NotHitBy
trigger1 =animelemtime(3)<=1
value = SCA
ignorehitpause =1
[State 0, SuperPause]
type=SuperPause
trigger1=!time
time=60
movetime =60
anim=-1
sound=S3100,1
darken=0
poweradd=-2000
unhittable=1
[State 0, Helper]
type = Helper
trigger1 =!time
helpertype = normal ;player
name = "Super Fx"
ID = 2062
stateno = 2062
pos = 0,-75
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 48
[State 0, Helper]
type = Helper
trigger1 =time=0
helpertype = normal ;player
name = "portrait"
ID = 6036
stateno = 6036
postype = back
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 99999
size.xscale =.5
size.yscale =.5
[State 3000, Black BG]
type = Explod
trigger1 = Time = 0
removetime = -1
id = 6035
anim = 6035
pos = 0,0
postype = Left
scale = 1,1
sprpriority = -99999
facing = 1
vfacing = 1
ownpal = 1
bindtime = -1
ontop = 0
ownpal = 1
supermove = 1
pausemove = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 60
pausemovetime =  60
[State 6034, HyperBG]
type=helper
trigger1 = AnimElem = 3
helpertype=normal
stateno=6031
ID=6034
name="HyperBG"
postype=Back
supermovetime=99999
pausemovetime=99999
ownpal=1
ignorehitpause=1
size.xscale=.6
size.yscale=.6
[State 0, LV-2]
type = AfterImage
trigger1 = Animelem = 1
time = 9999
timegap = 1
framegap = 10
length = 30
paladd = 0, 0, 0
palmul = 0.75, 0.75, 0.75
palcontrast = 32, 32, 160
palpostbright = 0, 0, 0
trans = add

[State 3010,PlaySnd]
type=PlaySnd
trigger1=!time
value=S3000,4
channel=0
[State 3010,PlaySnd]
type=PlaySnd
trigger1=!time
value=S3000,4
channel=1
[State 3010,PlaySnd]
type=PlaySnd
trigger1=!time
value=S3000,4
channel=9
[State 3010,PlaySnd]
type=PlaySnd
trigger1=animelem=2
value=S1,12
channel=3

[State 3010,PlaySnd]
type=PlaySnd
trigger1=(AnimElem = 3)
value=S1,13
channel=4
[State 3010,PlaySnd]
type=PlaySnd
trigger1=(AnimElem = 2)
value=S1,12
channel=5

[State 3010,EnvShake]
type=EnvShake
trigger1=(AnimElem = 2, > 0) && (AnimElem = 3, < 0) && ((GameTime%5) = 0)
time=4
ampl=5
[State 3010,EnvShake]
type=EnvShake
trigger1=(AnimElem = 3)
time=20
ampl=6
[State 3010,Helper]
type=Helper
trigger1=(AnimElem = 1, > 0) && (AnimElem = 3, < 0) && ((GameTime%20) = 0)
helpertype=Normal
name="Rocks"
id=9500
pos=0,0
postype=p1
facing=0
stateno=Ifelse(random<=200,9500,Ifelse(random<=200,9510,Ifelse(random<=200,9520,Ifelse(random<=200,9530,9540))))
keyctrl=0
ownpal=1
supermovetime = 99999
size.xscale=(IfElse(Random <= 799,0.25,.5))
size.yscale=(IfElse(Random <= 799,0.25,.5))

[State 0, Helper]
type = Helper
trigger1=(AnimElem = 1, > 0) && (AnimElem = 3, < 0) && ((GameTime%20) = 0) &&!NumHelper(9700)
helpertype = normal ;player
name ="electricity"
ID =9700
stateno =9700
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 9999
size.xscale =.4
size.yscale =.4

[State 3010,Explod]
type=Explod
trigger1=(AnimElem = 2, > 0) && (AnimElem = 3, < 0) && ((GameTime%10) = 0) && (NumExplod(9820) < 6) && (Random <= 499) && (Pos Y >= 0)
anim=9820
id=9820
pos=0,0
postype=p1
facing=1
vfacing=1
bindtime=1
vel=0,IfElse(Random <= 499,-0.9,-1.2)
accel=0,0
random=60,5
removetime=60
supermovetime = 99999
scale=0.1,0.1
sprpriority=3
ontop=0
shadow=0,0,0
ownpal=1
removeongethit= 0

[State 3010,Explod]
type=Explod
trigger1=(AnimElem = 2, > 10) && (AnimElem = 3, < 0) && ((GameTime%10) = 0) && (NumExplod(9830) < 6) && (Random <= 499)
anim=9830
id=9830
pos=38,-74
postype=p1
facing=1
vfacing=1
bindtime=1
vel=0,IfElse(Random <= 499,-0.9,-1.2)
accel=0,0
random=10,10
removetime=60
supermovetime = 99999
scale=0.1,0.1
sprpriority=3
ontop=0
shadow=0,0,0
ownpal=1
removeongethit= 0

[State 3010,Explod]
type=Explod
trigger1=(AnimElem = 2, > 10) && (AnimElem = 3, < 0) && (NumExplod(9890) = 0) && (Pos Y >= 0)
anim=9890
id=9890
pos=0,0
postype=p1
facing=1
vfacing=1
bindtime=1
vel=0,0
accel=0,0
random=0,0
removetime=-2
supermovetime = 99999
scale=1,1
sprpriority=0
ontop=0
shadow=0,0,0
ownpal=1
removeongethit= 1

[State 3010,RemoveExplod]
type=RemoveExplod
trigger1=(AnimElem = 3)
id= 9890
[State 191,Helper]
type=Helper
trigger1 =time=1&&!numhelper(9202)
helpertype=Normal
name="Flame Effect"
id=9202
pos=0,0
postype=p1
facing=0
stateno=9202
keyctrl=0
ownpal=1
supermovetime= 999
pausemovetime= 999
size.xscale=.75
size.yscale=.75
[State 3010,Helper]
type= Helper
trigger1 =time=5&&!numhelper(9937)
helpertype =Normal
name= "KiCharge"
id= 9937
pos= 0,0
postype =p1
stateno =9937
keyctrl=0
ownpal=1
ignorehitpause= 1
supermovetime=9999
size.xscale=.5
size.yscale=.5
[State 3010,Helper]
type= Helper
trigger1 =animelem=3&&!numhelper(9938)
helpertype =Normal
name= "KiCharge"
id= 9938
pos= 0,0
postype =p1
stateno =9938
keyctrl=0
ownpal=1
ignorehitpause= 1
supermovetime=9999
size.xscale=1.5
size.yscale=1.5
[State 3150, Sparks]
type = explod
trigger1 = movecontact = 1 && numtarget
trigger1 = (target, movetype = H) && !(target, time)
anim = ifelse(moveguarded, 7105, 8020 + (random % 8))
ID = 8020
sprpriority = 5
postype = p2
pos = (target, const(size.ground.front) -10), (target, const(size.mid.pos.y))
removetime = -2
ownpal = 0
facing = -1
ignorehitpause = 1
pausemovetime = 100
supermovetime = 100

[State 0, Width]
type = Width
trigger1 =animelemtime(3)=0
value = 40,0
ignorehitpause =1
[State 0, VelSet]
type = VelSet
trigger1 =animelem=3
x = 14
[State 0, VelSet]
type = VelSet
trigger1 =animelem=5||movecontact
x = 0
ignorehitpause=1
[State 0, VelMul]
type = VelMul
trigger1 =animelemtime(3)=10
x = .8
ignorehitpause =1
[State 0, VelMul]
type = VelMul
trigger1 =animelemtime(4)=0
x = .6
ignorehitpause =1

[State 0, PlaySnd]
type = PlaySnd
trigger1 =movehit
value = S2,9
volume =16
ignorehitpause =1
persistent=0
[State 3150,HitDef]
type=HitDef
trigger1=!time
attr=S,HA
hitflag=MAFD
guardflag=M
animtype=Hard
air.animtype= Back
priority=4, Hit
damage =330,130
pausetime=12,12
guard.pausetime=12,12
sparkno=-1
guard.sparkno= -1
sparkxy=10,-90
hitsound=S2,10
guardsound=S2,8
ground.type=High
ground.slidetime=12
ground.hittime=12
air.hittime=12
yaccel=0.45
ground.velocity= -42,-5
guard.velocity= -14
air.velocity= -42,-4
airguard.velocity= -14,-5
ground.cornerpush.veloff = 0
fall=1
fall.recover=0
air.recover=0
id=3150
getpower=0
givepower=200,105
envshake.time=12
envshake.ampl=7
p2stateno=9040

[State 3150,ChangeState]
type=ChangeState
trigger1=!animtime
value=0
ctrl=1
;-----------------------------------------------------------------
[Statedef 3200]
type= S
movetype=A
physics=N
anim=3200
velset=0,0
ctrl=0
juggle=0
facep2=1
sprpriority=2

[State 0, VarSet]
type = VarSet
trigger1 =!time
var(9)=0
ignorehitpause =1

[State 1000, Explod]
type = Explod
trigger1=!time
anim = 2224
ID = 2224
pos = -30,20
postype = p1
facing = 1
vfacing = 1
bindtime = 1
scale = 1,1
sprpriority = 0
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999
[State 0, SuperPause]
type=SuperPause
trigger1=!time
time=120
movetime =120
anim=-1
sound=S3100,2
darken=0
poweradd=-3000
unhittable=1
[State 0, Helper]
type = Helper
trigger1 =!time
helpertype = normal ;player
name = "Super Fx"
ID = 2063
stateno = 2063
pos = 65,-115
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 48
[State 3000, Black BG]
type = Explod
trigger1 = Time = 0
removetime = -1
id = 6035
anim = 6035
pos = 0,0
postype = Left
scale = 1,1
sprpriority = -99999
facing = 1
vfacing = 1
ownpal = 1
bindtime = -1
ontop = 0
ownpal = 1
supermove = 1
pausemove = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 60
pausemovetime =  60
[State 6034, HyperBG]
type=helper
trigger1 =time=65
helpertype=normal
stateno=6031
ID=6034
name="HyperBG"
postype=Back
supermovetime=99999
pausemovetime=99999
ownpal=1
ignorehitpause=1
size.xscale=.6
size.yscale=.6
[State 0, LV-3]
type = AfterImage
trigger1 = time=0
time = 9999
timegap = 1
framegap = 10
length = 30
paladd = 0, 0, 0
palmul = 0.75, 0.75, 0.75
palcontrast = 160, 32, 32
palpostbright = 0, 0, 0
trans = add
[State 7500, portrait]
type=helper
trigger1 = AnimElem = 1
helpertype=normal
stateno=7510
ID=7510
name="Super Charge Portrait"
postype=p1
supermovetime=300
ownpal=1
[State 0, NotHitBy]
type = NotHitBy
trigger1=animelemtime(4)<0
trigger2=var(9)
value = SCA
ignorehitpause =1
[State 0, Width]
type = Width
trigger1=animelemtime(4)=0
value = 60,0
ignorehitpause =1

[State 3200]
type = PlaySnd
trigger1 = !time
value = s3000,5
channel=0
[State 3200]
type = PlaySnd
trigger1 = !time
value = s3000,5
channel=1
[State 3200]
type = PlaySnd
trigger1 = !time
value = s3000,5
channel=22
[State 3200]
type = PlaySnd
trigger1 = !time
value = s3000,5
channel=23
[State 3200]
type = PlaySnd
trigger1 = AnimElem = 2
value = s25, 1
channel=2
[State 3200]
type = PlaySnd
trigger1 = AnimElem = 2
value = s22, 3
channel=3
[State 3200]
type = PlaySnd
trigger1 = AnimElem = 4
value = s1, 11
channel=4

[State 0, Pause]
Type = Pause
trigger1= var(9)&&numhelper(6039)
time =180
ignorehitpause=1
persistent=0
[State 0, AllPalFX]
type = ALLPalFX
trigger1= var(9)&&!numhelper(6039)
time=10
add=4*time,4*time,4*time
ignorehitpause =1
persistent=0
[State 3200]
type = Helper
trigger1 = AnimElem = 2&&!numhelper(2055)
pos = 0,0
postype = p1
stateno = 2055
id=2055
helpertype = normal
keyctrl = 0
ownpal = 1
size.xscale = .25
size.yscale = .25
supermovetime=99999
pausemovetime=99999
ignorehitpause=1
[State 3200]
type = Helper
trigger1 = AnimElemtime(2)>=0&&var(9)&&!numhelper(6039)
pos = 0,0
stateno = 6039
id=6039
helpertype = normal
postype = p1
postype=Back
supermovetime=99999
pausemovetime=99999
ownpal=1
size.xscale = 1.2
size.yscale = 1.2
ignorehitpause=1
persistent=0

[State 3200]
type = ChangeState
trigger1=!AnimTime
value = 0
ctrl = 1
;-----------------------------------------------------------------
[Statedef 3300]
type= S
movetype=A
physics=N
anim=3300
velset=0,0
ctrl=0
juggle=0
facep2=1
sprpriority=2

[State 0, VarSet]
type = VarSet
trigger1 =!time
var(9)=0
ignorehitpause =1
[State 0, VarSet]
type = VarSet
trigger1=!time
var(7)=Ifelse(enemynear,Movetype=H,1,0)
ignorehitpause =1
[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = var(9)
flag =noFG
ignorehitpause=1
supermovetime=99999
pausemovetime=99999
[State 1000, Explod]
type = Explod
trigger1=!time
anim = 2224
ID = 2224
pos = -30,20
postype = p1
facing = 1
vfacing = 1
bindtime = 1
scale = 1,1
sprpriority = 0
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999
[State 0, SuperPause]
type=SuperPause
trigger1=!time
time=60
movetime=60
anim=-1
sound=S3100,2
darken=0
poweradd=-3000
unhittable=1
[State 0, Helper]
type = Helper
trigger1 =!time
helpertype = normal ;player
name = "Super Fx"
ID = 2063
stateno = 2063
pos = 10,-100
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 48
[State 3000, Black BG]
type = Explod
trigger1 = Time = 0
removetime = -1
id = 6035
anim = 6035
pos = 0,0
postype = Left
scale = 1,1
sprpriority = -99999
facing = 1
vfacing = 1
ownpal = 1
bindtime = -1
ontop = 0
ownpal = 1
supermove = 1
pausemove = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 60
pausemovetime =  60
[State 6034, HyperBG]
type=helper
trigger1 =time=61
helpertype=normal
stateno=6031
ID=6034
name="HyperBG"
postype=Back
supermovetime=99999
pausemovetime=99999
ownpal=1
ignorehitpause=1
size.xscale=.6
size.yscale=.6
[State 0, LV-3]
type = AfterImage
trigger1 = time=0
time = 9999
timegap = 1
framegap = 10
length = 30
paladd = 0, 0, 0
palmul = 0.75, 0.75, 0.75
palcontrast = 160, 32, 32
palpostbright = 0, 0, 0
trans = add
[State 7500, portrait]
type=helper
trigger1 = AnimElem = 1
helpertype=normal
stateno=7510
ID=7510
name="Super Charge Portrait"
postype=p1
supermovetime=300
ownpal=1
[State 0, NotHitBy]
type = NotHitBy
trigger1=animelemtime(2)<=1
trigger2=var(9)
value = SCA
ignorehitpause =1
[State 0, Width]
type = Width
trigger1=animelemtime(2)=0
value = 60,0
ignorehitpause =1

[State 0, VarRandom]
type = VarRandom
trigger1=gametime%10
v=10
range = 0,1
ignorehitpause =1

[State 3200]
type = PlaySnd
trigger1 = AnimElem = 2
value = s3000,Ifelse(var(10)=1,12,14)
channel=0
[State 3200]
type = PlaySnd
trigger1 = AnimElem = 2
value = s3000,Ifelse(var(10)=1,12,14)
channel=1
[State 3200]
type = PlaySnd
trigger1 = AnimElem = 2
value = s3000,Ifelse(var(10)=1,12,14)
channel=2
[State 3200]
type = PlaySnd
trigger1 = AnimElem = 2
value = s3000,Ifelse(var(10)=1,12,14)
channel=10
[State 3300,PlaySnd]
type=PlaySnd
trigger1=animelem=2
value=S1,12
channel=3

[State 3300,PlaySnd]
type=PlaySnd
trigger1=(AnimElem = 3)
value=S1,13
channel=4
persistent=0
[State 3300,PlaySnd]
type=PlaySnd
trigger1=(AnimElem = 2)
value=S1,12
channel=5
[State 3300,PlaySnd]
type=PlaySnd
trigger1=timemod=50,0
value=S6000,0
channel=7
[State 3300,EnvShake]
type=EnvShake
trigger1=(AnimElem = 2, > 0) && (AnimElem = 3, < 0) && ((GameTime%5) = 0)
time=4
ampl=5
[State 3300,EnvShake]
type=EnvShake
trigger1=(AnimElem = 3)
time=20
ampl=6
[State 3300,Helper]
type=Helper
trigger1=(AnimElem = 1, > 0) && (AnimElem = 3, < 0) && ((GameTime%20) = 0)
helpertype=Normal
name="Rocks"
id=9500
pos=0,0
postype=p1
facing=0
stateno=Ifelse(random<=200,9500,Ifelse(random<=200,9510,Ifelse(random<=200,9520,Ifelse(random<=200,9530,9540))))
keyctrl=0
ownpal=1
supermovetime = 99999
size.xscale=(IfElse(Random <= 799,0.5,.75))
size.yscale=(IfElse(Random <= 799,0.5,.75))

[State 0, Helper]
type = Helper
trigger1=(AnimElem = 1, > 0) && (AnimElem = 3, < 0) && ((GameTime%20) = 0) &&!NumHelper(9700)
helpertype = normal ;player
name ="electricity"
ID =9700
stateno =9700
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 9999
size.xscale =.4
size.yscale =.4

[State 3300,Explod]
type=Explod
trigger1=(AnimElem = 2, > 0) && (AnimElem = 3, < 0) && ((GameTime%10) = 0) && (NumExplod(9820) < 6) && (Random <= 499) && (Pos Y >= 0)
anim=9820
id=9820
pos=0,0
postype=p1
facing=1
vfacing=1
bindtime=1
vel=0,IfElse(Random <= 499,-0.9,-1.2)
accel=0,0
random=60,5
removetime=60
supermovetime = 99999
scale=0.1,0.1
sprpriority=3
ontop=0
shadow=0,0,0
ownpal=1
removeongethit= 0

[State 3300,Explod]
type=Explod
trigger1=(AnimElem = 2, > 10) && (AnimElem = 3, < 0) && ((GameTime%10) = 0) && (NumExplod(9830) < 6) && (Random <= 499)
anim=9830
id=9830
pos=38,-74
postype=p1
facing=1
vfacing=1
bindtime=1
vel=0,IfElse(Random <= 499,-0.9,-1.2)
accel=0,0
random=10,10
removetime=60
supermovetime = 99999
scale=0.1,0.1
sprpriority=3
ontop=0
shadow=0,0,0
ownpal=1
removeongethit= 0

[State 3300,Explod]
type=Explod
trigger1=(AnimElem = 2, > 10) && (AnimElem = 3, < 0) && (NumExplod(9890) = 0) && (Pos Y >= 0)
anim=9890
id=9890
pos=0,0
postype=p1
facing=1
vfacing=1
bindtime=1
vel=0,0
accel=0,0
random=0,0
removetime=-2
supermovetime = 99999
scale=1,1
sprpriority=0
ontop=0
shadow=0,0,0
ownpal=1
removeongethit= 1

[State 3300,RemoveExplod]
type=RemoveExplod
trigger1=(AnimElem = 3)
id= 9890

[State 3300,Helper]
type= Helper
trigger1 =time=5&&!numhelper(9937)
helpertype =Normal
name= "KiCharge"
id= 9937
pos= 0,0
postype =p1
stateno =9937
keyctrl=0
ownpal=1
ignorehitpause= 1
supermovetime=9999
size.xscale=.6
size.yscale=.6
[State 3100,Helper]
type=Helper
trigger1 =animelem=3&&!numhelper(9632)
helpertype=Normal
name="Kakarot!"
id=9632
pos=0,0
postype=p1
facing=1
stateno=9632
keyctrl=0
ownpal=1
supermovetime= 999
pausemovetime= 999
persistent=0
size.xscale=.75
size.yscale=.75
[State 182,Helper]
type=Helper
trigger1=(!Time)
helpertype=Normal
name="Flame Effect"
id=9202
pos=-5,-7
postype=p1
facing=0
stateno=9202
keyctrl=0
ownpal=1
supermovetime=9999
pausemovetime=9999
size.xscale=1
size.yscale=1
ignorehitpause=1

[State 3200]
type = ChangeState
trigger1=!AnimTime&&!Numhelper(9632)
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Broly's Rage
[Statedef 3350]
type= S
movetype=A
physics=N
anim=3350
velset=0,0
ctrl=0
juggle=0
facep2=1
sprpriority=2

[State 0, VarSet]
type = VarSet
trigger1=!time
var(7)=Ifelse(enemynear,Movetype=H,1,0)
ignorehitpause =1

[State 1000, Explod]
type = Explod
trigger1=!time
anim = 2224
ID = 2224
pos = -30,20
postype = p1
facing = 1
vfacing = 1
bindtime = 1
scale = 1,1
sprpriority = 0
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999
[State 0, NotHitBy]
type = NotHitBy
trigger1 =animelemtime(4)<=1
value = SCA
ignorehitpause =1
[State 0, SuperPause]
type=SuperPause
trigger1=!time
time=60
movetime =60
anim=-1
sound=S3100,2
darken=0
poweradd=-3000
unhittable=1
[State 0, Helper]
type = Helper
trigger1 =!time
helpertype = normal ;player
name = "Super Fx"
ID = 2063
stateno = 2063
pos = 15,-100
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 48
[State 3000, Black BG]
type = Explod
trigger1 = Time = 0
removetime = -1
id = 6035
anim = 6035
pos = 0,0
postype = Left
scale = 1,1
sprpriority = -99999
facing = 1
vfacing = 1
ownpal = 1
bindtime = -1
ontop = 0
ownpal = 1
supermove = 1
pausemove = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 60
pausemovetime =  60
[State 6034, HyperBG]
type=helper
trigger1 = AnimElem = 4
helpertype=normal
stateno=6031
ID=6034
name="HyperBG"
postype=Back
supermovetime=99999
pausemovetime=99999
ownpal=1
ignorehitpause=1
size.xscale=.6
size.yscale=.6
[State 0, LV-3]
type = AfterImage
trigger1 = time=0
time = 9999
timegap = 1
framegap = 10
length = 30
paladd = 0, 0, 0
palmul = 0.75, 0.75, 0.75
palcontrast = 160, 32, 32
palpostbright = 0, 0, 0
trans = add
[State 7500, portrait]
type=helper
trigger1 = AnimElem = 1
helpertype=normal
stateno=7510
ID=7510
name="Super Charge Portrait"
postype=p1
supermovetime=300
ownpal=1

[State 3350,PlaySnd]
type= PlaySnd
trigger1=!time
value =S3000,10
channel=0
[State 3350,PlaySnd]
type= PlaySnd
trigger1=!time
value =S3000,10
channel=1
[State 3350,PlaySnd]
type= PlaySnd
trigger1=!time
value =S3000,10
channel=7
[State 3350,PlaySnd]
type= PlaySnd
trigger1=!time
value =S3000,10
channel=8
[State 3350,PlaySnd]
type=PlaySnd
trigger1=(AnimElem = 4)
value=S1,3
channel=3
[State 3350,PlaySnd]
type=PlaySnd
trigger1=(AnimElem = 4)
value=S1,21
channel=4
[State 3350,PlaySnd]
type=PlaySnd
trigger1=(!Time)
value=S1,24
channel=5
[State 3000,Width]
type=Width
trigger1=animelemtime(4)=0
player=40,0
[State 3350,VelSet]
type=VelSet
trigger1=Animelem=4
x=22

[State 3350,HitDef]
type=HitDef
trigger1=Animelem=4
attr=S, HT
hitflag=MAF
priority=4, Miss
sparkno=-1
guard.sparkno= -1
hitsound=S1,25
sparkno=-1
guard.sparkno=-1
sparkxy=-10,-120
guardsound=-1
p2facing=1
forcestand=1
fall=1
id=3350
getpower=0
givepower=0
numhits=0

[State 0, p2state]
type=targetstate
trigger1= movehit && numtarget(3350)
trigger1= target(3350),Movetype=H
ID=3350
value=3355
ignorehitpause=1
[State 0, p1state]
type=changestate
trigger1= movehit && numtarget(3350)
trigger1= target(3350),Movetype=H
value=3351
ignorehitpause=1

[State 3350,ChangeState]
type=ChangeState
trigger1=animelem=5
trigger2=moveguarded
value=1210

;-----------------------------------------------------------------
[Statedef 3351]
type= S
movetype=A
physics=N
anim=3351
velset=0,0
ctrl=0
facep2=1
sprpriority=-1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag =noFG
ignorehitpause=1
supermovetime=99999
pausemovetime=99999
[State 0, NotHitBy]
type = NotHitBy
trigger1 =1
value = SCA
ignorehitpause =1
[State 0, Width]
type = Width
trigger1=!time
edge= 80,80
ignorehitpause =1
[State 0, HitAdd]
type = HitAdd
trigger1=animelem=8,=105
value = 1
ignorehitpause =1
supermovetime=99999
pausemovetime=99999
[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1=animelem=8,=40
value =Ifelse(var(7),-300,-450)
ID = 3350
kill = 0
absolute =1
ignorehitpause =1
[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1=animelem=8,=106
value =-100
ID = 3350
kill = 1
absolute =1
ignorehitpause =1
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 =!time
id =9810
ignorehitpause =1

[State 0, SprPriority]
type = SprPriority
trigger1 =animelemtime(7)>=0
value =2
ignorehitpause =1
[State 0, TargetState]
type = TargetState
trigger1 =animelem=8,=106
value =Ifelse((target,life<=0),1105,3356)
ID = 3350
ignorehitpause =1
[State 0, TargetDrop]
type = TargetDrop
trigger1 =animelem=8,=107
ignorehitpause =1
[State 3200]
type=Helper
trigger1=animelem=8,=40&&!numhelper(6040)
pos = 0,0
stateno = 6040
id=6040
helpertype = normal
postype = p1
postype=Back
supermovetime=99999
pausemovetime=99999
ownpal=1
size.xscale = 1.2
size.yscale = 1.2
ignorehitpause=1
persistent=0
[State 0, AllPalFX]
type = ALLPalFX
trigger1= animelem=8,=40
time=60
add=4*time,4*time,4*time
ignorehitpause =1
supermovetime=9999
pausemovetime=9999
persistent=0
[State 0, TargetBind]
type = TargetBind
trigger1 =animelemtime(3)<0
id = 3350
pos = -50,-108
ignorehitpause =1
[State 0, TargetBind]
type = TargetBind
trigger1 =animelemtime(3)>=0&&animelemtime(4)<0
id = 3350
pos = -35,-82
ignorehitpause =1
[State 0, TargetBind]
type = TargetBind
trigger1 =animelemtime(4)>=0&&animelemtime(5)<0
id = 3350
pos = -27,-151
ignorehitpause =1
[State 0, TargetBind]
type = TargetBind
trigger1 =animelemtime(5)>=0&&animelemtime(6)<0
id = 3350
pos = -41,-75
ignorehitpause =1
[State 0, TargetBind]
type = TargetBind
trigger1 =animelemtime(6)>=0&&animelemtime(7)<0
id = 3350
pos = 9,-90
ignorehitpause =1
[State 0, TargetBind]
type = TargetBind
trigger1 =animelemtime(7)>=0&&animelemtime(8)<0
id = 3350
pos = 58,-110
ignorehitpause =1
[State 0, TargetBind]
type = TargetBind
trigger1 =animelemtime(8)>=0&&animelemtime(8)<=105
id = 3350
pos = 98,-116
ignorehitpause =1
[State 3351]
type = PlaySnd
trigger1 = AnimElem=8
value = s3000,2
channel=0
[State 3351]
type = PlaySnd
trigger1 = AnimElem=8
value = s3000,2
channel=1
[State 0, Pause]
Type = Pause
trigger1= animelem=8,=40
time =60
ignorehitpause=1
persistent=0

[State 3351,PlaySnd]
type=PlaySnd
trigger1=!time
value=S1,13
channel=4
persistent=0

[State 3351,PlaySnd]
type=PlaySnd
trigger1=timemod=50,0
value=S6000,0
channel=7
[State 3351,EnvShake]
type=EnvShake
trigger1=(AnimElem =1, > 0) && (AnimElem = 7, < 0) && ((GameTime%5) = 0)
time=4
ampl=5
[State 3351,EnvShake]
type=EnvShake
trigger1=(AnimElem = 7)
time=120
ampl=6
[State 3351,Helper]
type=Helper
trigger1=((GameTime%10) = 0)&&animelemtime(8)<=20
helpertype=Normal
name="Rocks"
id=9500
pos=0,0
postype=p1
facing=0
stateno=Ifelse(random<=200,9500,Ifelse(random<=200,9510,Ifelse(random<=200,9520,Ifelse(random<=200,9530,9540))))
keyctrl=0
ownpal=1
supermovetime=9999
pausemovetime=9999
ignorehitpause=1
size.xscale=(IfElse(Random <= 799,0.25,.5))
size.yscale=(IfElse(Random <= 799,0.25,.5))

[State 0, Helper]
type = Helper
trigger1=((GameTime%20) = 0) &&!NumHelper(9700)
helpertype = normal ;player
name ="electricity"
ID =9700
stateno =9700
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime=9999
pausemovetime=9999
ignorehitpause=1
size.xscale =.4
size.yscale =.4

[State 3351,Explod]
type=Explod
trigger1= ((GameTime%10) = 0) && (NumExplod(9820) < 6) && (Random <= 499) && (Pos Y >= 0)
anim=9820
id=9820
pos=0,0
postype=p1
facing=1
vfacing=1
bindtime=1
vel=0,IfElse(Random <= 499,-0.9,-1.2)
accel=0,0
random=60,5
removetime=60
supermovetime=9999
pausemovetime=9999
ignorehitpause=1
scale=0.1,0.1
sprpriority=3
ontop=0
shadow=0,0,0
ownpal=1
removeongethit= 0

[State 3351,Explod]
type=Explod
trigger1=((GameTime%10) = 0) && (NumExplod(9830) < 6) && (Random <= 499)
anim=9830
id=9830
pos=38,-74
postype=p1
facing=1
vfacing=1
bindtime=1
vel=0,IfElse(Random <= 499,-0.9,-1.2)
accel=0,0
random=10,10
removetime=60
supermovetime=9999
pausemovetime=9999
ignorehitpause=1
scale=0.1,0.1
sprpriority=3
ontop=0
shadow=0,0,0
ownpal=1
removeongethit= 0

[State 3000,Helper]
type=Helper
trigger1=timemod=35,0&&!numhelper(9903)&&animelemtime(8)<=90
helpertype=Normal
name="Kikou Ha Effect"
id=9903
pos=0,0
postype=p1
facing=1
stateno=9903
keyctrl=0
ownpal=1
supermovetime=9999
pausemovetime=9999
ignorehitpause=1
size.xscale=.75
size.yscale=.75
[State 182,Helper]
type=Helper
trigger1=(!Time)
helpertype=Normal
name="Flame Effect"
id=9200
pos=-5,-7
postype=p1
facing=0
stateno=9200
keyctrl=0
ownpal=1
supermovetime=9999
pausemovetime=9999
size.xscale=1.15
size.yscale=1.15
[State 3000,Helper]
type=Helper
trigger1=!time&&!numhelper(9904)
helpertype=Normal
name="Orb Effect"
id=9904
pos=0,0
postype=p1
facing=1
stateno=9904
keyctrl=0
ownpal=1
supermovetime=9999
pausemovetime=9999
ignorehitpause=1
size.xscale=.75
size.yscale=.75

[State 3351]
type = ChangeState
trigger1=!AnimTime
value = 0
ctrl = 1

