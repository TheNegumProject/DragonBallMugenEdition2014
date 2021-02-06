;===========================================================================
;-| Special |---------------------------------------------------------------

;---------------------------------------------------------------------------
;Kikou Ha
[Statedef 1000]
type= S
movetype=A
physics=S
velset=0,0
ctrl=0
poweradd=72
juggle=6
facep2=1
sprpriority=1

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

[State 1000, VarSet]
type = VarSet
trigger1 =!AILevel&& !time
var(5) = ifelse(command="x",0,ifelse(command="y",1,2))
ignorehitpause = 1
[State 1000, VarSet]
type = VarSet
trigger1 =AILevel&& !time
var(5) = ifelse(random<300,1,2)
ignorehitpause = 1
[State 0, VarSet]
type = VarSet
trigger1 =!time
var(7)=0
ignorehitpause =1
[State 0, VarSet]
type = VarSet
trigger1 =!time
var(8)=0
ignorehitpause =1

[State 1000, 1]
type = ChangeAnim
Trigger1 = Time = 0
value = ifelse(var(5)=2,1002,ifelse(var(5)=1,1001,1000))
ignorehitpause = 1

[State 0, VarSet]
type = VarSet
triggerall=animelemtime(3)>=5&&animelemtime(3)<20&&var(7)<2
trigger1 =!AIlevel&&(command="x"||command="y"||command="z")
trigger2 =AILevel&&enemynear,Movetype!=A
var(8)=1
ignorehitpause =1
[State 0, VarAdd]
type = VarAdd
trigger1 =animelemtime(3)=1
var(7)=1
[State 1010, Varset]
type = Varset
triggerall=animelemtime(3)>=5&&animelemtime(3)<20&&var(8)
trigger1=!AILevel&&(command="x"||command="y"||command="z")
trigger2=AILevel&&P2bodydist x >90
trigger3=AILevel&&enemynear,vel x>0
var(8)=2
ignorehitpause=1

[State 1000, anim]
type = ChangeAnim
trigger1=animelemtime(3)=20&&var(8)=1&&var(7)<2
value = anim
elem=3
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1=animelemtime(3)=20&&var(8)&&var(7)<3
value=anim
elem=3
ignorehitpause=1

[State 1000, width]
type = width
trigger1 = animelemtime(3)=0
player= 40, 0
edge=40,0

[State 1000,voice]
type= PlaySnd
trigger1 =(AnimElem = 3,=1)
value =S1000,var(7)-1
channel=0
[State 1000,voice]
type= PlaySnd
trigger1 =(AnimElem = 3,=1)
value =S1000,var(7)-1
channel=1
[State 1000,PlaySnd]
type= PlaySnd
trigger1=(AnimElem = 3)
value =S1,19

[State 1000,PlaySnd]
type= PlaySnd
trigger1 =(AnimElem = 3)
value =S1,30
[State 0, EnvShake]
type = EnvShake
trigger1 = animelem = 3,=1
time = 15+3*var(8)
ampl = 4
ignorehitpause =1

[State 1000,Helper]
type=Helper
trigger1=animelem=2&&!numhelper(9901)
helpertype=Normal
name="KikouFX1"
id=9901
pos=0,0
postype=p1
facing=1
stateno=9901
keyctrl=0
ownpal=1
size.xscale=.5
size.yscale=.5
[State 1000,Helper]
type=Helper
trigger1=animelem=3
helpertype=Normal
name="KikouFX2"
id=9910
pos=0,0
postype=p1
facing=1
stateno=9910
keyctrl=0
ownpal=1
size.xscale=.5
size.yscale=.5

[State 1000,Helper]
type=Helper
trigger1=animelemtime(3)=1
helpertype=Normal
name="Kikou Ha"
id=9600
pos=65,-120
postype=p1
facing=1
stateno=9600
keyctrl=0
ownpal=1
supermovetime= 0
pausemovetime= 0
size.xscale=.25
size.yscale=.25

[State 1000,ChangeState]
type=ChangeState
trigger1=!animtime
value=0
ctrl=1

;---------------------------------------------------------------------------
;Gou Kikou Ha
[Statedef 1005]
type= S
movetype=A
physics=S
velset=0,0
ctrl=0
poweradd=72
juggle=2
facep2=1
sprpriority=1

[State 1005, Explod]
type = Explod
trigger1=animelem=2
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
[State 1005, VarSet]
type = VarSet
trigger1 =!time
var(3)=0
ignorehitpause = 1
[State 1005, VarSet]
type = VarSet
trigger1 =!AILevel&& !time
var(5) = ifelse(command="x",0,ifelse(command="y",1,2))
ignorehitpause = 1
[State 1005, VarSet]
type = VarSet
trigger1 =AILevel&& !time
var(5) =0
ignorehitpause = 1

[State 1005, VarSet]
type = VarSet
trigger1 =!AILevel&&animelemtime(1)>=2&&animelemtime(3)<0
var(3)=Ifelse(command="holdup",1,Ifelse(command="holddown",2,0))
ignorehitpause = 1
[State 1005, VarSet]
type = VarSet
trigger1 =AILevel&&animelemtime(1)>=2&&animelemtime(3)<0
var(3)=Ifelse(enemynear,statetype=A,1,Ifelse(enemynear,statetype=C||enemynear,statetype=L,2,0))
ignorehitpause = 1

[State 1005, 1]
type = ChangeAnim
Trigger1 = Time = 0
value = ifelse(var(5)=2,1007,ifelse(var(5)=1,1006,1005))
ignorehitpause = 1

[State 1005,voice]
type=PlaySnd
trigger1=time=0
value=22,4
channel=0
[State 1005,PlaySnd]
type=PlaySnd
trigger1=(AnimElem = 3)
value=S23,0
channel=3
[State 1005,PlaySnd]
type=PlaySnd
trigger1=(AnimElem = 2)
value=S1,32
channel=4
[State 1005,PlaySnd]
type=PlaySnd
trigger1=(AnimElem = 1, = 10)
value=S1,37
channel=5
[State 1005,PlaySnd]
type=PlaySnd
trigger1=(AnimElem = 3)
value=S3,2
channel=6
[State 1000, width]
type = width
trigger1 = animelemtime(3)=0
player= 40, 0
edge=40,0
[State 1005,EnvShake]
type=EnvShake
trigger1=!time
time=35
ampl=6
[State 1005, Voice]
type = Playsnd
trigger1 =!time
value = 6000,0
channel = 7

[State 0, Helper]
type = Helper
trigger1=(AnimElem = 1, > 0) && (AnimElem = 2, < 0) && ((GameTime%20) = 0) &&!NumHelper(9700)
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

[State 1005,Explod]
type=Explod
trigger1=(AnimElem = 1, > 0) && (AnimElem = 2, < 0) && ((GameTime%20) = 0) && (NumExplod(9820) < 6) && (Random <= 499) && (Pos Y >= 0)
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
supermove=0
supermovetime= 0
pausemovetime= 0
scale=0.1,0.1
sprpriority=3
ontop=0
shadow=0,0,0
ownpal=1
removeongethit= 1

[State 1005,Explod]
type=Explod
trigger1=(AnimElem = 1, > 10) && (AnimElem = 2, < 0) && ((GameTime%15) = 0) && (NumExplod(9830) < 6) && (Random <= 499)
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
supermove=0
supermovetime= 0
pausemovetime= 0
scale=0.1,0.1
sprpriority=3
ontop=0
shadow=0,0,0
ownpal=1
removeongethit= 1

[State 1005,Explod]
type=Explod
trigger1=(AnimElem = 2)
anim=9870
id=9870
pos=60,-110
postype=p1
facing=1
bindtime=1
removetime=-2
scale=.65,.65
sprpriority=5
ontop=1
shadow=0,0,0
ownpal=1
removeongethit= 0

[State 1005,Projectile]
type=Projectile
trigger1=(AnimElem = 3, = 0)
projid=9650
projanim=9650
projhitanim=9330
projremanim=9330
projcancelanim= 9330
projscale=.5,.5
projremove=1
projremovetime= 200
velocity=25,IfElse(var(3)=1,-25,IfElse(var(3)=2,25,0))
remvelocity=0,0
accel=0,0
velmul=1,1
projhits=1
projmisstime= 0
projpriority= 100
projsprpriority= 3
projedgebound= 1000
projstagebound= 1000
projheightbound= -800,0
offset=60,-95
postype=p1
projshadow=0,0,0
supermovetime= 0
pausemovetime= 0
attr=S, SP
hitflag=MAFDP
guardflag=M
animtype=Hard
priority=7, Hit
damage =100+10*var(5),25
pausetime=4,20
guard.pausetime= 4,10
sparkno=-1
guard.sparkno= -1
sparkxy=0,0
hitsound=S1,42
guardsound=S2,8
ground.type=High
air.type=Trip
ground.slidetime= 18
ground.hittime= 18
air.hittime=18
ground.velocity= -15,-4
guard.velocity= -10
air.velocity= -15,-3
airguard.velocity= -15,-8
ground.cornerpush.veloff = 0
fall=1
fall.recover= 0
air.recover=0
down.velocity= -15,-6
down.bounce=1
id=9650
getpower=25
givepower=25
palfx.time = 25
palfx.add =0,25,5
palfx.mul = 153,255,102
palfx.sinadd = 64,224,0,120
palfx.color=255
p2stateno=4060
envshake.time=12
envshake.ampl=5
fall.envshake.time=16
fall.envshake.ampl=6

[State 7180, flames]
type = helper
trigger1 = projhit=1 && numtarget && !numhelper(7180)
trigger1 = !(target, time) && (target, movetype = H)&&(enemynear,stateno=4060)
helpertype = normal
stateno = 7180
ID = 7180
name = "flames"
postype = p2
ownpal = 1
facing = -1
ignorehitpause = 1

[State 1000,Helper]
type=Helper
triggerall=!numhelper(9901)
trigger1=animelem=1,10
trigger2=var(5)&&animelem=1,30
helpertype=Normal
name="KikouFX1"
id=9901
pos=0,0
postype=p1
facing=1
stateno=9901
keyctrl=0
ownpal=1
size.xscale=.5
size.yscale=.5

[State 1005,ChangeState]
type=ChangeState
trigger1=(!AnimTime)
value=0
ctrl=1

;---------------------------------------------------------------------------
;Bakuenha
[Statedef 1010]
type= S
movetype=A
physics=S
velset=0,0
ctrl=0
poweradd=72
juggle=2
facep2=1
sprpriority=1

[State 1010, Explod]
type = Explod
trigger1=animelem=2
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

[State 1010, VarSet]
type = VarSet
trigger1 =!AILevel&& !time
var(5) = ifelse(command="x",0,ifelse(command="y",1,2))
ignorehitpause = 1
[State 1010, VarSet]
type = VarSet
trigger1 =AILevel&& !time
var(5) =Ifelse(p2bodydist x >=220,2,Ifelse(p2bodydist x<=100,0,1))
ignorehitpause = 1

[State 1010, 1]
type = ChangeAnim
Trigger1 = Time = 0
value = ifelse(var(5)=2,1012,ifelse(var(5)=1,1011,1010))
ignorehitpause = 1

[State 1010, width]
type = width
trigger1 = animelemtime(2)>=0&&animelemtime(4)<0
player=80,0
edge=50,0

[State 1010,PlaySnd]
type=PlaySnd
trigger1=(AnimElem = 2)
value=S0,10+random%3
channel=0
[State 1010,PlaySnd]
type=PlaySnd
trigger1=(AnimElem = 2)
value=S1,32

[State 1010,PlaySnd]
type=PlaySnd
trigger1=time = 0
value=S22,2

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
triggerall=!numhelper(9901)
trigger1=animelem=1,5
trigger2=var(5)&&animelem=1,20
helpertype=Normal
name="KikouFX1"
id=9901
pos=0,0
postype=p1
facing=1
stateno=9901
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

[State 1010,Helper]
type=Helper
trigger1 =(AnimElem = 3)&&!numhelper(9630)
helpertype=Normal
name="Bakuenha"
id=9630
pos=Ifelse(!var(5),100,Ifelse(var(5)=1,175,250)),0
postype=p1
facing=1
stateno=9630
keyctrl=0
ownpal=1
supermovetime= 0
pausemovetime= 0
size.xscale=.75
size.yscale=.75

[State 1010,ChangeState]
type=ChangeState
trigger1=(!AnimTime)
value=0
ctrl=1
;---------------------------------------------------------------------------
;Tosshin Toubu Dageki: Attempt
[Statedef 1020]
type= S
movetype=A
physics=S
velset=0,0
ctrl=0
poweradd=72
juggle=2
facep2=1
sprpriority=1

[State 0, Green]
type = AfterImage
trigger1=!time
time=9999
TimeGap=1
FrameGap=4
length=14
palbright = 0, 50, 0
paladd = -50, 0, -50
palmul = .1, .7, .2
trans = add
ignorehitpause = 1

[State 1020, Explod]
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

[State 1020, VarSet]
type = VarSet
trigger1 =!AILevel&& !time
var(5) = ifelse(command="x",0,ifelse(command="y",1,2))
ignorehitpause = 1
[State 1020, VarSet]
type = VarSet
trigger1 =AILevel&& !time
var(5) =Ifelse(p2dist x >=150,2,Ifelse(p2dist x<=100,0,1))
ignorehitpause = 1

[State 1010, 1]
type = ChangeAnim
Trigger1 = Time = 0
value = ifelse(var(5)=2,1022,ifelse(var(5)=1,1021,1020))
ignorehitpause = 1

[State 1010, width]
type = width
trigger1 = animelemtime(2)=0
player=40,0
edge=30,0

[State 1020,PlayerPush]
type=PlayerPush
trigger1=(AnimElem = 2, > 0) && (AnimElem = 3, < 0)
value=0
[State 1020,VelSet]
type=VelSet
trigger1=(AnimElem = 2)
x=30+10*var(5)
[State 0, VelMul]
type = VelMul
trigger1 = animelemtime(2)>=12&&animelemtime(3)<0
x =.9
[State 0, VelSet]
type = VelSet
trigger1 =animelemtime(3)=0
x =0

[State 1020,PlaySnd]
type=PlaySnd
trigger1=!time
value=S1000,5+random%2
[State 1020,PlaySnd]
type=PlaySnd
trigger1=(AnimElem =2)
value=S1,3
[State 1020,PlaySnd]
type=PlaySnd
trigger1=(AnimElem = 3)
value=S1,21

[State 1020,Explod]
type=Explod
trigger1 =(AnimElem = 2)
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
scale=1.1,1.1
sprpriority=3
ontop=0
shadow=0,0,0
ownpal=1
removeongethit= 1

[State 1020,HitDef]
type=HitDef
trigger1=!time
attr=S,SA
hitflag=MAF
guardflag=M
animtype=Hard
air.animtype= Back
priority=4, Hit
damage =90+10*var(5),12
pausetime=0,10
guard.pausetime= 6,6
sparkno=S8010+random%8
guard.sparkno= S7105
sparkxy=10,-90
hitsound=S2,6
guardsound=S2,7
ground.type=Trip
air.type=Trip
ground.slidetime= 2
ground.hittime=25
air.hittime=15
yaccel=0.45
ground.velocity= -25,-6
guard.velocity= -12
air.velocity= -24,-5
airguard.velocity= -14,-5
ground.cornerpush.veloff = 0
fall=1
fall.xvelocity= -1
fall.yvelocity= -5
fall.recover= 0
down.bounce=1
id=1020
getpower=39
givepower=39
envshake.time=14
envshake.ampl=6
persistent=0
p1stateno=1025

[State 1020,ChangeState]
type=ChangeState
trigger1=(!AnimTime)
value=0
ctrl=1

;---------------------------------------------------------------------------
;Tosshin Toubu Dageki: Success
[Statedef 1025]
type= S
movetype=A
physics=N
anim=1025
velset=10,0
ctrl=0
sprpriority=1

[State 1021,Width]
type=Width
trigger1=1
edge=30,0
player=30,0
ignorehitpause= 1
[State 101, dust]
type= makedust
trigger1 =time%2
pos=30,0
[State 1021,PlayerPush]
type=PlayerPush
trigger1=1
value=0
[State 0, VelMul]
type = VelMul
trigger1 = animelemtime(2)>=0&&animelemtime(3)<0
x = .5
[State 0, VelSet]
type = VelSet
trigger1 =animelemtime(3)=0
x =0

[State 1021,PlaySnd]
type=PlaySnd
trigger1=(!Time)
value=S1,21

[State 1021,RemoveExplod]
type=RemoveExplod
trigger1=(!Time)
id=9810

[State 1021,ChangeState]
type=ChangeState
trigger1=(!AnimTime)
value=0
ctrl=1
;---------------------------------------------------------------------------
;Geki Kaze
[Statedef 1030]
type= S
movetype=A
physics=S
velset=0,0
ctrl=0
poweradd=72
juggle=2
facep2=1
sprpriority=1

[State 1030, Explod]
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

[State 1030, VarSet]
type = VarSet
trigger1 =!AILevel&& !time
var(5) = ifelse(command="x",0,ifelse(command="y",1,2))
ignorehitpause = 1
[State 1030, VarSet]
type = VarSet
trigger1 =AILevel&& !time
var(5) =Ifelse(random<=400,1,0)
ignorehitpause = 1

[State 1030, 1]
type = ChangeAnim
Trigger1 = Time = 0
value = ifelse(var(5)=2,1032,ifelse(var(5)=1,1031,1030))
ignorehitpause = 1

[State 1010, width]
type = width
trigger1 = animelemtime(3)=0
player=60,0
edge=50,0

[State 1030,PlaySnd]
type= PlaySnd
trigger1 =!time
value =S1000,7
channel=0
[State 1030,PlaySnd]
type= PlaySnd
trigger1 =!time
value =S1000,7
channel=1
[State 1030,PlaySnd]
type= PlaySnd
trigger1 =!time
value =S1000,7
channel=2
[State 1030,PlaySnd]
type= PlaySnd
trigger1 =!time
value =S1000,7
channel=3
[State 1030,PlaySnd]
type= PlaySnd
trigger1 =(AnimElem = 3)
value =S1,11
channel=5
[State 1030,EnvShake]
type=EnvShake
trigger1 =(AnimElem = 3)
time=25
ampl=-6

[State 0, Helper]
type = Helper
trigger1=(AnimElem = 1, > 0) && (AnimElem = 2, < 0) && ((GameTime%20) = 0) &&!NumHelper(9700)
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
[State 1000,Helper]
type=Helper
trigger1=animelem=3&&!numhelper(9910)
helpertype=Normal
name="KikouFX2"
id=9910
pos=0,0
postype=p1
facing=1
stateno=9910
keyctrl=0
ownpal=1
size.xscale=.75
size.yscale=.75

[State 1030,Projectile]
type=Projectile
trigger1=(AnimElem = 3)
projid=9640
projanim=9640
projhitanim=9641
projremanim=9641
projcancelanim=9641
projscale=.5,.5
projremove=1
projremovetime= 200
velocity=20,0
remvelocity=0,0
accel=0,0
velmul=1,1
projhits=1
projmisstime= 0
projpriority= 1000
projsprpriority= 3
projedgebound= 500
projstagebound= 500
projheightbound= -1000,1
offset=85,-110
postype=p1
projshadow=0,0,0
supermovetime= 0
pausemovetime= 0
attr=S, SP
hitflag=MAFP
guardflag=M
animtype=Hard
priority=4, Hit
damage =80+5*var(5),12
pausetime=2,10
sparkno=S8010+random%8
guard.sparkno= S7105
sparkxy=20,0
hitsound=S1,44
guardsound=S2,8
ground.type=High
air.type=Low
ground.slidetime= 18
ground.hittime= 18
air.hittime=18
ground.velocity= -7,-4.7
guard.velocity= -7
air.velocity= -7,-4.7
airguard.velocity= -7,-4.7
ground.cornerpush.veloff = 0
air.juggle=1
fall=1
fall.recover= 0
id=1030
getpower=0
givepower=39
palfx.time = 30
palfx.add =0,25,5
palfx.mul = 153,255,102
palfx.sinadd = 64,224,0,80
palfx.color=255
envshake.time=12
envshake.ampl=5
fall.envshake.time=16
fall.envshake.ampl=6

[State 7180, flames]
type = helper
trigger1 = projhit=1 && numtarget && !numhelper(7180)
trigger1 = !(target, time) && (target, movetype = H)&&(enemynear,stateno=[5000,5050])
helpertype = normal
stateno = 7180
ID = 7180
name = "flames"
postype = p2
ownpal = 1
facing = -1
ignorehitpause = 1

[State 1030,ChangeState]
type=ChangeState
trigger1=(!AnimTime)
value=0
ctrl=1

;---------------------------------------------------------------------------
;Zugai Hasatsu: Attempt
[Statedef 1050]
type= S
movetype=A
physics=S
velset=0,0
ctrl=0
poweradd=72
juggle=15
facep2=1
sprpriority=1


[State 1050, Explod]
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

[State 1050, VarSet]
type = VarSet
trigger1 =!AILevel&& !time
var(5) = ifelse(command="x",0,ifelse(command="y",1,2))
ignorehitpause = 1
[State 1050, VarSet]
type = VarSet
trigger1 =AILevel&& !time
var(5) =0
ignorehitpause = 1

[State 1050, 1]
type = ChangeAnim
Trigger1 = Time = 0
value = ifelse(var(5)=2,1052,ifelse(var(5)=1,1051,1050))
ignorehitpause = 1

[State 1050,AttackDist]
type=AttackDist
trigger1=1
value=0

[State 1050,PlaySnd]
type=PlaySnd
trigger1=animelem = 1
value=S1000,2
channel=0
[State 1050,PlaySnd]
type=PlaySnd
trigger1=animelem = 1
value=S1000,2
channel=1
[State 1050,PlaySnd]
type=PlaySnd
trigger1=(!Time)
value=S1,32

[State 1050,HitDef]
type=HitDef
trigger1=(AnimElem = 2) && !NumTarget(1051)
attr=S, ST
hitflag=MAF
priority=1, Miss
sparkno=-1
hitsound=S1,25
guard.dist=0
snap=38,-50
p2facing=1
p1stateno=1055
p2stateno=1056
forcestand=1
fall=1
id=1050
getpower=0
givepower=0
numhits=0

[State 1050,ChangeState]
type=ChangeState
trigger1=(!AnimTime)
value=0
ctrl= 1

;---------------------------------------------------------------------------
;Zugai Hasatsu: Success
[Statedef 1055]
type= C
movetype=A
physics=N
anim=1055
velset=0,0
ctrl=0
sprpriority=-2

[State 1055,PosAdd]
type=PosAdd
trigger1=(AnimElem = 1, > 10) && (AnimElem = 2, < 0)
x=(IfElse(((GameTime%2) = 0),2,-2))
[State 0, Width]
type = Width
trigger1 =1
edge =90,30
ignorehitpause =1

[State 1055,PlayerPush]
type=PlayerPush
trigger1=(AnimElem = 2, < 0)
value=0

[State 1055,NotHitBy]
type=NotHitBy
trigger1=1
value =SCA
[State 1051,SprPriority]
type=SprPriority
trigger1=(AnimElem = 3)
value=2

[State 1051,TargetBind]
type=TargetBind
trigger1=(AnimElem = 1)
time=-1
id=1050
pos=38,-105

[State 1051,PlaySnd]
type=PlaySnd
trigger1=(AnimElem = 1, = 10)
value=s1,16
channel=2
[State 1051,PlaySnd]
type=PlaySnd
trigger1=(AnimElem = 2)
value=S1,32
channel=3
[State 1051,PlaySnd]
type=PlaySnd
trigger1=(MoveContact)
value=S1,5
persistent=0
ignorehitpause= 1
channel=5
[State 1051,PlaySnd]
type=PlaySnd
trigger1=(MoveContact)
value=S1,10
persistent=0
ignorehitpause= 1
channel=6
[State 1051,Pause]
type=Pause
trigger1=(MoveContact) && ((GameTime%3) = 0)
time=1
movetime=0

[State 1000,Helper]
type=Helper
trigger1=!time&&!numhelper(9901)
helpertype=Normal
name="KikouFX1"
id=9901
pos=0,0
postype=p1
facing=1
stateno=9901
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

[State 1050,PlaySnd]
type=PlaySnd
trigger1=animelem = 1,=20
value=S1000,12
channel=0
[State 1050,PlaySnd]
type=PlaySnd
trigger1=animelem = 1,=20
value=S1000,12
channel=1
[State 1050,PlaySnd]
type=PlaySnd
trigger1=animelem = 1,=20
value=S1000,12
channel=5
[State 1051,HitDef]
type=HitDef
trigger1=(AnimElem = 3)&&numtarget(1050)
attr=C,ST
hitflag=MAFD
animtype=Back
air.animtype= Back
priority=4, Hit
damage =120+10*var(5)
pausetime=8,8
guard.pausetime= 6,6
sparkno=-1
guard.sparkno= -1
sparkxy=-10,(Var(7))
hitsound=S2,8
guardsound=S1,42
ground.type=High
air.type=Low
ground.slidetime= 18
ground.hittime= 18
air.hittime=18
yaccel=0.45
ground.velocity= -5.7
guard.velocity= -6
air.velocity= -14,-2
airguard.velocity= -14,-4
ground.cornerpush.veloff = -3
p2stateno=2041
snap=38,-40
fall=1
fall.recover= 0
id=1055
getpower=78
givepower=78
envshake.time=30
envshake.ampl=-7
palfx.time = 30
palfx.add =0,25,5
palfx.mul = 153,255,102
palfx.sinadd = 64,224,0,80
palfx.color=255

[State 7180, flames]
type = helper
trigger1 = movehit && numtarget && !numhelper(7180)
trigger1 = !(target, time) && (target, movetype = H)&&(enemynear,stateno=2041)
helpertype = normal
stateno = 7180
ID = 7180
name = "flames"
postype = p2
ownpal = 1
facing = -1
ignorehitpause = 1

[State 9600, Sparks]
type = explod
trigger1 = movecontact = 1 && numtarget
trigger1 = (target, movetype = H) && !(target, time)
anim = ifelse(moveguarded, 7105, 8010 + (random % 8))
ID = 8010
sprpriority = 5
postype = p2
pos = (target, const(size.ground.front) -10), (target, const(size.mid.pos.y))
removetime = -2
ownpal = 0
facing = -1
ignorehitpause = 1
pausemovetime = 100
supermovetime = 100

[State 1051,ChangeState]
type=ChangeState
trigger1=(!AnimTime)
value=0
ctrl= 1
;---------------------------------------------------------------------------
;Naraku Otoshi
[Statedef 1080]
type= S
movetype=A
physics=N
velset=0,0
ctrl=0
poweradd=72
juggle=2
facep2=1
sprpriority=1

[State 0, VarSet]
type = VarSet
trigger1=!time
var(7)=Ifelse(prevstateno=1090,1,0)
ignorehitpause =1

[State 0, Green]
type = AfterImage
trigger1=!time
time=9999
TimeGap=1
FrameGap=4
length=14
palbright = 0, 50, 0
paladd = -50, 0, -50
palmul = .1, .7, .2
trans = add
ignorehitpause = 1
[State 1080, Explod]
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

[State 1080, VarSet]
type = VarSet
trigger1 =!AILevel&& !time
var(5) = ifelse(command="a",0,ifelse(command="b",1,2))
ignorehitpause = 1
[State 1080, VarSet]
type = VarSet
trigger1 =AILevel&& !time
var(5) =0
ignorehitpause = 1

[State 1080, 1]
type = ChangeAnim
Trigger1 = Time = 0
value = ifelse(var(5)=2,1082,ifelse(var(5)=1,1081,1080))
ignorehitpause = 1

[State 1080,VelSet]
type=VelSet
trigger1=animelemtime(3)=0
x=6+2*var(5)
y=-7-.5*var(5)
[State 1080,StateTypeSet]
type=StateTypeSet
trigger1=animelemtime(3)=0
statetype=A
physics=N

[State 1080,PlaySnd]
type=PlaySnd
trigger1=(AnimElem = 3)
value=S1,8
channel=2

[State 1080,Helper]
type= Helper
trigger1 =(NumTarget(2080)) && (MoveContact)
helpertype =Normal
name= "Disperse Effect"
id= 9820
pos= Floor((P2Dist X)-(Var(6))),(Var(7))
postype =p1
stateno =9820
keyctrl=0
ownpal=1
persistent=0
ignorehitpause= 1

[State 1080,VelAdd]
type=VelAdd
trigger1=(AnimElem = 3, > 0)
y=0.5
[State 1050,PlaySnd]
type=PlaySnd
trigger1=animelem = 3
value=S1000,9
channel=0
[State 1050,PlaySnd]
type=PlaySnd
trigger1=animelem = 3
value=S1000,9
channel=1
[State 1050,PlaySnd]
type=PlaySnd
trigger1=animelem = 3
value=S1000,9
channel=4
[State 1050,PlaySnd]
type=PlaySnd
trigger1=animelem = 3
value=S1000,9
channel=5
[State 1080,HitDef]
type=HitDef
trigger1=(AnimElem = 5)
attr=A,SA
hitflag=MAF
guardflag=HA
animtype=Hard
air.animtype= Back
priority=4, Hit
damage =floor(Ifelse(var(7),30,80))+10*var(5),12
pausetime=12,12
guard.pausetime= 8,8
sparkno=S8010+random%8
guard.sparkno= S7105
sparkxy=-10,-20
hitsound=S2,11
guardsound=S2,7
ground.type=Low
air.type=Low
ground.slidetime= 2
ground.hittime= 18
air.hittime=18
yaccel=0.45
ground.velocity= -18,-5
guard.velocity= -6
air.velocity= -18,-6
airguard.velocity= -6,-6
ground.cornerpush.veloff = -3
fall= 1
fall.recover= 1
id=1080
getpower=39
givepower=39
envshake.time=12
envshake.ampl=-5

[State 0, p2state]
type=targetstate
trigger1= movehit && numtarget(1080)
trigger1= target(1080),Movetype=H
ID=1080
value=4056
ignorehitpause=1
persistent=0
[State 1080,ChangeState]
type=ChangeState
trigger1 = Pos Y >= 0 && Vel Y > 0
value=52
;---------------------------------------------------------------------------
;Air Naraku Otoshi
[Statedef 1085]
type= A
movetype=A
physics=N
velset=0,0
ctrl=0
poweradd=72
juggle=6
facep2=1
sprpriority=1

[State 0, Green]
type = AfterImage
trigger1=!time
time=9999
TimeGap=1
FrameGap=4
length=14
palbright = 0, 50, 0
paladd = -50, 0, -50
palmul = .1, .7, .2
trans = add
ignorehitpause = 1
[State 1085, VarSet]
type = VarSet
trigger1 =!AILevel&& !time
var(5) = ifelse(command="a",0,ifelse(command="b",1,2))
ignorehitpause = 1
[State 1085, VarSet]
type = VarSet
trigger1 =AILevel&& !time
var(5) =0
ignorehitpause = 1

[State 1085, 1]
type = ChangeAnim
Trigger1 = Time = 0
value = ifelse(var(5)=2,1087,ifelse(var(5)=1,1086,1085))
ignorehitpause = 1

[State 1085,VelSet]
type=VelSet
trigger1=!time
x=2
y=-6
[State 1085,VelSet]
type=VelSet
trigger1=(AnimElem = 3, > 0)
x=8+2*var(5)
y=12-1*var(5)
[State 0, AngleDraw]
type = AngleDraw
trigger1 =animelemtime(3)>=0
value = -45+15*var(5)
ignorehitpause =1
[State 0, VelMul]
type = VelMul
trigger1=movecontact
x = .75
ignorehitpause =1

[State 1050,PlaySnd]
type=PlaySnd
trigger1=animelem = 2
value=S1000,8
channel=0
[State 1050,PlaySnd]
type=PlaySnd
trigger1=animelem = 2
value=S1000,8
channel=1
[State 1050,PlaySnd]
type=PlaySnd
trigger1=animelem = 2
value=S1000,8
channel=2
[State 1050,PlaySnd]
type=PlaySnd
trigger1=animelem = 2
value=S1000,8
channel=3
[State 1085,PlaySnd]
type=PlaySnd
trigger1=(AnimElem = 3)
value=S1,8
[State 1085,PlaySnd]
type=PlaySnd
trigger1=(AnimElem = 3)
value=S1,43
[State 1085,HitDef]
type=HitDef
trigger1=(AnimElem = 3)
attr=A,SA
hitflag=MAFD
guardflag=HA
animtype=Hard
air.animtype= Back
priority=4, Hit
damage =80+10*var(5),12
pausetime=12,12
guard.pausetime= 8,8
sparkno=S8010+random%8
guard.sparkno= S7105
sparkxy=-20,20
hitsound=S2,5
guardsound=S2,7
ground.type=Low
air.type=Low
ground.slidetime= 8
ground.hittime= 18
air.hittime=18
yaccel=0.45
ground.velocity= -12,12
guard.velocity= -6
air.velocity= -12,12
down.velocity=0,0
airguard.velocity= -6,-6
ground.cornerpush.veloff = -3
fall= 1
fall.recover= 1
getpower=30
givepower=30
envshake.time=12
envshake.ampl=-5
p2stateno=4310

[State 1085,ChangeState]
type=ChangeState
trigger1 = Pos Y >= -10+5*var(5) && Vel Y > 0
value=52
;---------------------------------------------------------------------------
;Satsubatsu Yakushin
[Statedef 1090]
type= S
movetype=A
physics=N
velset=0,0
ctrl=0
poweradd=72
juggle=8
facep2=1
sprpriority=1

[State 1090, Explod]
type = Explod
trigger1 =!time
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
[State 0, Green]
type = AfterImage
trigger1=!time
time=9999
TimeGap=1
FrameGap=4
length=14
palbright = 0, 50, 0
paladd = -50, 0, -50
palmul = .1, .7, .2
trans = add
ignorehitpause = 1
[State 0, AfterImageTime]
type = AfterImageTime
trigger1 =animelem=9
time = 1
ignorehitpause =1

[State 1090, VarSet]
type = VarSet
trigger1 =!AILevel&& !time
var(5) = ifelse(command="a",0,ifelse(command="b",1,2))
ignorehitpause = 1
[State 1090, VarSet]
type = VarSet
trigger1 =AILevel&& !time
var(5) =0
ignorehitpause = 1

[State 1080, 1]
type = ChangeAnim
Trigger1 = Time = 0
value = ifelse(var(5)=2,1092,ifelse(var(5)=1,1091,1090))
ignorehitpause = 1

[State 1090,PosAdd]
type= PosAdd
trigger1 =(AnimElem = 3) || (AnimElem = 5) || (AnimElem = 7) || (AnimElem = 9)
x= 6+1*var(5)
ignorehitpause=1
[State 1090,PosAdd]
type= PosAdd
trigger1 =(AnimElem = 2) || (AnimElem = 4) || (AnimElem = 6) || (AnimElem = 8) || (AnimElem = 10)
x= 10+2*var(5)
ignorehitpause=1

[State 1090,PlaySnd]
type=PlaySnd
trigger1=(AnimElem = 10, > 0) && (HitPauseTime = 1) && (!MoveGuarded)
value=S1000,0+random%3
channel=3
persistent=0
ignorehitpause= 1
[State 1090,PlaySnd]
type=PlaySnd
trigger1=(AnimElem = 2) || (AnimElem = 4) || (AnimElem = 6) || (AnimElem = 8) || (AnimElem = 10)
value=S3,4+random%2
channel=4
ignorehitpause=1
[State 1250,PlaySnd]
type=PlaySnd
trigger1=!time
value=S1000,4
channel=1
[State 1250,PlaySnd]
type=PlaySnd
trigger1=!time
value=S1000,4
channel=0
[State 1250,PlaySnd]
type=PlaySnd
trigger1=animelem=8
value=S1000,8
channel=1
[State 1250,PlaySnd]
type=PlaySnd
trigger1=animelem=8
value=S1000,8
channel=0

[State 1090,HitDef]
type=HitDef
trigger1=(AnimElem = 6)
attr=S, SA
hitflag=MAF
guardflag=M
animtype=Light
air.animtype= Back
priority=4, Hit
damage =20,5
pausetime=5,12
guard.pausetime= 5,12
sparkno=S8010+random%8
guard.sparkno= S7105
sparkxy=-10,-40
hitsound=S2,5
guardsound=S2,7
ground.type=Low
air.type=Low
ground.slidetime= 15
ground.hittime= 15
air.hittime=15
yaccel=0.45
ground.velocity= -2.5
guard.velocity= -2.5
air.velocity= -3,-4.7
airguard.velocity= -3,-4.7
ground.cornerpush.veloff = 0
air.cornerpush.veloff = -6
id=1090
getpower=13
givepower=13
envshake.time=12
envshake.freq=120
envshake.ampl=-2

[State 1090,HitDef]
type=HitDef
trigger1=(AnimElem = 2) || (AnimElem = 8)
attr=S, SA
hitflag=MAF
guardflag=M
animtype=Medium
air.animtype= Back
priority=4, Hit
damage =20,5
pausetime=5,12
guard.pausetime= 5,12
sparkno=S8010+random%8
guard.sparkno= S7105
sparkxy=-10,-80
hitsound=S2,5
guardsound=S2,7
ground.type=Low
air.type=Low
ground.slidetime= 15
ground.hittime= 15
air.hittime=15
yaccel=0.45
ground.velocity= -2.5
guard.velocity= -2.5
air.velocity= -3,-4.7
airguard.velocity= -3,-4.7
ground.cornerpush.veloff = 0
id=1090
getpower=13
givepower=13
envshake.time=12
envshake.freq=120
envshake.ampl=-3

[State 1090,HitDef]
type=HitDef
trigger1=(AnimElem = 4) || (AnimElem = 10)
attr=S, SA
hitflag=MAF
guardflag=M
animtype=Hard
air.animtype= Back
priority=4, Hit
damage =20+10*var(5),5
pausetime=5,12
guard.pausetime= 5,12
sparkno=S8010+random%8
guard.sparkno= S7105
sparkxy=-10,-120
hitsound=S2,(IfElse((AnimElem = 4),5,11))
guardsound=S2,7
ground.type=High
air.type=Low
ground.slidetime= 18
ground.hittime= 18
air.hittime=18
yaccel=0.45
ground.velocity= (IfElse((AnimElem = 4),-2,-12)),(IfElse((AnimElem = 4),0,-5.7))
guard.velocity= (IfElse((AnimElem = 4),-2,-7))
air.velocity= (IfElse((AnimElem = 4),-2,-12)),-6
airguard.velocity= (IfElse((AnimElem = 4),-2,-1)),-6
ground.cornerpush.veloff = (IfElse((AnimElem = 4),-2,-22))
fall=(IfElse((AnimElem = 4),0,1))
id=1090
getpower=26
givepower=26
envshake.time=12
envshake.freq=120
envshake.ampl=-3

[State 1090,ChangeState]
type= ChangeState
trigger1 =(!AnimTime)
value=0
ctrl=1
;---------------------------------------------------------------------------
;Jigoku Wari: Attempt
[Statedef 1100]
type= S
movetype=A
physics=N
anim=1100
velset=0,0
ctrl=0
poweradd=72
juggle=6
facep2=1
sprpriority=1

[State 0, VarSet]
type = VarSet
trigger1=!time
var(7)=Ifelse(enemynear,Movetype=H,1,0)
ignorehitpause =1

[State 0, Green]
type = AfterImage
trigger1=!time
time=9999
TimeGap=1
FrameGap=4
length=14
palbright = 0, 50, 0
paladd = -50, 0, -50
palmul = .1, .7, .2
trans = add
ignorehitpause = 1

[State 1100, VarSet]
type = VarSet
trigger1 =!AILevel&& !time
var(5) = ifelse(command="a",0,ifelse(command="b",1,2))
ignorehitpause = 1
[State 1100, VarSet]
type = VarSet
trigger1 =AILevel&& !time
var(5) =0
ignorehitpause = 1
[State 0, VarSet]
type = VarSet
trigger1=!time
var(7)=Ifelse(enemynear,Movetype=H,1,0)
ignorehitpause =1

[State 0, VelSet]
type = VelSet
trigger1 =!time
x = 6+4*var(5)
[State 0, VelMul]
type = VelMul
trigger1=time=15+5*var(5)
x =.6
[State 0, VelSet]
type = VelSet
trigger1 =animelem=2
x = 0
ignorehitpause=1
[State 1100,PlaySnd]
type=PlaySnd
trigger1=animelem=2
value=S3,2
channel=3
[State 1100,PlaySnd]
type=PlaySnd
trigger1=(!Time)
value=S1,43
channel=4
[State 1100,PlaySnd]
type=PlaySnd
trigger1=!time
value=S1000,10
channel=0
[State 1100,PlaySnd]
type=PlaySnd
trigger1=!time
value=S1000,10
channel=1
[State 1100,PlaySnd]
type=PlaySnd
trigger1=!time
value=S1000,10
channel=2

[State 1100,HitDef]
type=HitDef
trigger1=(AnimElem = 1)
attr=S,SA
hitflag=MAF
guardflag=M
animtype=Hard
priority=4, Hit
damage =20+5*var(5),10
pausetime=18,18
guard.pausetime=12,12
sparkno=S8010+random%8
guard.sparkno= S7105
sparkxy=-10,-60
hitsound=S2,5
guardsound=S2,7
ground.type=Low
ground.slidetime= 18
ground.hittime= 18
air.hittime=18
ground.velocity= -4
guard.velocity= -7
air.velocity= -2
airguard.velocity= -6,-5.7
ground.cornerpush.veloff = 0
snap=35,0
kill=0
getpower=20
givepower=20
envshake.time=12
envshake.ampl=-5

[State 1100,HitDef]
type=HitDef
trigger1=(AnimElem = 2)
attr=S, SA
hitflag=MAF
guardflag=M
animtype=Up
air.animtype= Up
priority=4, Hit
damage =30+5*var(5),10
pausetime=14,14
guard.pausetime= 14,14
sparkno=S8010+random%8
guard.sparkno= S7105
sparkxy=-10,-100
hitsound=S2,5
guardsound=S2,7
ground.type=Trip
air.type=High
ground.slidetime= 18
ground.hittime= 18
air.hittime=18
yaccel=0.45
ground.velocity= -2,-13.7
guard.velocity= -7
air.velocity= -2,-13.7
airguard.velocity= -6,-5.7
ground.cornerpush.veloff = -14
snap=15,0
fall=1
fall.recover= 0
id=1100
kill=0
getpower=39
givepower=39
envshake.time=14
envshake.ampl=-5

[State 0, p2state]
type=targetstate
trigger1= movehit && numtarget(1100)
trigger1= target(1100),Movetype=H
ID=1100
value=1107
ignorehitpause=1
[State 0, p1state]
type=changestate
trigger1= movehit && numtarget(1100)
trigger1= target(1100),Movetype=H
value=1101
ignorehitpause=1


[State 1100,ChangeState]
type=ChangeState
trigger1=(!AnimTime)
value=0
ctrl=1
;---------------------------------------------------------------------------
;Jigoku Wari: Jump
[Statedef 1101]
type= A
movetype=I
physics=N
anim=1101
velset=0,0
ctrl=0
sprpriority=2

[State 1101,ChangeAnim]
type= ChangeAnim
trigger1 =(AnimElem = 3, > 0) && (Vel Y > -2)
value =44
persistent =0

[State 1101,PlayerPush]
type=PlayerPush
trigger1=1
value=0

[State 1101,VelSet]
type=VelSet
trigger1=(AnimElem = 3)
x=0
y=-12

[State 1101,VelAdd]
type=VelAdd
trigger1=(AnimElem = 3, > 0) || (Anim = 44)
y=0.40

[State 1101,PlaySnd]
type=PlaySnd
trigger1=(AnimElem = 3)
value=S1,8

[State 1101,ChangeState]
type=ChangeState
trigger1=(AnimElem = 3, > 8)
value=1102

[State 1101,ChangeState]
type=ChangeState
trigger1=(Vel Y > 0) && (Pos Y >= 0)
value=52

;---------------------------------------------------------------------------
;Jigoku Wari: Grab Attempt
[Statedef 1102]
type= A
movetype=A
physics=N
anim=1102
ctrl=0
juggle=0
sprpriority=2

[State 1102,ChangeAnim]
type=ChangeAnim
trigger1=(AnimElem = 2, > 0) && (AnimElem = 3, < 0) && (Pos Y >= 0)
value=1102
elem=3
persistent=0

[State 1102,PlayerPush]
type=PlayerPush
trigger1=1
value=0

[State 1102,PosSet]
type=PosSet
trigger1=(AnimElem = 3)
y=0

[State 1102,VelSet]
type=VelSet
trigger1=(AnimElem = 3)
x=0
y=0

[State 1102,VelAdd]
type=VelAdd
trigger1=(AnimElem = 2, > 0) && (AnimElem = 3, < 0)
y=0.40

[State 1102,PlaySnd]
type=PlaySnd
trigger1=(!Time)
value=S1,32

[State 1102,PlaySnd]
type=PlaySnd
trigger1=(AnimElem = 3)
value=S1,15

[State 1102,HitDef]
type=HitDef
trigger1=(AnimElem = 2, > 0)
attr=A,ST
hitflag=MAF
priority=1, Miss
sparkno=-1
hitsound=-1
guard.dist=0
snap=40,-50
p2facing=1
p1stateno=1103
p2stateno=1104
forcestand=1
fall=1
id=1102
getpower=0
givepower=0
numhits=0

[State 1102,ChangeState]
type=ChangeState
trigger1=(!AnimTime)
value=0
ctrl=1
;---------------------------------------------------------------------------
;Jigoku Wari: Success
[Statedef 1103]
type= A
movetype=A
physics=N
anim=1103
ctrl=0
sprpriority=2

[State 1100,PlaySnd]
type=PlaySnd
trigger1=!time
value=S1000,7
channel=0
[State 1100,PlaySnd]
type=PlaySnd
trigger1=!time
value=S1000,7
channel=1
[State 1100,PlaySnd]
type=PlaySnd
trigger1=!time
value=S1000,7
channel=2
[State 1100,PlaySnd]
type=PlaySnd
trigger1=!time
value=S1000,7
channel=5

[State 1103,ChangeAnim]
type=ChangeAnim
trigger1=(AnimElem = 1, > 0) && (AnimElem = 2, < 0) && (Pos Y >= 0)
value=1103
elem=2
persistent=0

[State 1103,PlayerPush]
type=PlayerPush
trigger1=1
value=0

[State 1103,NotHitBy]
type=NotHitBy
trigger1=1
value=SCA

[State 1103,PosSet]
type=PosSet
trigger1=(AnimElem = 2)
y=0

[State 1103,VelSet]
type=VelSet
trigger1=(FrontEdgeBodyDist < 50)
x=0

[State 1103,VelSet]
type=VelSet
trigger1=(AnimElem = 2)
x=0
y=0

[State 1103,VelAdd]
type=VelAdd
trigger1=(AnimElem = 1, > 0) && (AnimElem = 1, < 25)
y=0.45

[State 1103,VelAdd]
type=VelAdd
trigger1=(AnimElem = 1, > 25) && (AnimElem = 2, < 0)
y=1

[State 1103,TargetBind]
type=TargetBind
trigger1=(AnimElem = 1, > 0) && (AnimElem = 2, < 0)
time=1
id=1102
pos=-5,-90

[State 1103,PlaySnd]
type=PlaySnd
trigger1=(Pos Y >= 0)
value=S1,0
persistent=0

[State 1103,PlaySnd]
type=PlaySnd
trigger1=(Pos Y >= 0)
value=S1,5
persistent=0

[State 1103,PlaySnd]
type=PlaySnd
trigger1=(!Time)
value=S1,25

[State 1103,EnvShake]
type=EnvShake
trigger1=(Pos Y >= 0)
time=50
ampl=7
[State 0, HitAdd]
type = HitAdd
trigger1=(Pos Y >= 0)
value = 1
ignorehitpause =1
persistent = 0
[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1=(Pos Y >= 0)
value =Ifelse(var(7),-40,-100)
ID = 1102
absolute = 1
ignorehitpause =1
persistent = 0

[State 1103,Explod]
type=Explod
trigger1=(Pos Y >= 0)
anim=9310
id=9310
pos=30,0
postype=p1
facing=1
bindtime=1
vel=0,-0.5
removetime=-2
scale=1,1
sprpriority=4
ontop=0
shadow=0,0,0
ownpal=1
removeongethit= 0
persistent=0
ignorehitpause= 1
[State 1103,Explod]
type=Explod
trigger1=(Pos Y >= 0)
anim=9320
id=9320
pos=30,0
postype=p1
facing=1
bindtime=1
vel=0,-0.5
removetime=-2
scale=1,1
sprpriority=5
ontop=1
shadow=0,0,0
ownpal=1
removeongethit= 0
persistent=0
ignorehitpause= 1
[State 1103,Explod]
type=Explod
trigger1=(Pos Y >= 0)
anim=9920
id=9920
pos=30,5
postype=p1
facing=(IfElse(Random <= 499,1,-1))
vfacing=1
bindtime=1
vel=0,0
accel=0,0
random=5,10
removetime=-2
supermove=0
supermovetime= 0
pausemovetime= 0
scale=.5,.5
sprpriority=-8
ontop=0
shadow=0,0,0
ownpal=1
removeongethit= 0
persistent=0

[State 9500 Explod]
type = Explod
trigger1=(Pos Y >= 0)&&time%4&&random<=300
anim = Ifelse(random<=200,9500,Ifelse(random<=200,9510,Ifelse(random<=200,9520,Ifelse(random<=200,9530,9540))))
id = 9500
pos = 40,-40
postype = p1
bindtime = 1
vel = Ifelse(random<=500,-5,5),Random/(-120)
accel = 0,1
removetime = 20
supermovetime = 999
pausemovetime = 999
scale = IfElse(Random <= 499,.4,.2),IfElse(Random <= 499,.4,.2)
sprpriority =Ifelse(random<=500,-5,5)
ownpal = 1

[State 1103,TargetState]
type=TargetState
trigger1=(Pos Y >= 0)
value=1105
persistent=0

[State 1103,ChangeState]
type=ChangeState
trigger1=(!AnimTime)
value=1150
;---------------------------------------------------------------------------
[Statedef 1150]
type= S
movetype = I
physics = S
velset = 0, 0
anim = 1150
ctrl = 0
sprpriority = 1

[State 0, VelSet]
type = VelSet
trigger1 =animelem=2
x = -16
ignorehitpause =1

[State 1150,PlaySnd]
type=PlaySnd
trigger1=!time
value=S1,8

[State 1150,ChangeState]
type=ChangeState
trigger1 = !animtime
value=106
;---------------------------------------------------------------------------
;Ki Shield Tackle
[Statedef 1200]
type= S
movetype=A
physics=N
velset=0,0
ctrl=0
poweradd=72
juggle=6
facep2=1
sprpriority=1

[State 1200, Explod]
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

[State 1200, VarSet]
type = VarSet
trigger1 =!AILevel&& !time
var(5) = ifelse(command="a",0,ifelse(command="b",1,2))
ignorehitpause = 1
[State 1200, VarSet]
type = VarSet
trigger1 =AILevel&& !time
var(5) =0
ignorehitpause = 1

[State 1200, 1]
type = ChangeAnim
Trigger1 = Time = 0
value = ifelse(var(5)=2,1202,ifelse(var(5)=1,1201,1200))
ignorehitpause = 1

[State 1200,StateTypeSet]
type=StateTypeSet
trigger1=(AnimElem = 2, > 5)
physics=S

[State 1200,VelSet]
type=VelSet
trigger1=(AnimElem = 2)
x=15+5*var(5)
[State 0, dust]
type= makedust
trigger1 =animelemtime(2)>=10&&time%2
pos=30,0
[State 0, EnvShake]
type = EnvShake
trigger1=animelemtime(2)>=10
time=5
ampl=3
[State 0, VelMul]
type = VelMul
trigger1 =animelemtime(2)>=10
trigger2=movecontact
x = .6
[State 1200,PlaySnd]
type=PlaySnd
trigger1=(AnimElem = 2)
value=S1,21
channel=2
[State 1200,PlaySnd]
type=PlaySnd
trigger1=(AnimElem = 2)
value=S1,34
channel=5
[State 1200,PlaySnd]
type=PlaySnd
trigger1=!time
value=S1000,3
channel=1
[State 1200,PlaySnd]
type=PlaySnd
trigger1=!time
value=S1000,3
channel=0
[State 1200,PlaySnd]
type=PlaySnd
trigger1=!time
value=S1000,3
channel=3
[State 1200,PlaySnd]
type=PlaySnd
trigger1=!time
value=S1000,3
channel=4
[State 1200,Explod]
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

[State 1200,Helper]
type= Helper
trigger1 =!time&&!numhelper(9930)
helpertype =Normal
name= "Ki Shouheki"
id= 9932
pos= 0,0
postype =p1
stateno =9932
keyctrl=0
ownpal=1
ignorehitpause= 1
size.xscale=.65
size.yscale=.65

[State 1200,HitDef]
type=HitDef
trigger1=!numtarget(1400)
attr=S, SA
hitflag=MAF
guardflag=M
animtype=Hard
air.animtype= Back
priority=4, Hit
damage =80+10*var(5),12
pausetime=8,12
guard.pausetime= 8,8
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
fall.xvelocity= -1
fall.yvelocity= -5
fall.recover= 0
down.bounce=1
fall.recover=0
air.recover=0
id=1400
getpower=50
givepower=60
envshake.time=14
envshake.ampl=6
persistent=0
p2stateno=1125

[State 1200, Sparks]
type = explod
trigger1 = movecontact = 1 && numtarget
trigger1 = (target, movetype = H) && !(target, time)
anim = ifelse(moveguarded, 7105, 8010 + (random % 8))
ID = 8010
sprpriority = 5
postype = p2
pos = (target, const(size.ground.front) -10), (target, const(size.mid.pos.y))
removetime = -2
ownpal = 0
facing = -1
ignorehitpause = 1
pausemovetime = 100
supermovetime = 100

[State 1200,ChangeState]
type=ChangeState
trigger1=(!AnimTime)
value=1210
ctrl=0
;---------------------------------------------------------------------------
;Ki Shield Tackle
[Statedef 1205]
type= A
movetype=A
physics=N
velset=0,0
ctrl=0
poweradd=72
juggle=6
facep2=1
sprpriority=1

[State 1205, VarSet]
type = VarSet
trigger1 =!AILevel&& !time
var(5) = ifelse(command="x",0,ifelse(command="y",1,2))
ignorehitpause = 1
[State 1205, VarSet]
type = VarSet
trigger1 =AILevel&& !time
var(5) =0
ignorehitpause = 1

[State 1205, 1]
type = ChangeAnim
Trigger1 = Time = 0
value = ifelse(var(5)=2,1207,ifelse(var(5)=1,1206,1205))
ignorehitpause = 1

[State 1205,VelSet]
type=VelSet
trigger1=(AnimElem = 2)
x=10+3*var(5)
[State 0, VelMul]
type = VelMul
trigger1 =animelemtime(2)>=10
trigger2=movecontact
x = .8
ignorehitpause = 1
[State 1205,PlaySnd]
type=PlaySnd
trigger1=(AnimElem = 2)
value=S1,21
channel=3
[State 1205,PlaySnd]
type=PlaySnd
trigger1=(AnimElem = 2)
value=S1,34
channel=4
[State 1205,PlaySnd]
type=PlaySnd
trigger1=!time
value=S1000,3
channel=1
[State 1205,PlaySnd]
type=PlaySnd
trigger1=!time
value=S1000,3
channel=0
[State 1205,PlaySnd]
type=PlaySnd
trigger1=!time
value=S1000,3
channel=2
[State 1205,PlaySnd]
type=PlaySnd
trigger1=!time
value=S1000,3
channel=5
[State 1205,Helper]
type= Helper
trigger1 =!time&&!numhelper(9930)
helpertype =Normal
name= "Ki Shouheki"
id= 9932
pos= 0,0
postype =p1
stateno =9932
keyctrl=0
ownpal=1
ignorehitpause= 1
size.xscale=.65
size.yscale=.65

[State 1205,HitDef]
type=HitDef
trigger1=!numtarget(1400)
attr=A, SA
hitflag=MAF
guardflag=M
animtype=Hard
air.animtype= Back
priority=4, Hit
damage =80+10*var(5),12
pausetime=12,12
guard.pausetime= 8,8
sparkno=-1
guard.sparkno= -1
sparkxy=10,-90
hitsound=S1,44
guardsound=S2,7
ground.type=High
ground.slidetime= 14
ground.hittime=22
air.hittime=22
yaccel=0.35
ground.velocity= -14,-5
guard.velocity= -14
air.velocity= -14,-4
airguard.velocity= -14,-5
ground.cornerpush.veloff = 0
fall=1
fall.xvelocity= -1
fall.yvelocity= -5
fall.recover= 0
down.bounce=1
fall.recover=0
air.recover=0
id=1400
getpower=50
givepower=60
envshake.time=14
envshake.ampl=6
persistent=0
p2stateno=1125

[State 1205, Sparks]
type = explod
trigger1 = movecontact = 1 && numtarget
trigger1 = (target, movetype = H) && !(target, time)
anim = ifelse(moveguarded, 7105, 8010 + (random % 8))
ID = 8010
sprpriority = 5
postype = p2
pos = (target, const(size.ground.front) -10), (target, const(size.mid.pos.y))
removetime = -2
ownpal = 0
facing = -1
ignorehitpause = 1
pausemovetime = 100
supermovetime = 100

[State 1205,ChangeState]
type=ChangeState
trigger1=(!AnimTime)
value=50
;--------------------------------------------------------------------
[StateDef 1210]
type = S
physics = S
velset = 3,0
ctrl = 0
anim = 1210
poweradd = 0
sprpriority = 2

[State 0, dust]
type= makedust
trigger1 =time%2
pos=30,0
[State 0, EnvShake]
type = EnvShake
trigger1=!time
time=5
ampl=3
[State 100, Effect]
type = PlaySnd
trigger1=!time
value=1,21
[State 0, VelMul]
type = VelMul
trigger1 = time = 4
x = .8
[State 0, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1210, end]
type = ChangeState
trigger1=!animtime
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;Ki Shield Rush
[Statedef 1250]
type= S
movetype=A
physics=N
velset=0,0
ctrl=0
poweradd=72
juggle=6
facep2=1
sprpriority=1

[State 1250, Explod]
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

[State 1250, VarSet]
type = VarSet
trigger1 =!AILevel&&!time
var(5) = ifelse(command="a",0,ifelse(command="b",1,2))
ignorehitpause = 1
[State 1250, VarSet]
type = VarSet
trigger1 =AILevel&&!time
var(5) =ifelse(p2bodydist x>=80,2,ifelse((p2bodydist x<=20),0,1))
ignorehitpause = 1

[State 1250, 1]
type = ChangeAnim
Trigger1 = Time = 0
value = ifelse(var(5)=2,1252,ifelse(var(5)=1,1251,1250))
ignorehitpause = 1
[State 0, AngleDraw]
type = AngleDraw
trigger1 =animelemtime(2)>=0
value =30-15*var(5)
ignorehitpause =1
[State 1200,StateTypeSet]
type=StateTypeSet
trigger1=animelem=2
Statetype=A
[State 1200,VelSet]
type=VelSet
trigger1=animelem=2
x=3*var(5)
y=-8-.5*var(5)
[State 0, EnvShake]
type = EnvShake
trigger1=!time
time=6
ampl=5
[State 1250,PlaySnd]
type=PlaySnd
trigger1=(AnimElem = 2)
value=S1,21
channel=2
[State 1250,PlaySnd]
type=PlaySnd
trigger1=(AnimElem = 2)
value=S1,34
channel=3
[State 1250,PlaySnd]
type=PlaySnd
trigger1=!time
value=S1000,6
channel=1
[State 1250,PlaySnd]
type=PlaySnd
trigger1=!time
value=S1000,6
channel=0
[State 1250,PlaySnd]
type=PlaySnd
trigger1=!time
value=S1000,6
channel=4
[State 1250,PlaySnd]
type=PlaySnd
trigger1=!time
value=S1000,6
channel=5
[State 1250,Helper]
type= Helper
trigger1 =!time&&!numhelper(9930)
helpertype =Normal
name= "Ki Shouheki"
id= 9932
pos= 0,0
postype =p1
stateno =9932
keyctrl=0
ownpal=1
ignorehitpause= 1
size.xscale=.65
size.yscale=.65

[State 1250,HitDef]
type=HitDef
trigger1=!time
attr=A, SA
hitflag=MAF
guardflag=M
animtype=Hard
air.animtype= Back
priority=4, Hit
damage =80+10*var(5),12
pausetime=8,12
guard.pausetime= 8,8
sparkno=-1
guard.sparkno=-1
sparkxy=10,-90
hitsound=S1,44
guardsound=S2,7
ground.type=High
ground.slidetime= 10
ground.hittime=22
air.hittime=22
yaccel=0.35
ground.velocity= -14,-3
guard.velocity= -14
air.velocity= -14,-2
airguard.velocity= -14,-5
ground.cornerpush.veloff = 0
fall=1
fall.recover= 0
down.bounce=1
fall.recover=0
air.recover=0
id=1250
getpower=50
givepower=60
envshake.time=14
envshake.ampl=6
persistent=0

[State 1250, Sparks]
type = explod
trigger1 = movecontact = 1 && numtarget
trigger1 = (target, movetype = H) && !(target, time)
anim = ifelse(moveguarded, 7105, 8010 + (random % 8))
ID = 8010
sprpriority = 5
postype = p2
pos = (target, const(size.ground.front) -10), (target, const(size.mid.pos.y))
removetime = -2
ownpal = 0
facing = -1
ignorehitpause = 1
pausemovetime = 100
supermovetime = 100

[State 1250,ChangeState]
type=ChangeState
trigger1=(!AnimTime)
value=50

;---------------------------------------------------------------------------
;Air Ki Shield Rush
[Statedef 1255]
type= A
movetype=A
physics=N
velset=0,0
ctrl=0
poweradd=72
juggle=6
facep2=1
sprpriority=1

[State 1255, VarSet]
type = VarSet
trigger1 =!AILevel&&!time
var(5) = ifelse(command="a",0,ifelse(command="b",1,2))
ignorehitpause = 1
[State 1250, VarSet]
type = VarSet
trigger1 =AILevel&&!time
var(5) =ifelse(p2bodydist y<=-100,0,ifelse((p2bodydist y>=0),2,1))
ignorehitpause = 1
[State 1255, 1]
type = ChangeAnim
Trigger1 = Time = 0
value = ifelse(var(5)=2,1257,ifelse(var(5)=1,1256,1255))
ignorehitpause = 1
[State 0, AngleDraw]
type = AngleDraw
trigger1 =animelemtime(2)>=0
value =Ifelse(!var(5),30,Ifelse(var(5)=1,15,-15))
ignorehitpause =1

[State 1255,VelSet]
type=VelSet
trigger1=animelem=2
x=Ifelse(!var(5),3,Ifelse(var(5)=1,8,14))
y=Ifelse(var(5)=2,8,-8-1*var(5))
[State 0, EnvShake]
type = EnvShake
trigger1=!time
time=6
ampl=5
[State 1255,PlaySnd]
type=PlaySnd
trigger1=(AnimElem = 2)
value=S1,21
channel=3
[State 1255,PlaySnd]
type=PlaySnd
trigger1=(AnimElem = 2)
value=S1,34
channel=4
[State 1250,PlaySnd]
type=PlaySnd
trigger1=!time
value=S1000,11
channel=1
[State 1250,PlaySnd]
type=PlaySnd
trigger1=!time
value=S1000,11
channel=0
[State 1250,PlaySnd]
type=PlaySnd
trigger1=!time
value=S1000,11
channel=5
[State 1255,Helper]
type= Helper
trigger1 =!time&&!numhelper(9930)
helpertype =Normal
name= "Ki Shouheki"
id= 9932
pos= 0,0
postype =p1
stateno =9932
keyctrl=0
ownpal=1
ignorehitpause= 1
size.xscale=.65
size.yscale=.65

[State 1255,HitDef]
type=HitDef
trigger1=!time
attr=A, SA
hitflag=MAF
guardflag=M
animtype=Hard
air.animtype= Back
priority=4, Hit
damage =80+10*var(5),12
pausetime=12,12
guard.pausetime= 8,8
sparkno=-1
guard.sparkno=-1
sparkxy=10,-90
hitsound=S1,44
guardsound=S2,7
ground.type=High
ground.slidetime= 14
ground.hittime=22
air.hittime=22
yaccel=0.35
ground.velocity= -14,-3
guard.velocity= -14
air.velocity= -14,-2
airguard.velocity= -14,-5
ground.cornerpush.veloff = 0
fall=1
fall.recover= 0
down.bounce=1
fall.recover=0
air.recover=0
id=1250
getpower=50
givepower=60
envshake.time=14
envshake.ampl=6
persistent=0

[State 1255, Sparks]
type = explod
trigger1 = movecontact = 1 && numtarget
trigger1 = (target, movetype = H) && !(target, time)
anim = ifelse(moveguarded, 7105, 8010 + (random % 8))
ID = 8010
sprpriority = 5
postype = p2
pos = (target, const(size.ground.front) -10), (target, const(size.mid.pos.y))
removetime = -2
ownpal = 0
facing = -1
ignorehitpause = 1
pausemovetime = 100
supermovetime = 100

[State 1255,ChangeState]
type=ChangeState
trigger1 = Pos Y >= 0 && Vel Y > 0
value=1210
[State 1255,ChangeState]
type=ChangeState
trigger1=(!AnimTime)
value=50
