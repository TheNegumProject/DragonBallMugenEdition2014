;---------------------------------------------------------------------------
[Statedef 2022]
type    = S
movetype= I
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 9999
poweradd = 0
sprpriority = 2

[State 0, BindToRoot]
type = BindToRoot
trigger1 = IfElse(power >= 1500,(time%3),(time%6))
time = 1
pos = Ceil(-60+random%120),floor(-130+random%130)

[State 0, Explod]
type = Explod
trigger1 = IfElse(power >= 1500,(!(time%3)),(!(time%6)))
anim = 7223
ID = 7223
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = (rootdist x +10)/15,(rootdist Y-100)/15;IfElse(rootdist Y <= 0 && vel y <= 0,0,(((rootdist Y)-60)/14))
removetime = 15
scale = 0.45,0.45
sprpriority = Ifelse(random < 800,2,-2);([-2,2])
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1 = (root, stateno != 88887)
trigger2 = (root, movetype = H)

;---------------------------------------------------------------------------
[Statedef 2061]
physics=N
velset=0,0
anim=9999

[State 3000, Black BG]
type = Explod
trigger1 = Time = 0
removetime = 59
id = 6035
anim = 6035
pos = 0,0
postype = Left
scale = 1,1
sprpriority = -1000
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
persistent = 0
supermovetime = 60
pausemovetime =  60

[State 0, Helper]
type = Helper
trigger1 = !time&&Numhelper(2064)=0
helpertype = normal ;player
name = "charge"
ID = 2064
stateno = 2064
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
ontop=1
sprpriority=999
supermovetime=999999
pausemovetime=999999
ignorehitpause=1
size.xscale=1
size.yscale=1
[State 0, Helper]
type = Helper
trigger1 = !time&&Numhelper(2065)=0
helpertype = normal ;player
name = "charge2"
ID = 2065
stateno = 2065
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
ontop=1
sprpriority=999
supermovetime=999999
pausemovetime=999999
ignorehitpause=1
size.xscale=1
size.yscale=1
[State 0, Helper]
type = Helper
trigger1 = !time&&Numhelper(2066)=0
helpertype = normal ;player
name = "charge3"
ID = 2066
stateno = 2066
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
ontop=1
sprpriority=999
supermovetime=999999
pausemovetime=999999
ignorehitpause=1
size.xscale=.5
size.yscale=.5
[State 7260, main]
type=explod
trigger1= !time
anim=7631
ID=7260
sprpriority=5
postype=p1
removetime=20
pausemovetime=300

[State 7260, shrinkcircle]
type=modifyexplod
trigger1= 1
ID=7260
scale=2-(.05*time),2-(.05*time)

[State 7260, noshadow]
type=assertspecial
trigger1= 1
flag=noshadow
flag2=invisible
ignorehitpause=1

[State 7260, bound]
type=screenbound
trigger1= 1
value=0
[State 6110, end]
type=removeexplod
trigger1= time>=40
[State 6110, end]
type=destroyself
trigger1= time>=40
;---------------------------------------------------------------------------
[Statedef 2062]
physics=N
velset=0,0
anim=9999

[State 3000, Black BG]
type = Explod
trigger1 = Time = 0
removetime = 59
id = 6035
anim = 6035
pos = 0,0
postype = Left
scale = 1,1
sprpriority = -1000
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
persistent = 0
supermovetime = 60
pausemovetime =  60

[State 0, Helper]
type = Helper
trigger1 = !time&&Numhelper(2064)=0
helpertype = normal ;player
name = "charge"
ID = 2064
stateno = 2064
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
ontop=1
sprpriority=999
supermovetime=999999
pausemovetime=999999
ignorehitpause=1
size.xscale=1
size.yscale=1
[State 0, Helper]
type = Helper
trigger1 = !time&&Numhelper(2065)=0
helpertype = normal ;player
name = "charge2"
ID = 2065
stateno = 2065
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
ontop=1
sprpriority=999
supermovetime=999999
pausemovetime=999999
ignorehitpause=1
size.xscale=1
size.yscale=1
[State 0, Helper]
type = Helper
trigger1 = !time&&Numhelper(2066)=0
helpertype = normal ;player
name = "charge3"
ID = 2066
stateno = 2066
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
ontop=1
sprpriority=999
supermovetime=999999
pausemovetime=999999
ignorehitpause=1
size.xscale=.5
size.yscale=.5
[State 7260, main]
type=explod
trigger1= !time
anim=7641
ID=7260
sprpriority=5
postype=p1
removetime=20
pausemovetime=300

[State 7260, shrinkcircle]
type=modifyexplod
trigger1= 1
ID=7260
scale=1-(.025*time),1-(.025*time)

[State 7260, noshadow]
type=assertspecial
trigger1= 1
flag=noshadow
flag2=invisible
ignorehitpause=1

[State 7260, bound]
type=screenbound
trigger1= 1
value=0
[State 6110, end]
type=removeexplod
trigger1= time>=40
[State 6110, end]
type=destroyself
trigger1= time>=40
;---------------------------------------------------------------------------
[Statedef 2063]
physics=N
velset=0,0
anim=7652

[State 3000, Black BG]
type = Explod
trigger1 = Time = 0
removetime = 60
id = 6035
anim = 6035
pos = 0,0
postype = Left
scale = 1,1
sprpriority = -1000
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
persistent = 0
supermovetime = 60
pausemovetime =  60

[State 0, Helper]
type = Helper
trigger1 = !time&&Numhelper(2064)=0
helpertype = normal ;player
name = "charge"
ID = 2064
stateno = 2064
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
ontop=1
sprpriority=999
supermovetime=999999
pausemovetime=999999
ignorehitpause=1
size.xscale=1
size.yscale=1
[State 0, Helper]
type = Helper
trigger1 = !time&&Numhelper(2065)=0
helpertype = normal ;player
name = "charge2"
ID = 2065
stateno = 2065
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
ontop=1
sprpriority=999
supermovetime=999999
pausemovetime=999999
ignorehitpause=1
size.xscale=1
size.yscale=1
[State 0, Helper]
type = Helper
trigger1 = !time&&Numhelper(2066)=0
helpertype = normal ;player
name = "charge3"
ID = 2066
stateno = 2066
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
ontop=1
sprpriority=999
supermovetime=999999
pausemovetime=999999
ignorehitpause=1
size.xscale=.5
size.yscale=.5
[State 7260, main]
type=explod
trigger1= !time
anim=7651
ID=7260
sprpriority=5
postype=p1
removetime=20
pausemovetime=300

[State 7260, shrinkcircle]
type=modifyexplod
trigger1= 1
ID=7260
scale=2-(.05*time),2-(.05*time)

[State 2064, noshadow]
type=assertspecial
trigger1= 1
flag=noshadow
ignorehitpause=1

[State xxxx, Rotate]
type=angleset
trigger1= !time
value=6*(random%60)
[State xxxx, Rotate]
type=angleadd
trigger1= 1
value=-6

[State xxxx, Scale]
type=angledraw
trigger1= time<16
scale= (.075*time), (.075*time)
[State xxxx, Scale]
type=angledraw
trigger1= time>=16
scale=.0125*time,.0125*time
[State xxxx, Trans]
type=trans
trigger1= 1
trans=addalpha
alpha=256,256

[State 2064, bound]
type=screenbound
trigger1= 1
value=0
[State 6110, end]
type=removeexplod
trigger1= time>=40
[State 6110, end]
type=destroyself
trigger1= time>=40
;---------------------------------------------------------------------------
[Statedef 2064]
physics=N
velset=0,0
anim=ifelse(parent,stateno=2063,7650,ifelse(parent,stateno=2062,7640,7630))

[State 2065, noshadow]
type=assertspecial
trigger1= 1
flag=noshadow
ignorehitpause=1

[State xxxx, Rotate]
type=angleset
trigger1= !time
value=6*(random%60)
[State xxxx, Rotate]
type=angleadd
trigger1= 1
value=-6

[State xxxx, Scale]
type=angledraw
trigger1= time<16
scale= (.075*time), (.075*time)
[State 2065, shrinkcircle]
type=angledraw
trigger1= parent,stateno!=2063&&time>=20
scale=.25+(.075*(time-3)),.25+(.075*(time-3))
[State 2065, shrinkcircle]
type=angledraw
trigger1= parent,stateno=2063&&time>=20
scale=.025+(.05*(time-3)),.025+(.05*(time-3))
[State 2065, DestroySelf]
type = PalFx
trigger1=time>=20
add=-time*5,-time*5,-time*5
time=1

[State xxxx, Trans]
type=trans
trigger1= 1
trans=addalpha
alpha=256,256

[State 2065, bound]
type=screenbound
trigger1= 1
value=0

[State 2065, safety]
type=removeexplod
trigger1= time>=40

[State 2065, end]
type=destroyself
trigger1= time>=40
;---------------------------------------------------------------------------
[Statedef 2065]
physics=N
velset=0,0
anim=ifelse(parent,stateno=2063,7652,ifelse(parent,stateno=2062,7642,7632))

[State 2065, noshadow]
type=assertspecial
trigger1= 1
flag=noshadow
ignorehitpause=1

[State xxxx, Rotate]
type=angleset
trigger1= !time
value=6*(random%60)
[State xxxx, Rotate]
type=angleadd
trigger1= 1
value=-6

[State xxxx, Scale]
type=angledraw
trigger1=1
scale= 1-(.125*time), 1-(.125*time)

[State 2065, DestroySelf]
type = PalFx
trigger1=time=[20,42]
add=-time*20,-time*20,-time*20
time=1

[State xxxx, Trans]
type=trans
trigger1= 1
trans=addalpha
alpha=256,256

[State 2065, bound]
type=screenbound
trigger1= 1
value=0

[State 2065, safety]
type=removeexplod
trigger1= time>=40

[State 2065, end]
type=destroyself
trigger1= time>=40
;---------------------------------------------------------------------------
[Statedef 2066]
physics=N
velset=0,0
anim=ifelse(parent,stateno=2063,7653,ifelse(parent,stateno=2062,7643,7633))
sprpriority=99

[State 2064, noshadow]
type=assertspecial
trigger1= 1
flag=noshadow
ignorehitpause=1

[State xxxx, Rotate]
type=angleset
trigger1= !time
value=6*(random%60)
[State xxxx, Rotate]
type=angleadd
trigger1= 1
value=-6

[State xxxx, Scale]
type=angledraw
trigger1= time<16
scale= (.075*time), (.075*time)
[State xxxx, Scale]
type=angledraw
trigger1= time>=16
scale= 1, 1
[State xxxx, Trans]
type=trans
trigger1= 1
trans=addalpha
alpha=256,256
[State 3000, DestroySelf]
type = PalFx
trigger1=time>=35
add=-time*8,-time*8,-time*8
time=1

[State 2064, bound]
type=screenbound
trigger1= 1
value=0

[State 2064, safety]
type=removeexplod
trigger1= time>=40
[State 2064, end]
type=destroyself
trigger1= time>=45
;---------------------------------------------------------------------------
[Statedef 2055]
type    = S
movetype= I
physics = S
anim = 6010
velset = 0,0
sprpriority = 6
ctrl = 0

[State 0, BindToRoot]
type = BindToRoot
trigger1 =1
pos = 55,-120
ignorehitpause =1

[State 2055,AS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause=1
[State 2055, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 0+2*time,256
ignorehitpause =1

[State 0, AngleDraw]
type = AngleDraw
trigger1 =1
scale =0.01+.005*time , 0.01+.005*time
ignorehitpause =1

[State 2055]
type = RemoveExplod
trigger1 = root, stateno != 3200
ID = 6010
[State 2055]
type = DestroySelf
trigger1 = root, stateno != 3200

[State 2055]
type = ChangeState
trigger1 = Time = 120
value = 2070
;---------------------------------------------------------------------------
[Statedef 2070]
type    = S
movetype= I
physics = N
anim = 2070
velset = 0,0
sprpriority = 7
ctrl = 0

[State 0, HitOverride]
type=hitoverride
trigger1= 1
attr=SCA,AA,AP,AT
time=-1
stateno=2070
ignorehitpause=1
[State 0, HB]
type=hitby
trigger1= 1
value=SCA,NP,SP,HP
time=-1
ignorehitpause=1
[State 2070, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause =1
[State 2070]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause=1
[State 2070]
type = VelSet
trigger1 = 1
x = 1
y = 1

[State 2070]
type = ChangeState
trigger1 = Time = 10
value = 2071
;---------------------------------------------------------------------------
[Statedef 2071]
type    = S
movetype= A
physics = N
anim = 2071
velset = 0,0
sprpriority = 7
ctrl = 0

[State 2071, HitOverride]
type=hitoverride
trigger1= 1
attr=SCA,AA,AP,AT
time=-1
stateno=2071
ignorehitpause=1
[State 2071, HitBy]
type=hitby
trigger1= 1
value=SCA,NP,SP,HP
time=-1
ignorehitpause=1
[State 2070, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause =1
[State 2071, AS]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause=1
[State 2071]
type = PlaySnd
trigger1 = Time = 1
value = s2050, 2
channel=6

[State 2071]
type = EnvShake
trigger1 = Time = 1
time = 80
ampl = 5
freq = 100
[State 0, PlayerPush]
type = PlayerPush
trigger1 =1
value = 0
ignorehitpause =1

[State 2071]
type = VelSet
trigger1=1
x=4
y=0
[State 0, ParentVarSet]
type = ParentVarSet
trigger1= movehit && numtarget(2070)
trigger1= target(2070),Movetype=H
var(9)=1
ignorehitpause =1

[State 2071]
type = HitDef
trigger1 = Time = 0
id=2070
attr = S, HP
damage = floor(420*root,fvar(10)),150
animtype = Hard
pausetime = 2,20
guard.pausetime=1,1
sparkno = -1
guard.sparkno=-1
sparkxy = 10, 0
hitsound = -1
guard.sound=s2,8
guardflag = M
guardsound = -1
ground.type = high
ground.slidetime=100
ground.hittime=15
ground.velocity = 0,0
air.animtype = Back
air.velocity = 0,0
sprpriority=5

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

[State 0, p2state]
type=targetstate
trigger1= movehit && numtarget(2070)
trigger1= target(2070),Movetype=H
ID=2070
value=2777
ignorehitpause=1
persistent=0

[State 2071]
type = ChangeState
trigger1= movehit && numtarget(2070)
trigger1= target(2070),Movetype=H
value = 2075
[State 2071]
type = ChangeState
trigger1= Time >= 120
trigger2=moveguarded
value = 2076
;---------------------------------------------------------------------------
[Statedef 2075]
type    = S
movetype= A
physics = S
velset=0,0
anim = 2065
sprpriority = 7
ctrl=0

[State 0, NotHitBy]
type = NotHitBy
trigger1 =1
value = SCA
ignorehitpause =1
[State 2070, Trans]
type = Trans
trigger1 =animelemtime(2)<0
trans = addalpha
alpha = 256,256
ignorehitpause =1
[State 0, Trans]
type = Trans
trigger1 =animelemtime(2)>=0
trans =addalpha
alpha = 256-1*time,256
ignorehitpause =1
[State 0, AngleDraw]
type = AngleDraw
trigger1 =animelemtime(2)>=0
scale =1+.05*time,1+.05*time
ignorehitpause =1
[State 2075]
type = EnvShake
trigger1 = Time = 1
time = 100
ampl = 5
freq = 150
[State 2075]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause=1
[State 2075]
type = PlaySnd
trigger1 = Time = 1
value = s1,5
volume=255

[State 2075]
type = HitDef
trigger1 = Time = 0
attr = S, HP
id=2075
affectteam=B
damage = 350,150
animtype = Hard
pausetime = 1,10
sparkno = -1
guard.sparkno=-1
sparkxy = 10, 0
hitsound = -1
guardsound=-1
guardflag = MAF
guardsound = -1
ground.type = high
ground.slidetime = 15
ground.hittime = 15
ground.velocity = -10,-4
air.animtype = Back
air.velocity = -10,-4
fall = 1
air.recover = 0
fall.recover=0
p2stateno=2777

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

[State 2075]
type = DestroySelf
trigger1=time>=60
;---------------------------------------------------------------------------
[Statedef 2076]
type    = S
movetype= I
physics = N
velset=0,0
anim = 2075
sprpriority = 7
ctrl=0

[State 0, NotHitBy]
type = NotHitBy
trigger1 =1
value = SCA
ignorehitpause =1
[State 2070, Trans]
type = Trans
trigger1 =animelemtime(2)<0
trans = addalpha
alpha = 256,256
ignorehitpause =1
[State 0, Trans]
type = Trans
trigger1 =animelemtime(2)>=0
trans =addalpha
alpha = 256-1*time,256
ignorehitpause =1
[State 0, AngleDraw]
type = AngleDraw
trigger1 =animelemtime(2)>=0
scale =1+.05*time,1+.05*time
ignorehitpause =1
[State 2075]
type = EnvShake
trigger1 = Time = 1
time = 100
ampl = 5
freq = 150
[State 2075]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause=1
[State 2075]
type = PlaySnd
trigger1 = Time = 1
value = s1,5
volume=255

[State 2075]
type = DestroySelf
trigger1=Time>=264
;---------------------------------------------------------------------------
;Gekimetsu Dama
[Statedef 3005]
type= S
movetype=A
physics=N
velset=0,0
ctrl=0
sprpriority=5

[State 0, VarSet]
type = VarSet
trigger1=!time
var(8)=parent,var(8)
ignorehitpause=1
[State 0, HitOverride]
type=hitoverride
trigger1= 1
attr=SCA,AA,AP,AT
time=-1
stateno=Ifelse(var(4)<6,3005,3007)
ignorehitpause=1
[State 0, HB]
type=hitby
trigger1= 1
value=SCA,NP,SP,HP
time=-1
ignorehitpause=1
[State 7180, flames]
type=explod
trigger1= 1
anim=7182+random%2
ID=7762
sprpriority=6
vel=-1,Ifelse(random<=500,2,-2)
pos= -10,0
random=40,40
scale=.5,.5
ownpal=1
removeongethit = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 =!time&&!prevstateno
value = 3005

[State 0, VarAdd]
type = VarAdd
trigger1 =movecontact
var(4)=1
[State 3005,AssertSpecial]
type=AssertSpecial
trigger1=1
flag=NoShadow
ignorehitpause=1

[State 3005,VelSet]
type=VelSet
trigger1=1
x=Ifelse(var(4)<1&&!var(8),16,Ifelse(var(8)&&var(4)<1,8,4))
y=Ifelse(var(8)=1,-8,Ifelse(var(8)=2,8,0))

[State 3005,HitDef]
type=HitDef
trigger1=1
id=3005
attr=S,HP
hitflag=MAFD
guardflag=MA
animtype=Hard
priority=4, Hit
damage =floor(40**root,fvar(10)),12
pausetime=Ifelse(var(4)<5,6,8),Ifelse(var(4)<5,8,12)
guard.pausetime= 4,6
sparkno=-1
guard.sparkno= -1
sparkxy=0,0
hitsound=S1,44
guardsound=S2,8
ground.type=High
air.type=Low
ground.slidetime= 6
ground.hittime= 30
air.hittime=30
fall=var(4)>4
air.fall=1
fall.recover=0
air.recover=0
yaccel=.45
ground.velocity= Ifelse(var(4)<5,-10,-24),Ifelse(var(4)<5,0,-6)
guard.velocity= -10
air.velocity= Ifelse(var(4)<5,-7,-24),Ifelse(var(4)<5,-1,-6)
airguard.velocity= -4,-4.5
ground.cornerpush.veloff = 0
getpower=0,0
givepower=20,20
Sprpriority=5
palfx.time = 40
palfx.add =0,25,5
palfx.mul = 153,255,102
palfx.sinadd = 64,224,0,80
palfx.color=255
envshake.time=12
envshake.ampl=5

[State 0, p2state]
type=targetstate
trigger1= var(4)=6&&movehit && numtarget(3005)
trigger1= target(3005),Movetype=H
ID=3005
value=Ifelse(var(8)=2,4310,4055)
ignorehitpause=1
persistent=0
[State 7180, flames]
type = helper
trigger1 = movehit && numtarget && !numhelper(7180)
trigger1 = !(target, time) && (target, movetype = H)&&((enemynear,stateno=[5000,5050])||(enemynear,stateno=2041))
helpertype = normal
stateno = 7180
ID = 7180
name = "flames"
postype = p2
ownpal = 1
facing = -1
ignorehitpause = 1

[State 3005, Sparks]
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

[State 3005, End]
type = changestate
trigger1 = movecontact
value = Ifelse(var(4)<6,3005,3007)
[State 3005, End]
type = changestate
trigger1=Pos y>=0
value=3006
[State 9601, End]
type = destroyself
trigger1 = pos x != [ -280, 280]
;------------------------------------------------------------------------
[Statedef 3006]
type = A
physics = N
movetype = I
anim = 3006
ctrl = 0
velset = 0,0
sprpriority = 5

[State 0, AngleDraw]
type = AngleDraw
trigger1 =1
value =-45
ignorehitpause =1
[State 0, Trans]
type = Trans
trigger1 =1
trans = add
ignorehitpause =1
[State 7180, flames]
type=explod
trigger1= 1
anim=7182+random%2
ID=7762
sprpriority=6
vel=-1,Ifelse(random<=500,2,-2)
pos= -10,0
random=40,40
scale=.5,.5
ownpal=1
removeongethit = 1
[State 0, PlaySnd]
type = PlaySnd
trigger1 =!time
value = S1,41
ignorehitpause =1
[State 0, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, end]
type = destroyself
trigger1 = !animtime
;------------------------------------------------------------------------
[Statedef 3007]
type = A
physics = N
movetype = I
anim = 3006
ctrl = 0
velset = 0,0
sprpriority = 5
[State 7180, flames]
type=explod
trigger1= 1
anim=7182+random%2
ID=7762
sprpriority=6
vel=-1,Ifelse(random<=500,2,-2)
pos= -10,0
random=40,40
scale=.5,.5
ownpal=1
removeongethit = 1
[State 0, Trans]
type = Trans
trigger1 =1
trans = add
ignorehitpause =1
[State 0, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, end]
type = destroyself
trigger1 = !animtime
;---------------------------------------------------------------------------
;Minami Ginga Gouka
[Statedef 3015]
type= S
movetype=A
physics=N
velset=0,0
ctrl=0
sprpriority=5

[State 0, HitOverride]
type=hitoverride
trigger1= 1
attr=SCA,AA,AP,AT
time=-1
stateno=Ifelse(var(4)<10,3015,3016)
ignorehitpause=1
[State 0, HB]
type=hitby
trigger1= 1
value=SCA,NP,SP,HP
time=-1
ignorehitpause=1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 =!time&&!prevstateno
value = 3015

[State 0, VarAdd]
type = VarAdd
trigger1 =movecontact
var(4)=1
[State 3015,AssertSpecial]
type=AssertSpecial
trigger1=1
flag=NoShadow
ignorehitpause=1

[State 30015,VelSet]
type=VelSet
trigger1=1
x=Ifelse(var(4)<1,16,6)
y=0

[State 3015,HitDef]
type=HitDef
trigger1=1
id=3015
attr=S,HP
hitflag=MAF
guardflag=MA
animtype=Hard
priority=4, Hit
damage =floor(34*root,fvar(10)),12
pausetime=Ifelse(var(4)<10,4,6),Ifelse(var(4)<10,6,8)
guard.pausetime= 4,6
sparkno=-1
guard.sparkno= -1
sparkxy=0,0
hitsound=S1,44
guardsound=S2,8
ground.type=High
air.type=Low
ground.slidetime= 6
ground.hittime= 30
air.hittime=30
fall=var(4)>4
air.fall=1
fall.recover=0
air.recover=0
yaccel=.45
ground.velocity= Ifelse(var(4)<10,-10,-54),Ifelse(var(4)<10,0,-6)
guard.velocity= -10
air.velocity= Ifelse(var(4)<10,-7,-54),Ifelse(var(4)<10,-1,-6)
airguard.velocity= -4,-4.5
ground.cornerpush.veloff = 0
getpower=0,0
givepower=10,10
Sprpriority=5
palfx.time = 40
palfx.add =0,25,5
palfx.mul = 153,255,102
palfx.sinadd = 64,224,0,80
palfx.color=255
envshake.time=12
envshake.ampl=5

[State 0, p2state]
type=targetstate
trigger1=var(4)=10&&movehit && numtarget(3015)
trigger1=target(3015),Movetype=H
ID=3015
value=4060
ignorehitpause=1
persistent=0
[State 7180, flames]
type = helper
trigger1 = movehit && numtarget && !numhelper(7180)
trigger1 = !(target, time) && (target, movetype = H)&&((enemynear,stateno=[5000,5050])||(enemynear,stateno=4060))
helpertype = normal
stateno = 7180
ID = 7180
name = "flames"
postype = p2
ownpal = 1
facing = -1
ignorehitpause = 1

[State 3005, Sparks]
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

[State 3005, End]
type = changestate
trigger1 = movecontact
value = Ifelse(var(4)<10,3015,3016)
[State 9601, End]
type = destroyself
trigger1 = pos x != [ -280, 280]
;------------------------------------------------------------------------
[Statedef 3016]
type = A
physics = N
movetype = I
anim = 3016
ctrl = 0
velset = 0,0
sprpriority = 5

[State 0, Trans]
type = Trans
trigger1 =1
trans = add
ignorehitpause =1

[State 0, PlaySnd]
type = PlaySnd
trigger1 =!time
value = S1,41
ignorehitpause =1
[State 0, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, end]
type = destroyself
trigger1 = !animtime
;---------------------------------------------------------------------------
;Hold Effect
[Statedef 3025]
physics=N
velset=0,0
anim=9602
sprpriority=5

[State 7180, flames]
type=explod
trigger1= 1
anim=7182+random%2
ID=7762
sprpriority=6
vel=-1,Ifelse(random<=500,2,-2)
pos= -10,0
random=40,40
scale=.5,.5
ownpal=1
removeongethit = 1

[State 3025,AssertSpecial]
type= AssertSpecial
trigger1 =1
flag=NoShadow
ignorehitpause=1
[State 0, ScreenBound]
type = ScreenBound
trigger1 =1
value = 1
movecamera = 0,0
ignorehitpause =1

[State 3025,BindToRoot]
type=BindToRoot
trigger1=root,animelemtime(1)>=0&&root,animelemtime(2)<0
pos=-20,-80
[State 3025,BindToRoot]
type=BindToRoot
trigger1=root,animelemtime(2)>=0&&root,animelemtime(3)<0
pos=-40,-80
[State 3025,BindToRoot]
type=BindToRoot
trigger1=root,animelemtime(3)>=0&&root,animelemtime(4)<0
pos=30,-100
[State 3025,BindToRoot]
type=BindToRoot
trigger1=root,animelemtime(4)>=0
pos=70,-100

[State 3025,DestroySelf]
type=DestroySelf
trigger1=root,Movetype=H
trigger2=root,stateno!=3021
trigger3=root,stateno=3021&&root,animelemtime(4)>=15
;---------------------------------------------------------------------------
[Statedef 3030]
physics=N
velset=0,0
anim=9602
sprpriority=5

[State 0, FX]
type=explod
trigger1=random<=400
anim=Ifelse(random<=800,9830,9820)
ID=9820
sprpriority=6
vel=Ifelse(random<=500,1,-1),Ifelse(random<=500,2,-2)
accel=0,-1
pos= -10,0
random=40,40
scale=.2,.2
ownpal=0
removeongethit = 1

[State 3025,AssertSpecial]
type= AssertSpecial
trigger1 =1
flag=NoShadow
ignorehitpause=1
[State 0, ScreenBound]
type = ScreenBound
trigger1 =1
value = 1
movecamera = 0,0
ignorehitpause =1
[State 0, Trans]
type = Trans
trigger1 =1
trans = addalpha
alpha = 0+4*time,256
ignorehitpause =1
[State 0, AngleDraw]
type = AngleDraw
trigger1 =time<50
scale =.25+.0125*time,.25+.0125*time
[State 0, AngleDraw]
type = AngleDraw
trigger1 =time=50
scale =1,1
[State 3025,BindToRoot]
type=BindToRoot
trigger1=1
pos=0,-90
[State 0, ChangeState]
type = ChangeState
trigger1 =time>=120
value =3031
[State 3025,DestroySelf]
type=DestroySelf
trigger1=root,stateno!=191
;---------------------------------------------------------------------------
[Statedef 3031]
physics=N
velset=0,0
sprpriority=5

[State 0, FX]
type=explod
trigger1=random<=400
anim=Ifelse(random<=800,9830,9820)
ID=9820
sprpriority=6
vel=Ifelse(random<=500,1,-1),Ifelse(random<=500,2,-2)
accel=0,-1
pos= -10,0
random=40,40
scale=.2,.2
ownpal=0
removeongethit = 1

[State 3025,AssertSpecial]
type= AssertSpecial
trigger1 =1
flag=NoShadow
ignorehitpause=1
[State 0, ScreenBound]
type = ScreenBound
trigger1 =1
value = 1
movecamera = 0,0
ignorehitpause =1
[State 0, Trans]
type = Trans
trigger1 =1
trans = addalpha
alpha = 256-2*time,256
ignorehitpause =1
[State 0, AngleDraw]
type = AngleDraw
trigger1 =time>40
scale =1-.0075*time,1-.0075*time

[State 3025,BindToRoot]
type=BindToRoot
trigger1=1
pos=0,-90

[State 3025,DestroySelf]
type=DestroySelf
trigger1=root,stateno!=191
;---------------------------------------------------------------------------
;CAMERA FOCUS
[Statedef 6001]
type = S
physics  = S
anim = 0
ctrl = 0

[state 2906,TURN]
type=turn
trigger1=ishelper(6001)
trigger1=facing!=root,facing
ignorehitpause=1

[State 4]
type = VelSet
trigger1 = parent,pos X > 0
x = ifelse(facing = 1,4,-4)

[State 4]
type = VelSet
trigger1 = parent,pos X < 0
x = ifelse(facing = 1,-4,4)

[State 4]
type = VelSet
trigger1 = parent,pos X = [-5,5]
x = 0

[State 3000, WIDTH]
type = Width
trigger1 = 1
value = 1,1

[State 181, NHB]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 1000,AS]
type = AssertSpecial
Trigger1 = 1
flag = invisible
flag2 = noshadow

[State 210, 3]
type = ScreenBound
trigger1 =1
value =1
movecamera = 320,0

[State 210, 3]
type = PlayerPush
trigger1 =1
value = 0

[State 7110, Destroyself]
type = destroyself
trigger1 = Time = 50
trigger1 = enemy, Life >= 1
trigger2=numhelper(6001)>=2
;====================< ARMOR STATE >====================
[StateDef 6000]
ctrl=0
physics=N
velset=0
sprpriority=-5

[State 6000, Bind]
type=BindToRoot
trigger1=1
facing=1
pos=0,0

[State 6000, Hit]
type=ChangeAnim
trigger1=SelfAnimExist(Root,Anim)
value=Root,Anim
elem=Root,AnimElemNo(0)

[State 6000, STypsetS]
type=StateTypeSet
trigger1=Root,StateType=S
StateType=S
[State 6000, STypsetC]
type=StateTypeSet
trigger1=Root,StateType=C
StateType=C
[State 6000, STypsetA]
type=StateTypeSet
trigger1=Root,StateType=A
StateType=A
[State 6000, STypsetL]
type=StateTypeSet
trigger1=Root,StateType=L
StateType=L

[State 6000, MTypsetA]
type=StateTypeSet
trigger1=Root,MoveType=A
MoveType=A
[State 6000, MTypsetI]
type=StateTypeSet
trigger1=Root,MoveType=I
MoveType=I
[State 6000, MTypsetH]
type=StateTypeSet
trigger1=Root,MoveType=H
MoveType=H

[State 6000, No-show]
type=AssertSpecial
trigger1=1
flag=invisible
flag2=NoShadow
ignorehitpause=1

[State 6000, NotHitBy]
type = NotHitBy
trigger1 = parent, var(13) = 3
value = SCA
ignorehitpause = 1

[State 6000, NHB]
type = NotHitBy
trigger1 = 1
value = ,AT,SA,SP,HA,HP
time = -1
ignorehitpause = 1
[State 6000, HO]
type = HitOverride
trigger1 = 1
attr = SCA, AA,AP,AT
time = -1
stateno = 6005
ignorehitpause = 1
[State 0, destroyself]
type = destroyself
trigger1 = parent, stateno = [120,155]
trigger2 = parent,stateno = [5000,5150]
ignorehitpause = 1
;-----------------------------------------------------------------------
[StateDef 6005]
ctrl = 0
physics = N
velset = 0
sprpriority = -5

[State 6005, PVA]
type=ParentVarAdd
trigger1=!time
var(6)=1
ignorehitpause=1
[State 6005, PVA]
type=ParentVarAdd
trigger1=!time
var(13)=1
ignorehitpause=1
[State 6005, PVS]
type = ParentVarSet
triggerall=parent,var(13)!=3
trigger1=1
var(20)=GetHitVar(damage)
ignorehitpause=1

[State 6005, Change]
type = ChangeState
trigger1 = 1
value = 6000

;-------------------------------------------------------------------------------
;Hyper BG Horizontal
[Statedef 6031]
physics=N
anim=6034
Sprpriority=-99999

[State 0, ScreenBound]
type = ScreenBound
trigger1 =1
value = 1
[State 0, PosSet]
type = PosSet
trigger1 =1
x =ceil(pos x-screenpos x+160)
y =ceil(pos y-screenpos y+120)
ignorehitpause=1

[State 6031, end]
type=destroyself
trigger1 = root,MoveType = H
trigger2 = Root,StateNo != [3000,4999]
trigger3 = winko
trigger4 = Numhelper(6032)
trigger5 = Enemy,Numhelper(6032)
trigger6 = Enemy,Numhelper(6034)
trigger7 = Enemy,Numhelper(7510)
trigger8 = Numhelper(6034)>=2
ignorehitpause=1
;---------------------------------------------------------------------------
;Lv1 Portrait
[Statedef 6033]
physics=N
velset=0,0
anim=6033
sprpriority = -999
[State 6033, Black BG]
type = Explod
trigger1 = Time = 0
removetime = 59
id = 6035
anim = 6035
pos = 0,0
postype = Left
scale = 1,1
sprpriority = -1000
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
persistent = 0
supermovetime = 60
pausemovetime =  6
[State 6033, Bind]
type=posset
trigger1= 1
y=ceil(pos y-screenpos y)
[State 6033, noshadow]
type=assertspecial
trigger1= 1
flag=noshadow
ignorehitpause=1
[State 6033, Scale]
type=angledraw
trigger1= time>=22
scale= .75+.0125*time, .75+.0125*time
[State 6033, DestroySelf]
type = PalFx
trigger1=time>=41
add=-time*3,-time*3,-time*3
time=1
[State 6033, safe]
type=removeexplod
trigger1= time>=59
trigger2=root,movetype=H
[State 6033, Final]
type=destroyself
trigger1= time>=59
trigger2=root,movetype=H
;---------------------------------------------------------------------------
;Lv2 Portrait
[Statedef 6036]
physics=N
velset=0,0
anim=Ifelse(root,stateno=3010,6036,6037)
sprpriority = -999
[State 6036, Black BG]
type = Explod
trigger1 = Time = 0
removetime = 59
id = 6035
anim = 6035
pos = 0,0
postype = Left
scale = 1,1
sprpriority = -1000
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
persistent = 0
supermovetime = 60
pausemovetime =  6
[State 6036, Bind]
type=posset
trigger1= 1
y=ceil(pos y-screenpos y)
[State 6036, noshadow]
type=assertspecial
trigger1= 1
flag=noshadow
ignorehitpause=1
[State 6036, Scale]
type=angledraw
trigger1= time>=22
scale= .75+.0125*time, .75+.0125*time
[State 6036, DestroySelf]
type = PalFx
trigger1=time>=41
add=-time*3,-time*3,-time*3
time=1
[State 6036, safe]
type=removeexplod
trigger1= time>=59
trigger2=root,movetype=H
[State 6036, Final]
type=destroyself
trigger1= time>=59
trigger2=root,movetype=H
;-------------------------------------------------------------------------------
;Blowup-1
[Statedef 6038]
physics=N
anim=20002
Sprpriority=9999

[State 0, ScreenBound]
type = ScreenBound
trigger1 =1
value = 1
ignorehitpause =1
[State 0, PosSet]
type = PosSet
trigger1 =1
x =ceil(pos x-screenpos x+160)
y =ceil(pos y-screenpos y+120)
ignorehitpause=1
[State 0, ChangeState]
type = ChangeState
trigger1 =animelem=47
value =9633
ignorehitpause =1

[State 6038, end]
type=destroyself
trigger1=!animtime
ignorehitpause=1
;-------------------------------------------------------------------------------
;Blowup-2
[Statedef 6039]
physics=N
anim=20000
Sprpriority=9999

[State 0, ScreenBound]
type = ScreenBound
trigger1 =1
value = 1
ignorehitpause =1
[State 0, PosSet]
type = PosSet
trigger1 =1
x =ceil(pos x-screenpos x+160)
y =ceil(pos y-screenpos y+120)
ignorehitpause=1
[State 0, PlaySnd]
type = PlaySnd
trigger1 =time=10
value = S1,45
channel = 24

[State 0, ChangeState]
type = ChangeState
trigger1 =animelem=226
value =9633
ignorehitpause =1

[State 6039, end]
type=destroyself
trigger1=!animtime
ignorehitpause=1
;-------------------------------------------------------------------------------
;Blowup-2
[Statedef 6040]
physics=N
anim=20003
Sprpriority=9999

[State 0, ScreenBound]
type = ScreenBound
trigger1 =1
value = 1
ignorehitpause =1
[State 0, PosSet]
type = PosSet
trigger1 =1
x =ceil(pos x-screenpos x+160)
y =ceil(pos y-screenpos y+120)
ignorehitpause=1
[State 0, PlaySnd]
type = PlaySnd
trigger1 =!time
value = S2050,2
channel = 24
[State 0, PlaySnd]
type = PlaySnd
trigger1 =!time
value = S1,5
channel = 23
[State 0, ChangeState]
type = ChangeState
trigger1 =animelem=65
value =9633
ignorehitpause =1

[State 6039, end]
type=destroyself
trigger1=!animtime
ignorehitpause=1
;========================<FIRE>=============================
[Statedef 7180]
physics=N
velset=0,0
anim=9999
sprpriority=4
[State 7180, Assert]
type=assertspecial
trigger1= 1
flag=noshadow
ignorehitpause=1
[State 7180, flames]
type=explod
trigger1= 1
anim=7182+random%2
ID=7182
sprpriority=3
postype=p2
vel=-.2,-.75
pos= (enemynear,const(size.mid.pos.x)), ifelse((enemynear,statetype=L), 0, (enemynear,const(size.mid.pos.y) + 10))
random=40,40
scale=.5,.5
ownpal=1
[State 7180, Pos]
type=posadd
trigger1= 1
x=ceil(p2dist x)
y=ceil(p2dist y)

[State End]
type=destroyself
triggerall= numenemy
trigger1= enemynear,ctrl
trigger2= enemynear,movetype!=H || enemynear,stateno=5300
trigger3= enemynear,statetype=L && (enemynear,stateno!=[5080,5081])
trigger4= !numenemy || time>=120
;-------------------------------------------------------------------------------
;========================<Lv3 SUPERCHARGE PORTRAIT>=============================
[Statedef 7510]
physics=N
anim=9999
[State 3000, Black BG]
type = Explod
trigger1 = Time = 0
removetime = 59
id = 6035
anim = 6035
pos = 0,0
postype = Left
scale = 1,1
sprpriority = -1000
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
persistent = 0
supermovetime = 60
pausemovetime =  6
[State 7510, assert]
type=assertspecial
trigger1=1
flag=invisible
flag2=nobardisplay
ignorehitpause=1
[State 7510, portrait]
type=explod
trigger1=!time
anim=Ifelse(root,life<=333&&root,stateno!=3200,7511,Ifelse(root,stateno=3200,7510,7512))
ID=7510
postype=back
pos=160,120
under=-990
bindtime=-1
removetime=60
pausemovetime=300
supermovetime=300
[State 7510, shrink]
type=modifyexplod
trigger1=time<45
ID=7510
scale=.5,.5
[State 7510, shrink]
type=modifyexplod
trigger1=time>=45
ID=7510
scale=.5225+(.13*(time-45)),.5225+(.13*(time-45))
[State 7510, fade]
type=palfx
trigger1=time=45
time=15
sinadd=-255,-255,-255,60
[State 7510, safety]
type=removeexplod
trigger1=time>=61
[State 7510, end]
type=destroyself
trigger1=time>=61
;============================ JUMP DUST =================
[Statedef 8100]
type=S
anim=9999
velset=0,0

[State 8100, Bind]
type=bindtoroot
trigger1= time

[State 8100, Dust]
type=explod
trigger1= !time
anim=8100
sprpriority=3
postype=p1
pos=0,ceil(pos y)
scale=.5,.5
pausemovetime=-1
supermovetime=-1
ownpal=1

[State 8100, Dust]
type=explod
trigger1= !time || time=2 || time=6
anim=8101
sprpriority=3
postype=p1
scale=.5,.5
pausemovetime=-1
supermovetime=-1
ownpal=1

[State 8100, End]
type=destroyself
trigger1= time>=7
;---------------------------------------------------------------------------
[Statedef 8885]
type = A
movetype = I
physics = N
ctrl = 0
anim = 8885
velset = 0,0
sprpriority = 2

[State 0, EnvShake]
type = EnvShake
trigger1 =timemod=4,0
time = 3
ampl = 5
ignorehitpause =1

[State 6005, BindToParent]
type = BindToParent
trigger1 = 1
pos = 5,5

[State 6005,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 6005, 1]
type = Trans
trigger1 = 1
trans = add
ignorehitpause=1

[State 6005, Voice]
type = Playsnd
trigger1 = Timemod=50,0
value = 6000,0
channel = 13

[State 6005, Explod]
type = Explod
trigger1=Time=0&&!NumExplod(8884)
anim=8886
id=8884
pos=0,-5
scale=.5,.5
postype=P1
sprpriority=-1
bindtime=-1
ownpal=1
removetime=-1
facing=1
pausemovetime=-1
supermovetime=-1
persistent=0

[State 6005, scale]
type=AngleDraw
trigger1=1
scale=.5,.1+parent,power*.00025

[State 6005, Voice]
type = Stopsnd
trigger1=Root,StateNo!=88887
channel=13
[State -2, StopSnd]
type = StopSnd
trigger1=Root,StateNo!=88887
channel = 21
[State -2, StopSnd]
type = StopSnd
trigger1=Root,StateNo!=88887
channel = 20
[State -2, StopSnd]
type = StopSnd
trigger1=Root,StateNo!=88887
channel = 22
[State 6005, RemoveExplod]
type=RemoveExplod
trigger1=Root,StateNo!=88887
id=8884
ignorehitpause=1

[State 6005, DestroySelf]
type=DestroySelf
trigger1=Root,StateNo!=88887
;---------------------------------------------------------------------------
;------------------------------------------------------
[Statedef 8886,pow]
type= S
movetype=I
physics=N
anim=9999
velset=0,0
ctrl=0

[State 8886,AssertSpecial]
type=AssertSpecial
trigger1=1
flag=NoShadow
flag2=Invisible

[State 0, Explod]
type = Explod
trigger1=timemod=125,0
anim = 9202
ID = 9202
pos = 5,10
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = 1
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 0

[State 8886,Pow]
type=Explod
trigger1=timemod=20,0
anim=9201
id=9201
pos=10,-30
postype=p1
facing=-1
vfacing=1
bindtime=-1
scale=.5,.5
sprpriority=3
ontop=0
shadow=0,0,0
ownpal=1
removeongethit= 0

[State 8886, RemoveExplod]
type = RemoveExplod
trigger1=root,stateno!=88887
ignorehitpause =1
[State 8886,DestroySelf]
type=DestroySelf
trigger1=root,stateno!=88887
;===========================================================================
;-| Effects |---------------------------------------------------------------
;---------------------------------------------------------------------------
;Flame1: Yellow
[Statedef 9200,flama]
type= S
movetype=I
physics=N
anim=9200
velset=0,0
ctrl=0
sprpriority=5

[State 9200,AssertSpecial]
type=AssertSpecial
trigger1=timemod=10,0
flag=Invisible
[State 0,AssertSpecial]
type= AssertSpecial
trigger1 =1
flag=GlobalNoShadow
ignorehitpause=1
[State 9200,BindToParent]
type=BindToParent
trigger1=1
pos=5,-5

[State 0, Explod]    ;;;;;;;;;;;;PISO
type = Explod
trigger1 = (Time = 0)
anim = 9202
ID = 9202
pos = 5,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 2,1.25
sprpriority = 6
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 8000,Pow]
type=Explod
trigger1=(Time = 5)
anim=9201
id=9201
pos=0,10
postype=p1
facing=-1
vfacing=1
bindtime=5
scale=1,1
sprpriority=5
ontop=0
shadow=0,0,0
ownpal=1
removeongethit= 0

[State 8000,Pow]
type=Explod
trigger1=(Time = 335)
anim=9201
id=9201
pos=0,5
postype=p1
facing=-1
vfacing=1
bindtime=5
scale=1,1
sprpriority=5
ontop=0
shadow=0,0,0
ownpal=1
removeongethit= 0

[State 8000, Screen]
type=Explod
trigger1=(Time = 2)
anim=9732
id=9732
pos=0,2
postype=p1
facing=-1
vfacing=1
bindtime=5
scale=.5,.5
sprpriority=5
ontop=1
shadow=0,0,0
ownpal=1
removeongethit= 0

[State 9200,DestroySelf]
type=DestroySelf
trigger1=(Parent, StateNo != 8030) && (Parent, StateNo != [191,193])&&(parent,stateno!=3351)
trigger2=((Parent, StateNo = 3000) && (Parent, AnimElem = 4)) || ((Parent, StateNo = 3010) && (Parent, AnimElem = 7))
trigger3=((Parent, StateNo = 191) && (Parent, AnimElem = 7)) || ((Parent, StateNo = 192) && (Parent, AnimElem = 2))
trigger4=(root, StateNo = 3351) && (root, AnimElem = 8,>=50)
;---------------------------------------------------------------------------
;Flame1: Yellow
[Statedef 9201,flama]
type= S
movetype=I
physics=N
anim=9201
velset=0,0
ctrl=0
sprpriority=5

[State 0,AssertSpecial]
type= AssertSpecial
trigger1 =1
flag=GlobalNoShadow
ignorehitpause=1
[State 9200,BindToParent]
type=BindToParent
trigger1=1
pos=5,-5

[State 0, Explod]    ;;;;;;;;;;;;PISO
type = Explod
trigger1=!time
anim = 9202
ID = 9202
pos = 5,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, Explod]    ;;;;;;;;;;;;PISO
type = Explod
trigger1=!time
anim = 9200
ID = 9200
pos = 5,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -1
scale = 1,1
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, RemoveExplod]
type = RemoveExplod
trigger1=root,stateno!=3000&&root,stateno!=182&&root,stateno!=3150
trigger2,root,movetype=H
trigger3=root,stateno=3150&&root,animelemtime(3)>=0
ignorehitpause =1

[State 9200,DestroySelf]
type=DestroySelf
trigger1=root,stateno!=3000&&root,stateno!=182&&root,stateno!=3150
trigger2=root,movetype=H
trigger3=root,stateno=3150&&root,animelemtime(3)>=0
;---------------------------------------------------------------------------
;Flame1: Yellow
[Statedef 9202]
type= S
movetype=I
physics=N
anim=9200
velset=0,0
ctrl=0
sprpriority=5

[State 0,AssertSpecial]
type= AssertSpecial
trigger1 =1
flag=GlobalNoShadow
ignorehitpause=1
[State 9200,BindToParent]
type=BindToParent
trigger1=1
pos=5,-5

[State 0, RemoveExplod]
type = RemoveExplod
trigger1=root,stateno!=3000&&root,stateno!=182&&root,stateno!=3150&&root,stateno!=3300
trigger2,root,movetype=H
trigger3=root,stateno=3150&&root,animelemtime(3)>=0
ignorehitpause =1

[State 9200,DestroySelf]
type=DestroySelf
trigger1=root,stateno!=3000&&root,stateno!=182&&root,stateno!=3150&&root,stateno!=3300
trigger2=root,movetype=H
trigger3=root,stateno=3150&&root,animelemtime(3)>=0
;---------------------------------------------------------------------------
;Rock1
[Statedef 9500]
type= S
movetype=I
physics=N
anim=9500
ctrl=0
sprpriority=0

[State 9500,NotHitBy]
type=NotHitBy
trigger1=1
value=SCA

[State 9500,SprPriority]
type=SprPriority
trigger1=(!Time)
value=(IfElse(Random <= 499,3,-3))
[State 9500,VarRandom]
type=VarRandom
trigger1=(!Time)
v=0
range=-200,200
[State 0, AngleDraw]
type = AngleDraw
trigger1 =1
value = 1+.5*time
ignorehitpause =1

[State 9500,VarSet]
type=VarSet
trigger1=(!Time)
var(1)=(Parent, StateNo)

[State 9500,PosSet]
type=PosSet
trigger1=(!Time)
x=root,pos x-100+random%200
y=0

[State 9500,VelSet]
type=VelSet
trigger1=(Time = 1)
x=(IfElse(Random <= 799,0,IfElse((Random = [800,900]),-0.2,0.2)))
y=(IfElse(Random <= 499,-1.5,-2.5))

[State 9500,VelSet]
type=VelSet
triggerall=(Pos Y >= -125)
trigger1=((Root, StateNo = 3000) && (Root, AnimElem = 4)) || ((Root, StateNo = 3010) && (Root, AnimElem = 7))
x=3
y=0

[State 9500,VelAdd]
type=VelAdd
trigger1=(Vel X >= 3)
x=0.75

[State 9500,VelAdd]
type=VelAdd
trigger1=(Parent, StateNo != Var(1))
y=0.05

[State 0, ChangeState]
type = ChangeState
trigger1 =(Pos Y >= 1)
value =9505
;---------------------------------------------------------------------------
[Statedef 9505]
type=S
movetype=I
physics=N
ctrl=0
velset=0,0

[State 0, VarRandom]
type = VarRandom
trigger1 =1
v =12
range = 0,1
ignorehitpause =1
[State 0, VarSet]
type = VarSet
trigger1=1
var(12)=0=var(12)=-1
ignorehitpause =1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1
[State 0, AngleDraw]
type = AngleDraw
trigger1=!time
value =Ifelse(random<=200,0,Ifelse(random<=200,45,Ifelse(random<=200,90,Ifelse(random<=200,135,180))))*var(12)
ignorehitpause =1
[State 0, PosSet]
type = PosSet
trigger1 =!time
y = 1+random%3
[State 0, PlaySnd]
type = PlaySnd
trigger1 =!time
value = S1,20
[State 0]
type = AssertSpecial
trigger1=1
flag =noshadow
ignorehitpause=1
persistent=1
[State 0, Trans]
type = Trans
trigger1 =time>=60
trans = addalpha
alpha = 256-2*time,256

[State 0, DestroySelf]
type = DestroySelf
trigger1=time>=70
;---------------------------------------------------------------------------
;Rock2
[Statedef 9510]
type= S
movetype=I
physics=N
anim=9510
ctrl=0
sprpriority=0

[State 9510,NotHitBy]
type=NotHitBy
trigger1=1
value=SCA
[State 0, AngleDraw]
type = AngleDraw
trigger1 =1
value = 1-.5*time
ignorehitpause =1
[State 9510,SprPriority]
type=SprPriority
trigger1=(!Time)
value=(IfElse(Random <= 499,3,-3))
[State 9510,VarRandom]
type=VarRandom
trigger1=(!Time)
v=0
range=-200,200

[State 9510,VarSet]
type=VarSet
trigger1=(!Time)
var(1)=(Parent, StateNo)

[State 9500,PosSet]
type=PosSet
trigger1=(!Time)
x=root,pos x-100+random%200
y=0
[State 9510,VelSet]
type=VelSet
trigger1=(Time = 1)
x=(IfElse(Random <= 799,0,IfElse((Random = [800,900]),-0.2,0.2)))
y=(IfElse(Random <= 499,-1.5,-2.5))

[State 9510,VelSet]
type=VelSet
triggerall=(Pos Y >= -125)
trigger1=((Root, StateNo = 3000) && (Root, AnimElem = 4)) || ((Root, StateNo = 3010) && (Root, AnimElem = 7))
x=3
y=0

[State 9510,VelAdd]
type=VelAdd
trigger1=(Vel X >= 3)
x=0.75

[State 9510,VelAdd]
type=VelAdd
trigger1=(Parent, StateNo != Var(1))
y=0.05

[State 0, ChangeState]
type = ChangeState
trigger1 =(Pos Y >= 1)
value =9505
;---------------------------------------------------------------------------
;Rock3
[Statedef 9520]
type= S
movetype=I
physics=N
anim=9520
ctrl=0
sprpriority=0

[State 9520,NotHitBy]
type=NotHitBy
trigger1=1
value=SCA
[State 0, AngleDraw]
type = AngleDraw
trigger1 =1
value = 1+.5*time
ignorehitpause =1

[State 9520,SprPriority]
type=SprPriority
trigger1=(!Time)
value=(IfElse(Random <= 499,3,-3))
[State 9520,VarRandom]
type=VarRandom
trigger1=(!Time)
v=0
range=-200,200

[State 9520,VarSet]
type=VarSet
trigger1=(!Time)
var(1)=(Parent, StateNo)

[State 9500,PosSet]
type=PosSet
trigger1=(!Time)
x=root,pos x-100+random%200
y=0

[State 9520,VelSet]
type=VelSet
trigger1=(Time = 1)
x=(IfElse(Random <= 799,0,IfElse((Random = [800,900]),-0.2,0.2)))
y=(IfElse(Random <= 499,-1.5,-2.5))

[State 9520,VelSet]
type=VelSet
triggerall=(Pos Y >= -125)
trigger1=((Root, StateNo = 3000) && (Root, AnimElem = 4)) || ((Root, StateNo = 3010) && (Root, AnimElem = 7))
x=3
y=0

[State 9520,VelAdd]
type=VelAdd
trigger1=(Vel X >= 3)
x=0.75

[State 9520,VelAdd]
type=VelAdd
trigger1=(Parent, StateNo != Var(1))
y=0.05

[State 0, ChangeState]
type = ChangeState
trigger1 =(Pos Y >= 1)
value =9505
;---------------------------------------------------------------------------
;Rock4
[Statedef 9530]
type= S
movetype=I
physics=N
anim=9530
ctrl=0
sprpriority=0

[State 9530,NotHitBy]
type=NotHitBy
trigger1=1
value=SCA
[State 0, AngleDraw]
type = AngleDraw
trigger1 =1
value = 1-.5*time
ignorehitpause =1
[State 9530,SprPriority]
type=SprPriority
trigger1=(!Time)
value=(IfElse(Random <= 499,3,-3))
[State 9530,VarRandom]
type=VarRandom
trigger1=(!Time)
v=0
range=-200,200

[State 9530,VarSet]
type=VarSet
trigger1=(!Time)
var(1)=(Parent, StateNo)

[State 9500,PosSet]
type=PosSet
trigger1=(!Time)
x=root,pos x-100+random%200
y=0
[State 9530,VelSet]
type=VelSet
trigger1=(Time = 1)
x=(IfElse(Random <= 799,0,IfElse((Random = [800,900]),-0.2,0.2)))
y=(IfElse(Random <= 499,-1.5,-2.5))

[State 9530,VelSet]
type=VelSet
triggerall=(Pos Y >= -125)
trigger1=((Root, StateNo = 3000) && (Root, AnimElem = 4)) || ((Root, StateNo = 3010) && (Root, AnimElem = 7))
x=3
y=0

[State 9530,VelAdd]
type=VelAdd
trigger1=(Vel X >= 3)
x=0.75

[State 9530,VelAdd]
type=VelAdd
trigger1=(Parent, StateNo != Var(1))
y=0.05

[State 0, ChangeState]
type = ChangeState
trigger1 =(Pos Y >= 1)
value =9505
;---------------------------------------------------------------------------
;Rock5
[Statedef 9540]
type= S
movetype=I
physics=N
anim=9540
ctrl=0
sprpriority=0

[State 9540,NotHitBy]
type=NotHitBy
trigger1=1
value=SCA

[State 9540,SprPriority]
type=SprPriority
trigger1=(!Time)
value=(IfElse(Random <= 499,3,-3))
[State 9540,VarRandom]
type=VarRandom
trigger1=(!Time)
v=0
range=-200,200
[State 0, AngleDraw]
type = AngleDraw
trigger1 =1
value = 1+.5*time
ignorehitpause =1
[State 9540,VarSet]
type=VarSet
trigger1=(!Time)
var(1)=(Parent, StateNo)

[State 9500,PosSet]
type=PosSet
trigger1=(!Time)
x=root,pos x-100+random%200
y=0

[State 9540,VelSet]
type=VelSet
trigger1=(Time = 1)
x=(IfElse(Random <= 799,0,IfElse((Random = [800,900]),-0.2,0.2)))
y=(IfElse(Random <= 499,-1.5,-2.5))

[State 9540,VelSet]
type=VelSet
triggerall=(Pos Y >= -125)
trigger1=((Root, StateNo = 3000) && (Root, AnimElem = 4)) || ((Root, StateNo = 3010) && (Root, AnimElem = 7))
x=3
y=0

[State 9540,VelAdd]
type=VelAdd
trigger1=(Vel X >= 3)
x=0.75

[State 9540,VelAdd]
type=VelAdd
trigger1=(Parent, StateNo != Var(1))
y=0.05

[State 0, ChangeState]
type = ChangeState
trigger1 =(Pos Y >= 1)
value =9505
;---------------------------------------------------------------------------
;Projectile1: Kikou Ha
[Statedef 9600]
type= S
movetype=A
physics=N
anim=9610
juggle=6
velset=0,0
ctrl=0
sprpriority=5

[State 0, VarSet]
type = VarSet
trigger1=!time
var(5)=parent,var(5)
[State 0, VarSet]
type = VarSet
trigger1=parent,animelemtime(3)=1
var(8)=root,var(8)

[State 0, HitOverride]
type=hitoverride
trigger1= 1
attr=SCA,AA,AP,AT
time=-1
stateno=9605
ignorehitpause=1
[State 0, HB]
type=hitby
trigger1= 1
value=SCA,NP,SP,HP
time=-1
ignorehitpause=1

[State 9600,AssertSpecial]
type=AssertSpecial
trigger1=1
flag=NoShadow
ignorehitpause=1

[State 9600,VelSet]
type=VelSet
trigger1=1
x=10+1*var(5)
ignorehitpause=1
[State 9600,VelSet]
type=VelSet
trigger1=random<=200
y=floor(Ifelse(p2dist y>=0&&p2dist x>=200,2,Ifelse((p2dist y>=0&&p2dist x=[100,199]),4,Ifelse(p2dist y>=0&&p2dist x<=99,6,Ifelse(p2dist y<0&&p2dist x>=200,-4,Ifelse((p2dist y<0&&p2dist x=[100,199]),-6,Ifelse(p2dist y>=0&&p2dist x<=99,-8,0)))))))
ignorehitpause=1
[State 0,VS1]
type=VelSet
trigger1=random<=500
y=(enemynear,const(size.mid.pos.y))/-20
[State 0,VS2]
type=VelSet
trigger1=random<=300
y=floor(enemynear,pos y)/10

[State 9600,HitDef]
type=HitDef
trigger1=1
attr=S,SP
hitflag=MAFD
guardflag=MA
animtype=Hard
priority=4, Hit
damage =floor(Ifelse(!var(8),70,8)+5*var(5)**root,fvar(10)),8
pausetime=2,8
guard.pausetime= 4,4
sparkno=s8010+random%8
guard.sparkno=s7105
sparkxy=-10,0
hitsound=S1,42
guardsound=S2,8
ground.type=High
air.type=Low
ground.slidetime= 12
ground.hittime= 30
air.hittime=30
yaccel=0.45
ground.velocity= -10
guard.velocity= -10
air.velocity= -7.5,-4.7
airguard.velocity= -6,-4.5
ground.cornerpush.veloff = 0
getpower=10,10
givepower=20
air.fall = 1
fall=0
fall.recover = 1
fall.recovertime = 30
forcestand=1
persistent=0
palfx.time = 30
palfx.add =0,25,5
palfx.mul = 153,255,102
palfx.sinadd = 64,224,0,80
palfx.color=255
envshake.time=12
envshake.ampl=5
air.juggle=4
[State 7180, flames]
type = helper
trigger1 = movehit && numtarget && !numhelper(7180)
trigger1 = !(target, time) && (target, movetype = H)&&(enemynear,stateno=[5000,5050])
helpertype = normal
stateno = 7180
ID = 7180
name = "flames"
postype = p2
ownpal = 1
facing = -1
ignorehitpause = 1

[State 9600, End]
type = changestate
trigger1=movecontact||Pos y>=0
value = Ifelse(Pos y>=0,3006,9605)
[State 9601, End]
type = destroyself
trigger1 = pos x != [ -220, 220]
;------------------------------------------------------------------------
[Statedef 9605]
type = A
physics = N
movetype = I
anim = 9605
ctrl = 0
velset = 0,0
sprpriority = 5

[State 0, PlaySnd]
type = PlaySnd
trigger1 =!time
value = S1,41
ignorehitpause =1
[State 0, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, end]
type = destroyself
trigger1 = !animtime
;---------------------------------------------------------------------------
;Projectile3: Minami Ginga Gouka
[Statedef 9620]
type= A
movetype=A
physics=N
anim=9620
velset=0,0
ctrl=0
poweradd=0
juggle=0
facep2=0
hitdefpersist= 0
movehitpersist= 0
hitcountpersist= 0
sprpriority=3

[State 9620,AssertSpecial]
type=AssertSpecial
trigger1=1
flag=NoShadow

[State 9620,AssertSpecial]
type=AssertSpecial
trigger1=(Parent, Var(5) > 2)
flag=UnGuardable

[State 9620,PlayerPush]
type=PlayerPush
trigger1=1
value=0

[State 9620,NotHitBy]
type=NotHitBy
trigger1=1
value=SCA

[State 9620,Null]
type=Null
trigger1=(!Time)
trigger1=(Var(0) := 125)
trigger2=(Var(0) = 125) || (Var(0) = 175)
trigger2=(Var(1) := IfElse(Var(0) = 125,0,1))
trigger3=(Var(0) = 175)
trigger3=(Var(1) := 1)

[State 9620,VarAdd]
type=VarAdd
trigger1=1
var(0)=IfElse(Var(1) = 0,1,-1)

[State 9620,ParentVarAdd]
type=ParentVarAdd
trigger1=(NumTarget(9620)) && (MoveHit)
var(15)=1
persistent=0
ignorehitpause= 1

[State 9620,ParentVarSet]
type=ParentVarSet
trigger1=(NumTarget(9620)) && (MoveHit)
var(17)=1
persistent=0
ignorehitpause= 1

[State 9620,VelSet]
type=VelSet
trigger1=(AnimElem = 2)
x=30

[State 9620,AfterImage]
type=AfterImage
trigger1=(!Time)
time= 10
timegap=2
framegap =2
length =10
paladd =50, 50, 50
palmul =.50, .50, .50
palcontrast=110,110,110
trans =add

;[State 9620,Trans]
type=Trans
trigger1=1
trans=addalpha
alpha=250,var(0)

[State 9620,EnvColor]
type=EnvColor
trigger1=((GameTime%2) = 0)
value=255,255,255
time=1
ignorehitpause= 1

[State 9620,Explod]
type=Explod
trigger1=(MoveContact)
anim=456
id=9320
pos=0,0
postype=p1
facing=1
vfacing=1
bindtime=1
vel=0,-0.5
accel=0,0
random=10,10
removetime=-2
supermove=0
supermovetime= 0
pausemovetime= 0
scale=1,1
sprpriority=3
ontop=0
shadow=0,0,0
ownpal=1
removeongethit= 0
persistent=0
ignorehitpause= 1

[State 9620,Explod]
type=Explod
trigger1=(MoveContact)
anim=9330
id=9320
pos=100,0
postype=p1
facing=1
vfacing=1
bindtime=1
vel=0,-0.5
accel=0,0
random=10,10
removetime=-2
supermove=0
supermovetime= 0
pausemovetime= 0
scale=1,1
sprpriority=3
ontop=0
shadow=0,0,0
ownpal=1
removeongethit= 0
persistent=0
ignorehitpause= 1


[State 9620,Explod]
type=Explod
trigger1=((GameTime%3) = 0)
anim=9110
id=9110
pos=0,0
postype=p1
facing=1
vfacing=1
bindtime=1
vel=-1,0
accel=0,0
random=20,20
removetime=-2
supermove=0
supermovetime= 0
pausemovetime= 0
scale=1,1
sprpriority=2
ontop=0
shadow=0,0,0
ownpal=1
removeongethit= 0

[State 9620,Explod]
type=Explod
trigger1=((GameTime%5) = 0) && (NumExplod(9830) < 20)
anim=9830
id=9830
pos=20,0
postype=p1
facing=1
vfacing=1
bindtime=1
vel=-2,1
accel=0,0
random=20,15
removetime=40
supermove=0
supermovetime= 0
pausemovetime= 0
scale=0.25,0.25
sprpriority=2
ontop=0
shadow=0,0,0
ownpal=1
removeongethit= 0

[State 9620,HitDef]
type=HitDef
trigger1=1
attr=S, HP
hitflag=MAFDP
guardflag=M
animtype=Hard
priority=10, Hit
damage =(Ceil(IfElse((Parent, Var(5) = 1),400,IfElse((Parent, Var(5) = 2),500,IfElse((Parent, Var(5) = 3),600,400))))),50
pausetime=5,12
guard.pausetime= 5,12
sparkno=-1
guard.sparkno= -1
sparkxy=0,0
hitsound=S1,5
guardsound=S1,5
ground.type=High
air.type=Low
ground.slidetime= 20
ground.hittime= 20
air.hittime=15
yaccel=0.45
ground.velocity=(Ceil(IfElse((Parent, Var(5) = 1),-12,IfElse((Parent, Var(5) = 2),-24,IfElse((Parent, Var(5) = 3),-32,-12))))),-5.7
guard.velocity= -12
air.velocity= (Ceil(IfElse((Parent, Var(5) = 1),-12,IfElse((Parent, Var(5) = 2),-24,IfElse((Parent, Var(5) = 3),-32,-12))))),-5.7
airguard.velocity= -12,-5.7
ground.cornerpush.veloff = 0
fall=1
fall.recover= 0
id=9620
getpower=0
givepower=15
persistent=0
p2stateno = 2041   ;no   b a



[State 290,VolarP2]
type = PlaySnd
triggerall = !Movehit
trigger1 = Time = 1
value = 1, 1    ;fiuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
volume = 200
channel = 1

[State 290,patada]
type = PlaySnd
trigger1 = animelem = 2
value = 1, 31              ;movimiento

[State 290,grito]
type = PlaySnd
trigger1 = animelem = 2
value = 0,0         ;grito
volume = 255

[State 290,EXPLOSION]
type=PlaySnd
trigger1=P2StateNo = 2041
value=S1,28       ;sonido de pared
volume            = 255
pan=(P2Dist X)
persistent=0

[State 290,EXPLOSION]
type=PlaySnd
trigger1=P2StateNo = 2041
value=S23,0       ;sonido de pared
volume            = 255
pan=(P2Dist X)
channel                = 2
persistent=0



[State 290,polvo que arrastra P2]
type = Explod
trigger1 = p2stateno = 292
trigger1 = ((GameTime%2) = 0)
anim = 9810; ifelse(Random < 100,9810,ifelse(Random < 100,9400,10))     ;arrastra polvo
ID = 7560
pos = -5,20
postype = p2
scale = 1,1
bindtime = 1
sprpriority = 11
ownpal = 1
ignorehitpause = 1
spacing =2

;[State 290,explosion]
;type = Explod
;trigger1 =  P2StateNo = 293
;anim = 7105
;pos = 0, floor (screenpos y) - 50
;postype = Front
;sprpriority = 3




[State 9620,DestroySelf]
type=DestroySelf
trigger1=(MoveContact) || (FrontEdgeBodyDist < -10)
ignorehitpause= 1

;---------------------------------------------------------------------------
;Projectile4: Bakuenha
[Statedef 9630]
type= S
movetype=A
physics=N
anim=9630
velset=0,0
ctrl=0
juggle=6
sprpriority=5

[State 0, VarSet]
type = VarSet
trigger1=!time
var(5)=parent,var(5)
[State 0, VarSet]
type = VarSet
trigger1=parent,animelemtime(3)=1
var(8)=root,var(8)

[State 0, HitOverride]
type=hitoverride
trigger1= 1
attr=SCA,AA,AP,AT
time=-1
stateno=9635
ignorehitpause=1
[State 0, HB]
type=hitby
trigger1= 1
value=SCA,NP,SP,HP
time=-1
ignorehitpause=1

[State 9600,AssertSpecial]
type=AssertSpecial
trigger1=1
flag=NoShadow
ignorehitpause=1

[State 9630,EnvShake]
type=EnvShake
trigger1 =(!Time)
time=25
ampl=-6
[State 9630,PlaySnd]
type=PlaySnd
trigger1=(!Time)
value=S1,5
channel=8
[State 9630,PlaySnd]
type=PlaySnd
trigger1=((GameTime%9) = 0)
value=S1,7
[State 9630,Explod]
type=Explod
trigger1=((GameTime%4) = 0) && (NumExplod(9830) < 6) && (Random <= 499)
anim=9830
id=9830
pos=0,-200
postype=p1
facing=1
vfacing=1
bindtime=1
vel=0,1
accel=0,0
random=75,150
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

[State 9500 Explod]
type = Explod
trigger1=time%8
anim = Ifelse(random<=200,9500,Ifelse(random<=200,9510,Ifelse(random<=200,9520,Ifelse(random<=200,9530,9540))))
id = 9500
pos = 0,-60
random=40,40
facing=Ifelse(random<=500,1,-1)
postype = p1
bindtime = 1
vel = Ifelse(random<=500,-2,2),Ifelse(random<=500,-2,-3)
accel = 0,-1
removetime = 20
supermovetime = 999
pausemovetime = 999
scale = IfElse(Random <= 499,.4,.2),IfElse(Random <= 499,.4,.2)
sprpriority =Ifelse(random<=500,-5,5)
ownpal = 1
ignorehitpause=1
[State 0, Explod]    ;;;;;;;;;;;;PISO
type = Explod
trigger1 = (Time = 0)
anim = 9202
ID = 9202
pos = 5,30
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = 1
removetime =10
scale = 2,1
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1
;ignorehitpause =
;persistent =
[State 0, Explod]    ;;;;;;;;;;;;PISO
type = Explod
trigger1 = (Time = 0)
anim = 9202
ID = 9202
pos = 5,50
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime =15
scale = 1,8
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1

[State 9630,Explod]
type=Explod
trigger1=(!Time)
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
scale=1,1
sprpriority=0
ontop=0
shadow=0,0,0
ownpal=1
removeongethit= 0

[State 9630,HitDef]
type=HitDef
trigger1=!time
attr=S,SP
hitflag=MAFD
guardflag=ML
animtype=Up
priority=4, Hit
damage =floor(90+10*var(5)**root,fvar(10)),14
pausetime=6,12
guard.pausetime= 6,6
sparkno=-1
guard.sparkno= -1
sparkxy=0,0
hitsound=s1,42
guardsound=s2,8
ground.type=High
air.type=Low
ground.slidetime= 20
ground.hittime= 20
air.hittime=15
yaccel=0.45
ground.velocity= -6,-6.7
guard.velocity= -6
air.velocity= -6,-6.7
airguard.velocity= -6,-6.7
ground.cornerpush.veloff = 0
fall=1
fall.recover= 0
id=9630
getpower=0
givepower=39
persistent=0
sprpriority=5
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
trigger1 = movehit && numtarget && !numhelper(7180)
trigger1 = !(target, time) && (target, movetype = H)&&(enemynear,stateno=[5000,5050])
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

[State 9630, End]
type = changestate
trigger1 = movecontact
value = 9635
[State 9630,DestroySelf]
type=DestroySelf
trigger1=(!AnimTime)
;------------------------------------------------------------------------
[Statedef 9635]
type = A
physics = N
movetype = I
ctrl = 0
velset = 0,0
sprpriority = 5

[State 0, NotHitBy]
type = NotHitBy
trigger1 =1
value = SCA
ignorehitpause =1
[State 0, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
[State 0, 1]
type = Trans
trigger1 = 1
trans = add
ignorehitpause=1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1

[State 0, DestroySelf]
type = PalFx
trigger1=time=[11,23]
add=-time*20,-time*20,-time*20
time=1

[State 0, scale]
type=AngleDraw
trigger1=time>=12
scale=1+time*.025,1+time*.025
[State 0, RemoveExplod]
type = RemoveExplod
trigger1=!animtime
trigger2=time>=24
[State 0, end]
type = destroyself
trigger1=!animtime
trigger2=time>=24
;---------------------------------------------------------------------------
;Projectile4: Bakuenha
[Statedef 9631]
type= S
movetype=A
physics=N
velset=0,0
ctrl=0
juggle=0
sprpriority=5

[State 0, HitOverride]
type=hitoverride
trigger1= 1
attr=SCA,AA,AP,AT
time=-1
stateno=Ifelse(var(4)<3,9631,9635)
ignorehitpause=1
[State 0, HB]
type=hitby
trigger1= 1
value=SCA,NP,SP,HP
time=-1
ignorehitpause=1

[State 0, VarAdd]
type = VarAdd
trigger1 =movecontact
var(4)=1

[State 9931,ChangeAnim]
type=ChangeAnim
trigger1=(!Time) && !prevstateno
value=9631

[State 9631,AssertSpecial]
type=AssertSpecial
trigger1=1
flag=NoShadow
ignorehitpause=1

[State 9631,EnvShake]
type=EnvShake
trigger1 =(!Time)
time=25
ampl=-6
[State 9631,PlaySnd]
type=PlaySnd
trigger1=(!Time) && !prevstateno
value=S1,5
channel=8
[State 9630,PlaySnd]
type=PlaySnd
trigger1=((GameTime%9) = 0)
value=S1,7
[State 9631,Explod]
type=Explod
trigger1=((GameTime%4) = 0) && (NumExplod(9830) < 6) && (Random <= 499)
anim=9830
id=9830
pos=0,-200
postype=p1
facing=1
vfacing=1
bindtime=1
vel=0,1
accel=0,0
random=75,150
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

[State 9500 Explod]
type = Explod
trigger1=time%8
anim = Ifelse(random<=200,9500,Ifelse(random<=200,9510,Ifelse(random<=200,9520,Ifelse(random<=200,9530,9540))))
id = 9500
pos = 0,-60
random=40,40
facing=Ifelse(random<=500,1,-1)
postype = p1
bindtime = 1
vel = Ifelse(random<=500,-2,2),Ifelse(random<=500,-2,-3)
accel = 0,-1
removetime = 20
supermovetime = 999
pausemovetime = 999
scale = IfElse(Random <= 499,.4,.2),IfElse(Random <= 499,.4,.2)
sprpriority =Ifelse(random<=500,-5,5)
ownpal = 1
ignorehitpause=1

[State 0, Explod]    ;;;;;;;;;;;;PISO
type = Explod
trigger1 = (Time = 0)
anim = 9202
ID = 9202
pos = 5,30
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = 1
removetime =10
scale = 2,1
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1
ignorehitpause =1
[State 0, Explod]    ;;;;;;;;;;;;PISO
type = Explod
trigger1 = (Time = 0)
anim = 9202
ID = 9202
pos = 5,50
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime =15
scale = 1,8
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1

[State 9631,Explod]
type=Explod
trigger1=(!Time)
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
scale=1,1
sprpriority=0
ontop=0
shadow=0,0,0
ownpal=1
removeongethit= 0

[State 9631,HitDef]
type=HitDef
trigger1=!time
attr=S,HP
hitflag=MAFD
guardflag=ML
animtype=Up
priority=4, Hit
damage =floor(83**root,fvar(10)),33
pausetime=6,12
guard.pausetime= 6,6
sparkno=-1
guard.sparkno= -1
sparkxy=0,0
hitsound=s1,42
guardsound=s2,8
ground.type=High
air.type=Low
ground.slidetime= 20
ground.hittime= 20
air.hittime=15
yaccel=0.45
ground.velocity= -10,-6.7
guard.velocity= -6
air.velocity= -10,-6.7
airguard.velocity= -6,-6.7
ground.cornerpush.veloff = 0
fall=1
fall.recover= 0
getpower=0,0
givepower=20,20
persistent=0
sprpriority=5
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
trigger1 = movehit && numtarget && !numhelper(7180)
trigger1 = !(target, time) && (target, movetype = H)&&(enemynear,stateno=[5000,5050])
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

[State 9631, End]
type = changestate
trigger1 = movecontact
value = 9635
[State 9631,DestroySelf]
type=DestroySelf
trigger1=(!AnimTime)
;---------------------------------------------------------------------------
[Statedef 9632]
type= S
movetype=A
physics=N
velset=0,0
ctrl=0
juggle=0
sprpriority=5

[State 0, BindToRoot]
type = BindToRoot
trigger1=1
pos = 0,-10
ignorehitpause =1

[State 0, HitOverride]
type=hitoverride
trigger1= 1
attr=SCA,AA,AP,AT
time=-1
stateno=Ifelse(var(4)<20,9632,9634)
ignorehitpause=1
[State 0, HB]
type=hitby
trigger1= 1
value=SCA,NP,SP,HP
time=-1
ignorehitpause=1

[State 0, VarAdd]
type = VarAdd
trigger1 =movecontact
var(4)=1
[State 0, VarSet]
type = VarSet
trigger1=(!Time) && !prevstateno
var(7)=parent,var(7)
ignorehitpause =1
[State 9931,ChangeAnim]
type=ChangeAnim
trigger1=(!Time) && !prevstateno
value=3390
[State 0, Trans]
type = Trans
trigger1 =1
trans = addalpha
alpha = 256,256
ignorehitpause =1

[State 9631,AssertSpecial]
type=AssertSpecial
trigger1=1
flag=NoShadow
ignorehitpause=1

[State 9631,EnvShake]
type=EnvShake
trigger1=(!Time) && !prevstateno
time=80
ampl=-6
[State 9631,PlaySnd]
type=PlaySnd
trigger1=(!Time) && !prevstateno
value=S1,5
channel=8
[State 9631,PlaySnd]
type=PlaySnd
trigger1=(!Time) && !prevstateno
value=S26,0
channel=11
[State 9630,PlaySnd]
type=PlaySnd
trigger1=((GameTime%40) = 0)
value=S1,7
channel=16
[State 9631,Explod]
type=Explod
trigger1=((GameTime%4) = 0) && (NumExplod(9830) < 6) && (Random <= 499)
anim=9830
id=9830
pos=0,-200
postype=p1
facing=1
vfacing=1
bindtime=1
vel=0,1
accel=0,0
random=75,150
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

[State 9500 Explod]
type = Explod
trigger1=time%8
anim = Ifelse(random<=200,9500,Ifelse(random<=200,9510,Ifelse(random<=200,9520,Ifelse(random<=200,9530,9540))))
id = 9500
pos = -70,-60
random=180,40
facing=Ifelse(random<=500,1,-1)
postype = p1
bindtime = 1
vel = Ifelse(random<=500,-2,2),Ifelse(random<=500,-2,-3)
accel = 0,-1
removetime = 20
supermovetime = 999
pausemovetime = 999
scale = IfElse(Random <= 499,.4,.2),IfElse(Random <= 499,.4,.2)
sprpriority =Ifelse(random<=500,-5,5)
ownpal = 1
ignorehitpause=1

[State 0, Explod]    ;;;;;;;;;;;;PISO
type = Explod
trigger1 = (Time = 0)
anim = 9202
ID = 9202
pos = 5,30
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = 1
removetime =10
scale = 2,1
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1
ignorehitpause =1
[State 0, Explod]    ;;;;;;;;;;;;PISO
type = Explod
trigger1 = (Time = 0)
anim = 9202
ID = 9202
pos = 5,50
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime =15
scale = 1,8
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1

[State 9632,HitDef]
type=HitDef
trigger1=1
id=9632
attr=S,HP
hitflag=MAFD
guardflag=ML
animtype=Up
priority=4, Hit
damage =Ifelse(var(7),14,22),5
pausetime=2,4
guard.pausetime= 2,2
sparkno=-1
guard.sparkno= -1
sparkxy=0,0
hitsound=s1,44
guardsound=s2,8
ground.type=High
air.type=Low
ground.slidetime= 6
ground.hittime= 20
air.hittime=15
yaccel=0.45
ground.velocity= Ifelse(var(4)<19,1,-10),Ifelse(var(4)<19,-4,-10)
guard.velocity= -6
air.velocity= Ifelse(var(4)<19,1,-10),Ifelse(var(4)<19,-4,-10)
airguard.velocity= -6,-6.7
ground.cornerpush.veloff = 0
fall=1
fall.recover= 0
getpower=0,0
givepower=10,10
sprpriority=5
palfx.time = 30
palfx.add =0,25,5
palfx.mul = 153,255,102
palfx.sinadd = 64,224,0,80
palfx.color=255
envshake.time=4
envshake.ampl=4
fall.envshake.time=16
fall.envshake.ampl=6

[State 0, p2state]
type=targetstate
trigger1= var(4)=20&&movehit && numtarget(9632)
trigger1= target(9632),Movetype=H
ID=9632
value=2041
ignorehitpause=1
persistent=0
[State 7180, flames]
type = helper
trigger1 = movehit && numtarget && !numhelper(7180)
trigger1 = !(target, time) && (target, movetype = H)&&(enemynear,stateno=[5000,5050])
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

[State 9631, End]
type = changestate
trigger1 = movecontact
value = Ifelse(var(4)<20,9632,9634)
[State 9631,DestroySelf]
type=DestroySelf
trigger1=(!AnimTime)
;------------------------------------------------------------------------
[Statedef 9633]
type = A
physics = N
movetype = I
ctrl = 0
velset = 0,0
sprpriority = 5

[State 0, NotHitBy]
type = NotHitBy
trigger1 =1
value = SCA
ignorehitpause =1
[State 0, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
[State 0, 1]
type = Trans
trigger1 = 1
trans = addalpha
alpha=256-4*time,256
ignorehitpause=1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1

[State 0, scale]
type=AngleDraw
trigger1=1
scale=1.0125+time*.125,1.125+time*.0125
[State 0, RemoveExplod]
type = RemoveExplod
trigger1=!animtime
trigger2=time>=14
[State 0, end]
type = destroyself
trigger1=!animtime
trigger2=time>=14
;------------------------------------------------------------------------
[Statedef 9634]
type = A
physics = N
movetype = I
ctrl = 0
velset = 0,0
sprpriority = 5

[State 0, NotHitBy]
type = NotHitBy
trigger1 =1
value = SCA
ignorehitpause =1
[State 0, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
[State 0, 1]
type = Trans
trigger1 = 1
trans = addalpha
alpha=256-2*time,256
ignorehitpause=1

[State 0, end]
type = destroyself
trigger1=!animtime
;---------------------------------------------------------------------------
;Electricity
[Statedef 9700]
physics=N
velset=0,0
anim=Ifelse(random<=250,9700,Ifelse(random<=250,9710,Ifelse(random<=250,9720+random%2,9730+random%2)))
sprpriority=4

[State 0, Turn]
type = Turn
trigger1 =!time&&(anim=[9700,9719])&&random<=500
ignorehitpause =1

[State 9700,PlaySnd]
type=PlaySnd
trigger1=!time
value=S1,4
channel=10
[State 9700, AssertSpecial]
type=AssertSpecial
trigger1=1
flag=NoShadow
ignorehitpause=1

[State 9700,BindToParent]
type=BindToParent
trigger1=anim=[9700,9710]
pos=0+random%10,-120+random%60
[State 9700,BindToParent]
type=BindToParent
trigger1=anim=[9720,9722]
pos=Ifelse(anim=9720,-40,40),-120+random%40
[State 9700,BindToParent]
type=BindToParent
trigger1=anim=[9730,9732]
pos=Ifelse(anim=9730,-40,40),-120+random%40
[State 0, StopSnd]
type = StopSnd
trigger1=root,stateno!=0&&root,stateno!=20&&(root,stateno!=[181,182])&&(root,stateno!=[191,193])&&root,stateno!=88887&&root,stateno!=1005&&root,stateno!=1010&&root,stateno!=1030&&root,stateno!=3100&&root,stateno!=3010&&root,stateno!=3150&&root,stateno!=3300&&root,stateno!=3351
trigger2=root,Movetype=H
channel = 10
ignorehitpause =1

[State 0, DestroySelf]
type=DestroySelf
trigger1=root,stateno!=0&&root,stateno!=20&&(root,stateno!=[181,182])&&(root,stateno!=[191,193])&&root,stateno!=88887&&root,stateno!=1005&&root,stateno!=1010&&root,stateno!=1030&&root,stateno!=3100&&root,stateno!=3010&&root,stateno!=3150&&root,stateno!=3300&&root,stateno!=3351
trigger2=root,Movetype=H
trigger3=!animtime
trigger4=root,stateno=3100&&root,animelemtime(2)>=0||root,stateno=3010&&root,animelemtime(9)>=0||root,stateno=3150&&root,animelemtime(3)>=0
ignorehitpause =1
;---------------------------------------------------------------------------
;Gou Kikou Ha charge Effect
[Statedef 9800]
physics=N
velset=0,0
anim=9800
sprpriority=4

[State 9800,AssertSpecial]
type= AssertSpecial
trigger1 =1
flag=NoShadow
ignorehitpause=1
[State 9800,BindToRoot]
type=BindToRoot
trigger1=root,animelem=1
pos=Ifelse(root,stateno=1005,-40,Ifelse(root,stateno=1010||root,stateno=3100,-50,Ifelse(root,stateno=1055,-35,-30))),Ifelse(root,stateno=1005,-80,Ifelse(root,stateno=1010||root,stateno=3100,-115,-80))
ignorehitpause=1
[State 9800,BindToRoot]
type=BindToRoot
trigger1=root,animelem>=2
pos=Ifelse(root,stateno=1005,58,Ifelse(root,stateno=1010,65,Ifelse(root,stateno=1055,45,-20))),Ifelse(root,stateno=1005,-115,Ifelse(root,stateno=1010,-90,-110))
ignorehitpause=1

[State 9800,DestroySelf]
type=DestroySelf
trigger1=(root,stateno!=1005)&&(root,stateno!=1010)&&(root,stateno!=1030)&&(root,stateno!=1055)&&(root,stateno!=3100)
trigger2=root,Movetype=H
trigger3=(root,stateno=1005&&root,animelemtime(3)>=0)||(root,stateno=1010&&root,animelemtime(3)>=0)||(root,stateno=1030&&root,animelemtime(3)>=0)||(root,stateno=1055&&root,animelemtime(3)>=0)||(root,stateno=3100&&root,animelemtime(3)>=0)
;---------------------------------------------------------------------------
;Gou Kikou Ha charge Effect
[Statedef 9801]
physics=N
velset=0,0
anim=9800
sprpriority=4

[State 9800,AssertSpecial]
type= AssertSpecial
trigger1 =1
flag=NoShadow
ignorehitpause=1
[State 9800,BindToRoot]
type=BindToRoot
trigger1=root,animelemtime(5)<=0
pos=-26,-100
ignorehitpause=1
[State 9800,BindToRoot]
type=BindToRoot
trigger1=root,animelemtime(5)>=0&&root,animelemtime(6)<0
pos=-26,-80
ignorehitpause=1
[State 9800,BindToRoot]
type=BindToRoot
trigger1=root,animelemtime(6)>=0&&root,animelemtime(7)<0
pos=0,-90
ignorehitpause=1
[State 9800,BindToRoot]
type=BindToRoot
trigger1=root,animelemtime(7)>=0
pos=85,-80
ignorehitpause=1

[State 9801,DestroySelf]
type=DestroySelf
trigger1=(root,stateno!=3010)
trigger2=root,Movetype=H
trigger3=(root,stateno=3010&&root,animelemtime(8)>=0)
;---------------------------------------------------------------------------
;Particle1: Orange
[Statedef 9820]
type= A
movetype=I
physics=N
anim= 11020
velset=0,0
ctrl=0
poweradd=0
juggle=0
facep2=0
hitdefpersist= 0
movehitpersist= 0
hitcountpersist= 0
sprpriority=3

[State 9820,PosAdd]
type=PosAdd
trigger1=(!Time)
x=P2Dist X

[State 9820,Explod]
type= Explod
trigger1 =(!Time)
anim= 9820
id= 9820
pos= 0,0
postype =p1
facing =1
vfacing =1
bindtime =1
vel= (IfElse(Random <= 499,Random/100,Random/(-100))),(IfElse(Random <= 499,Random/100,Random/(-100)))
accel =0,0
random =0,0
removetime =10
supermove =0
supermovetime=0
pausemovetime=0
scale =0.25,0.25
sprpriority=3
ontop =0
shadow =0,0,0
ownpal =1
removeongethit=0

[State 9820,Explod]
type= Explod
trigger1 =(!Time)
anim= 9820
id= 9820
pos= 0,0
postype =p1
facing =1
vfacing =1
bindtime =1
vel= (IfElse(Random <= 499,Random/100,Random/(-100))),(IfElse(Random <= 499,Random/100,Random/(-100)))
accel =0,0
random =0,0
removetime =10
supermove =0
supermovetime=0
pausemovetime=0
scale =0.25,0.25
sprpriority=3
ontop =0
shadow =0,0,0
ownpal =1
removeongethit=0

[State 9820,Explod]
type= Explod
trigger1 =(!Time)
anim= 9820
id= 9820
pos= 0,0
postype =p1
facing =1
vfacing =1
bindtime =1
vel= (IfElse(Random <= 499,Random/100,Random/(-100))),(IfElse(Random <= 499,Random/100,Random/(-100)))
accel =0,0
random =0,0
removetime =10
supermove =0
supermovetime=0
pausemovetime=0
scale =0.25,0.25
sprpriority=3
ontop =0
shadow =0,0,0
ownpal =1
removeongethit=0

[State 9820,Explod]
type= Explod
trigger1 =(!Time)
anim= 9820
id= 9820
pos= 0,0
postype =p1
facing =1
vfacing =1
bindtime =1
vel= (IfElse(Random <= 499,Random/100,Random/(-100))),(IfElse(Random <= 499,Random/100,Random/(-100)))
accel =0,0
random =0,0
removetime =10
supermove =0
supermovetime=0
pausemovetime=0
scale =0.30,0.30
sprpriority=3
ontop =0
shadow =0,0,0
ownpal =1
removeongethit=0

[State 9820,Explod]
type= Explod
trigger1 =(!Time)
anim= 9820
id= 9820
pos= 0,0
postype =p1
facing =1
vfacing =1
bindtime =1
vel= (IfElse(Random <= 499,Random/100,Random/(-100))),(IfElse(Random <= 499,Random/100,Random/(-100)))
accel =0,0
random =0,0
removetime =10
supermove =0
supermovetime=0
pausemovetime=0
scale =0.35,0.35
sprpriority=3
ontop =0
shadow =0,0,0
ownpal =1
removeongethit=0

[State 9820,DestroySelf]
type= DestroySelf
trigger1 =(Time > 20)
;---------------------------------------------------------------------------
;Kikou Ha Effect
[Statedef 9900]
physics=N
velset=0,0
anim=9900
sprpriority=4

[State 9900,AssertSpecial]
type= AssertSpecial
trigger1 =1
flag= GlobalNoShadow

[State 9900,HitBy]
type=HitBy
trigger1=1
value=SCA
ignorehitpause= 1

[State 9900,BindToParent]
type=BindToParent
trigger1=(Parent, StateNo = 3010)
time=1
pos=-26,-100

[State 9900,DestroySelf]
type=DestroySelf
trigger1=(!AnimTime)
;---------------------------------------------------------------------------
;Kikou Ha Effect
[Statedef 9901]
physics=N
velset=0,0
anim=9900
sprpriority=5

[State 9901,AssertSpecial]
type= AssertSpecial
trigger1 =1
flag=NoShadow
ignorehitpause=1

[State 9901,BindToRoot]
type=BindToRoot
trigger1=1
pos=Ifelse(root,stateno=1000,65,Ifelse(root,stateno=1010||root,stateno=3100,-52,-40)),Ifelse(root,stateno=1000,-120,Ifelse(root,stateno=1010||root,stateno=3100,-115,-80))

[State 9901,DestroySelf]
type=DestroySelf
trigger1=(!AnimTime)
trigger2=root,Movetype=H
trigger3=root,stateno=3100&&root,animelemtime(2)>=0
;---------------------------------------------------------------------------
;Kikou Ha Effect
[Statedef 9902]
physics=N
velset=0,0
anim=9900
sprpriority=5

[State 9800,AssertSpecial]
type= AssertSpecial
trigger1 =1
flag=NoShadow
ignorehitpause=1
[State 9800,BindToRoot]
type=BindToRoot
trigger1=root,animelemtime(5)<=0
pos=-26,-100
ignorehitpause=1
[State 9800,BindToRoot]
type=BindToRoot
trigger1=root,animelemtime(5)>=0&&root,animelemtime(6)<0
pos=-26,-80
ignorehitpause=1
[State 9800,BindToRoot]
type=BindToRoot
trigger1=root,animelemtime(6)>=0&&root,animelemtime(7)<0
pos=0,-90
ignorehitpause=1
[State 9800,BindToRoot]
type=BindToRoot
trigger1=root,animelemtime(7)>=0
pos=50,-70
ignorehitpause=1

[State 9900,DestroySelf]
type=DestroySelf
trigger1=(!AnimTime)
;---------------------------------------------------------------------------
;Kikou Ha Effect
[Statedef 9903]
physics=N
velset=0,0
anim=9900
sprpriority=5

[State 9800,AssertSpecial]
type= AssertSpecial
trigger1 =1
flag=NoShadow
ignorehitpause=1
[State 0, BindtoRoot]
type = BindtoRoot
trigger1 =root,animelemtime(3)<0
pos = -50,-108
ignorehitpause =1
[State 0, BindtoRoot]
type = BindtoRoot
trigger1 =root,animelemtime(3)>=0&&root,animelemtime(4)<0
pos = -35,-82
ignorehitpause =1
[State 0, BindtoRoot]
type = BindtoRoot
trigger1 =root,animelemtime(4)>=0&&root,animelemtime(5)<0
pos = -27,-151
ignorehitpause =1
[State 0, BindtoRoot]
type = BindtoRoot
trigger1 =root,animelemtime(5)>=0&&root,animelemtime(6)<0
pos = -41,-75
ignorehitpause =1
[State 0, BindtoRoot]
type = BindtoRoot
trigger1 =root,animelemtime(6)>=0&&root,animelemtime(7)<0
pos = 9,-90
ignorehitpause =1
[State 0, BindtoRoot]
type = BindtoRoot
trigger1 =root,animelemtime(7)>=0&&root,animelemtime(8)<0
pos = 58,-110
ignorehitpause =1
[State 0, BindtoRoot]
type = BindtoRoot
trigger1 =root,animelemtime(8)>=0
pos = 98,-116
ignorehitpause =1

[State 9900,DestroySelf]
type=DestroySelf
trigger1=(!AnimTime)
;---------------------------------------------------------------------------
;Kikou Ha Effect
[Statedef 9904]
physics=N
velset=0,0
anim=9800
sprpriority=5

[State 9800,AssertSpecial]
type= AssertSpecial
trigger1 =1
flag=NoShadow
ignorehitpause=1
[State 0, BindtoRoot]
type = BindtoRoot
trigger1 =root,animelemtime(3)<0
pos = -50,-108
ignorehitpause =1
[State 0, BindtoRoot]
type = BindtoRoot
trigger1 =root,animelemtime(3)>=0&&root,animelemtime(4)<0
pos = -35,-82
ignorehitpause =1
[State 0, BindtoRoot]
type = BindtoRoot
trigger1 =root,animelemtime(4)>=0&&root,animelemtime(5)<0
pos = -27,-151
ignorehitpause =1
[State 0, BindtoRoot]
type = BindtoRoot
trigger1 =root,animelemtime(5)>=0&&root,animelemtime(6)<0
pos = -41,-75
ignorehitpause =1
[State 0, BindtoRoot]
type = BindtoRoot
trigger1 =root,animelemtime(6)>=0&&root,animelemtime(7)<0
pos = 9,-90
ignorehitpause =1
[State 0, BindtoRoot]
type = BindtoRoot
trigger1 =root,animelemtime(7)>=0&&root,animelemtime(8)<0
pos = 58,-110
ignorehitpause =1
[State 0, BindtoRoot]
type = BindtoRoot
trigger1 =root,animelemtime(8)>=0
pos = 98,-116
ignorehitpause =1

[State 0, ChangeState]
type = ChangeState
trigger1 =root,animelemtime(8)>=10
value =9905
ignorehitpause =1
[State 9900,DestroySelf]
type=DestroySelf
trigger1=root,stateno!=3351
;------------------------------------------------------------------------
[Statedef 9905]
physics = N
ctrl = 0
velset = 0,0
sprpriority = 5

[State 0, BindtoRoot]
type = BindtoRoot
trigger1 =1
pos = 98,-116
ignorehitpause =1

[State 0, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
[State 0, 1]
type = Trans
trigger1 = 1
trans = addalpha
alpha=256-4*time,256
ignorehitpause=1

[State 0, scale]
type=AngleDraw
trigger1=1
scale=1.0125+time*.125,1.125+time*.0125

[State 0, end]
type = destroyself
trigger1=time>=40
;---------------------------------------------------------------------------
;Kikou Ha Effect
[Statedef 9910]
physics=N
velset=0,0
anim=9910
sprpriority=4

[State 9910,AssertSpecial]
type= AssertSpecial
trigger1 =1
flag=NoShadow
ignorehitpause=1
[State 9910,BindToRoot]
type=BindToRoot
trigger1=1
pos=Ifelse(root,stateno=1030,95,65),-120
ignorehitpause=1
[State 0, Trans]
type = Trans
trigger1 =time>=20
trans = addalpha
alpha = 256-8*time,256
ignorehitpause =1

[State 9910,DestroySelf]
type=DestroySelf
trigger1=(root,stateno!=1000)&&(root,stateno!=1030)
trigger2=root,Movetype=H
trigger3=(root,stateno=1000&&root,animelemtime(4)=0)||(root,stateno=1030&&root,animelemtime(4)=0)
;---------------------------------------------------------------------------
;Ki Shouheki: FX
[Statedef 9930]
type= A
movetype=I
physics=N
anim=9930
velset=0,0
ctrl=0
sprpriority=5

[State 9930,AssertSpecial]
type= AssertSpecial
trigger1 =1
flag=NoShadow
[State 9930,BindToParent]
type=BindToParent
trigger1=1
pos=0,0

[State 9930,PlaySnd]
type=PlaySnd
trigger1=(!Time)
value=S1,10

[State 9930,DestroySelf]
type=DestroySelf
trigger1=(!AnimTime) || (root, MoveType = H)
trigger2=root,stateno!=192&&(root,stateno!=[1200,1205])
trigger3=root,stateno=1205&&root,animelemtime(2)>=0
;---------------------------------------------------------------------------
;Ki Shouheki: Barrier
[Statedef 9932]
type= A
movetype=I
physics=N
velset=0,0
ctrl=0
sprpriority=5

[State 0, HitOverride]
type=hitoverride
trigger1= 1
attr=SCA,AA,AP,AT
time=-1
stateno=Ifelse(var(4)<2,9932,9933)
ignorehitpause=1
[State 0, HB]
type=hitby
trigger1= 1
value=SCA,NP,SP,HP
time=-1
ignorehitpause=1

[State 0, VarAdd]
type = VarAdd
trigger1 =movecontact
var(4)=1

[State 9932,ChangeAnim]
type=ChangeAnim
trigger1=(!Time) && !prevstateno
value=9932
[State 9932,AssertSpecial]
type= AssertSpecial
trigger1 =1
flag=NoShadow
[State 9932,BindToParent]
type=BindToParent
trigger1=1
pos=Ifelse((root,stateno=[1250,1255])&&root,var(5)=0,-25,Ifelse((root,stateno=[1250,1255])&&root,var(5)=1,-15,0)),Ifelse(root,stateno=1205,-10,0)

[State 9932,PlaySnd]
type=PlaySnd
trigger1=(!Time)&&!prevstateno
value=S1,10

[State 9932, End]
type = changestate
trigger1 = movecontact
value =Ifelse(var(4)<2,9932,9933)
[State 9932,DestroySelf]
type=DestroySelf
trigger1=(!AnimTime) || (root, MoveType = H)
trigger2=root,stateno!=192&&(root,stateno!=[1200,1205])&&(root,stateno!=[1250,1255])
;--------------------------------------------------------------------
[Statedef 9933]
type=A
physics=N
movetype=I
ctrl=0
velset=0,0
[State 0, NotHitBy]
type = NotHitBy
trigger1 =1
value = SCA
ignorehitpause =1
[State 9933, End]
type=destroyself
trigger1= 1
ignorehitpause=1
;---------------------------------------------------------------------------
;Ki Shield Assault Barrier
[Statedef 9935]
type= A
movetype=I
physics=N
velset=0,0
ctrl=0
sprpriority=5

[State 0, HitOverride]
type=hitoverride
trigger1= 1
attr=SCA,AA,AP,AT
time=-1
stateno=Ifelse(var(4)<7,9935,9933)
ignorehitpause=1
[State 0, HB]
type=hitby
trigger1= 1
value=SCA,NP,SP,HP
time=-1
ignorehitpause=1

[State 0, VarAdd]
type = VarAdd
trigger1 =movecontact
var(4)=1

[State 9932,ChangeAnim]
type=ChangeAnim
trigger1=(!Time) && !prevstateno
value=9932
[State 9932,AssertSpecial]
type= AssertSpecial
trigger1 =1
flag=NoShadow
[State 9932,BindToParent]
type=BindToParent
trigger1=1
pos=Ifelse(root,stateno=3055,10,0),Ifelse(root,stateno=3055,10,0)

[State 9932,PlaySnd]
type=PlaySnd
trigger1=(!Time)&&!prevstateno
value=S1,10

[State 9932, End]
type = changestate
trigger1 = movecontact
value =Ifelse(var(4)<7,9935,9933)
[State 9932,DestroySelf]
type=DestroySelf
trigger1=(!AnimTime) || (root, MoveType = H)
trigger2=root,stateno!=3010&&root,stateno!=3050&&root,stateno!=3055
;---------------------------------------------------------------------------
;Ki Shield Assault Barrier
[Statedef 9936]
type= A
movetype=I
physics=N
velset=0,0
ctrl=0
sprpriority=5

[State 0, HitOverride]
type=hitoverride
trigger1= 1
attr=SCA,AA,AP,AT
time=-1
stateno=Ifelse(var(4)<7,9936,9933)
ignorehitpause=1
[State 0, HB]
type=hitby
trigger1= 1
value=SCA,NP,SP,HP
time=-1
ignorehitpause=1

[State 0, VarAdd]
type = VarAdd
trigger1 =movecontact
var(4)=1

[State 9932,ChangeAnim]
type=ChangeAnim
trigger1=(!Time) && !prevstateno
value=9936
[State 9932,AssertSpecial]
type= AssertSpecial
trigger1 =1
flag=NoShadow
[State 9932,BindToParent]
type=BindToParent
trigger1=1
pos=0,0

[State 9932,PlaySnd]
type=PlaySnd
trigger1=(!Time)&&!prevstateno
value=S1,10

[State 9932, End]
type = changestate
trigger1 = movecontact
value =Ifelse(var(4)<7,9936,9933)
[State 9932,DestroySelf]
type=DestroySelf
trigger1=(root, MoveType = H)
trigger2=root,stateno!=3010
;---------------------------------------------------------------------------
;Ki Shield Assault Barrier
[Statedef 9937]
type= A
movetype=I
physics=N
velset=0,0
ctrl=0
sprpriority=5

[State 0, HitOverride]
type=hitoverride
trigger1= 1
attr=SCA,AA,AP,AT
time=-1
stateno=Ifelse(var(4)<7,9937,9933)
ignorehitpause=1
[State 0, HB]
type=hitby
trigger1= 1
value=SCA,NP,SP,HP
time=-1
ignorehitpause=1

[State 0, VarAdd]
type = VarAdd
trigger1 =movecontact
var(4)=1

[State 9932,ChangeAnim]
type=ChangeAnim
trigger1=(!Time) && !prevstateno
value=9937
[State 9932,AssertSpecial]
type= AssertSpecial
trigger1 =1
flag=NoShadow
[State 9932,BindToParent]
type=BindToParent
trigger1=1
pos=0,-15

[State 9932,PlaySnd]
type=PlaySnd
trigger1=timemod=40,0
value=S1,14
channel=16
[State 9932, End]
type = changestate
trigger1 = movecontact
value =Ifelse(var(4)<7,9937,9933)
[State 9932,DestroySelf]
type=DestroySelf
trigger1=(root, MoveType = H)
trigger2=root,stateno!=3150&&root,stateno!=3300
trigger3=root,stateno=3150&&root,animelemtime(3)>=0
;---------------------------------------------------------------------------
;Ki Shield Assault Barrier
[Statedef 9938]
type= A
movetype=I
physics=N
velset=0,0
ctrl=0
sprpriority=5

[State 0, HitOverride]
type=hitoverride
trigger1= 1
attr=SCA,AA,AP,AT
time=-1
stateno=Ifelse(var(4)<7,9938,9933)
ignorehitpause=1
[State 0, HB]
type=hitby
trigger1= 1
value=SCA,NP,SP,HP
time=-1
ignorehitpause=1

[State 0, VarAdd]
type = VarAdd
trigger1 =movecontact
var(4)=1
[State 0, ScreenBound]
type = ScreenBound
trigger1 =1
value = 0
ignorehitpause =1

[State 9932,ChangeAnim]
type=ChangeAnim
trigger1=(!Time) && !prevstateno
value=3155
[State 9932,AssertSpecial]
type= AssertSpecial
trigger1 =1
flag=NoShadow
[State 9932,BindToParent]
type=BindToParent
trigger1=1
pos=Ifelse(root,animelemtime(7)>=0,135,90),-65
[State 0, Trans]
type = Trans
trigger1 =root,animelemtime(7)>=6
trans = addalpha
alpha = 192-4*time,256
ignorehitpause =1
[State 0, AngleDraw]
type = AngleDraw
trigger1=root,animelemtime(7)>=6
scale = 1+.00125*time,1+.00125*time
ignorehitpause =1

[State 9932,PlaySnd]
type=PlaySnd
trigger1=timemod=40,0
value=S1,14
channel=16
[State 9932, End]
type = changestate
trigger1 = movecontact
value =Ifelse(var(4)<7,9938,9933)
[State 9932,DestroySelf]
type=DestroySelf
trigger1=(root, MoveType = H)
trigger2=root,stateno!=3150
trigger3=root,stateno=3150&&root,animelemtime(8)>=0
;---------------------------------------------------------------------------
[Statedef 9939]
physics=N
anim=9201
velset=0,0
ctrl=0
sprpriority=5

[State 3351,PlaySnd]
type=PlaySnd
trigger1=timemod=50,0
value=S1,12
channel=5
[State 9200,AssertSpecial]
type=AssertSpecial
trigger1=1
flag=NoShadow
ignorehitpause=1
[State 9200,BindToParent]
type=BindToParent
trigger1=1
pos=5,-5
ignorehitpause=1
[State 9200,DestroySelf]
type=DestroySelf
trigger1=root,stateno!=3351
trigger2=root,stateno=3351&&root,animelemtime(9)>=0
;========================= NORMAL FINISH =================
[Statedef 9994]
ctrl = 0
anim = 9999
sprpriority = -10

[State 9000, Assert]
type = AssertSpecial
trigger1 = 1
flag = NoMusic
flag2 = nobardisplay
flag3 = nofg
ignorehitpause=1

[State 0, Pause]
type = SuperPause
trigger1 = time=0
time = 10
movetime =10
anim=-1
darken=0

[State 4001, fadeout]
type=BGpalfx
trigger1= time=0
time=20
sinadd=-255,-255,-255,40
under=-9999

[State 8600, End]
type=destroyself
trigger1= roundstate!=3

;========================= SPECIAL COMBO FINISH =================
[Statedef 9995]
ctrl = 0
anim = 9999
sprpriority = -10

[State 9000, Assert]
type = AssertSpecial
trigger1 = 1
flag = NoMusic
flag2 = nobardisplay
flag3 = nofg
ignorehitpause=1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S4000,0
volume = 255
channel = 18
persistent=0

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 9996
ID = 9996
pos = 0,0
postype = back
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime =30
supermovetime = 9999
pausemovetime = 9999
scale = 1.2,1.2
sprpriority = -990
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1
ignorehitpause = 1
;persistent =

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time>=1
ID = 9996
trans = addalpha
alpha=256-((time)*10),256

[State 8600, End]
type=removeexplod
trigger1= time>=120
trigger2= roundstate<3
[State 8600, End]
type=destroyself
trigger1= roundstate!=3
;==========================SUPER FINISH==================================
[Statedef 9996]
velset=0,0
anim=9999
sprpriority = -10

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S4000,1
volume = 255
channel = 18
persistent=0

[State 8600, BG PalFX]
type=bgpalfx
trigger1= time<16
time=1
mul= 0, 0, 0
[State 8600, BG PalFX]
type=bgpalfx
trigger1= time=[16,24)
time=1
mul= 32*(time-16), 32*(time-16), 32*(time-16)

[State 8600, MvC]
type=explod
trigger1= !time
anim=8600
ID=8600
ontop=1
postype=left
pos=160,120
scale=.5,.5
bindtime=-1
removetime=32
pausemovetime=-1
supermovetime=-1

[State 8600, Fade]
type=modifyexplod
trigger1= numexplod(8600)
ID=8600
trans= addalpha
alpha= ifelse(time<16, 256, 256-32*(time-16)), 256

[State 8600, Circle]
type=explod
trigger1= !time
anim=8601
ID=8601
under=1
postype=left
pos=160,120
bindtime=-1
removetime=16
pausemovetime=-1
supermovetime=-1

[State 8600, Fade]
type=modifyexplod
trigger1= numexplod(8601)
ID=8601
scale= (.25*time), (.25*time)
trans= addalpha
alpha= 256 - (16*time), 256

[State 9000, Assert]
type = AssertSpecial
trigger1 = 1
flag = NoMusic
flag2 = nobardisplay
flag3 = nofg
ignorehitpause=1

[State 8600, End]
type=removeexplod
trigger1= time>=120
trigger2= roundstate<3
[State 8600, End]
type=destroyself
trigger1= roundstate!=3
;---------------------------------------------------------------------------
;Pusher Effect (Forward)
[Statedef 11000]
type= S
movetype=I
physics=N
anim=11000
velset=0,0
ctrl=0
poweradd=0
juggle=0
facep2=0
hitdefpersist= 0
movehitpersist= 0
hitcountpersist= 0
sprpriority=0

[State 11000,ScreenBound]
type=ScreenBound
trigger1=1
value=0
movecamera=0,0

[State 11000,NotHitBy]
type=NotHitBy
trigger1=1
value=SCA

[State 11000,PlayerPush]
type=PlayerPush
trigger1=1
value=1

[State 11000,VelSet]
type=VelSet
trigger1=(!Time)
x=20

[State 11000,DestroySelf]
type=DestroySelf
trigger1=(Time > 25)

;---------------------------------------------------------------------------
;Pusher Effect (Backward)
[Statedef 11010]
type= S
movetype=I
physics=N
anim=11010
velset=0,0
ctrl=0
poweradd=0
juggle=0
facep2=0
hitdefpersist= 0
movehitpersist= 0
hitcountpersist= 0
sprpriority=0

[State 11010,ScreenBound]
type=ScreenBound
trigger1=1
value=0
movecamera=0,0

[State 11010,NotHitBy]
type=NotHitBy
trigger1=1
value=SCA

[State 11010,PlayerPush]
type=PlayerPush
trigger1=1
value=1

[State 11010,VelSet]
type=VelSet
trigger1=(!Time)
x=20

[State 11010,DestroySelf]
type=DestroySelf
trigger1=(Time > 25)

;---------------------------------------------------------------------------
;Misc
[Statedef 11020]
type= A
movetype=I
physics=N
anim=11020
velset=0,0
ctrl=0
poweradd=0
juggle=0
facep2=0
hitdefpersist= 0
movehitpersist= 0
hitcountpersist= 0
sprpriority=0

[State 11020,PosSet]
type=PosSet
trigger1=1
x=(Parent, Pos X)
y=0

[State 11020,VarAdd]
type=VarAdd
trigger1=(Time > 75) && (((Parent, StateNo = 8000) && (Power >= 5000)) || (Parent, StateNo = 3010) || (Parent, StateNo = 182) || (Parent, StateNo = 191))
var(0)=1

[State 11020,VarAdd]
type=VarAdd
trigger1=(Parent, StateNo != 3010) && (Parent, StateNo != 8000) && (Parent, StateNo != 182) && (Parent, StateNo != 191)
var(0)=-1

[State 11020,PlaySnd]
type=PlaySnd
trigger1 =(Time > 75) && (Var(0) > 50) && ((GameTime%16) = 0)
value=S1,7
channel=8

[State 11020,PlaySnd]
type=PlaySnd
trigger1=((GameTime%100) = 0) && (NumExplod(9710) = 0) && (Random <= 249)
value=S1,5
channel=9
[State 11020,PlaySnd]
type=PlaySnd
trigger1=((GameTime%250) = 0)
value=S1,27
channel=10
[State 11020,EnvColor]
type=EnvColor
trigger1=((GameTime%50) = 0) && (NumExplod(9710) = 0) && (Random <= 249)
value=255,255,255
time=5
under=(IfElse(Random <= 499,1,0))
ignorehitpause= 1

[State 11020,EnvShake]
type=EnvShake
trigger1=(Time > 75) && (Var(0) > 75) && (Pos Y >= -30) && ((GameTime%7) = 0)
trigger2=(Parent, StateNo = 191) && ((GameTime%7) = 0)
time=5
freq=140
ampl=(IfElse(Var(0) = 0,-4,-6))
phase=120

[State 11020,BGPalFX]
type=BGPalFX
trigger1=(Var(0) > 0)
time=1
add=(0-(Var(0)/15)),(0-(Var(0)/15)),(0-(Var(0)/15))
mul=256,256,256
invertall=0
color=256

[State 11020,Explod]
type=Explod
trigger1=(Time > 75) && ((GameTime%20) = 0) && (NumExplod(9820) < 30) && (Random <= 499)
anim=9820
id=9820
pos=0,-100
postype=p1
facing=1
vfacing=1
bindtime=1
vel=0,(IfElse(Random <= 499,-0.5,-0.7))
accel=0,0
random=300,50
removetime=70
supermove=0
supermovetime= 0
pausemovetime= 0
scale=(IfElse(Random <= 499,0.15,0.30)),(IfElse(Random <= 499,0.15,0.30))
sprpriority=(IfElse(Random <= 499,3,-3))
ontop=0
shadow=0,0,0
ownpal=1
removeongethit= 0

[State 11020,Helper]
type=Helper
trigger1=(Time > 75) && (Var(0) > 75) && ((GameTime%10) = 0) && (Random < 249) && (NumHelper(9500) < 1)
helpertype=Normal
name="Rock1"
id=9500
pos=0,0
postype=p1
facing=0
stateno=9500
keyctrl=0
ownpal=1
supermovetime= 0
pausemovetime= 0
size.xscale=(IfElse(Random <= 799,0.2,.35))
size.yscale=(IfElse(Random <= 799,0.2,.35))

[State 11020,Helper]
type=Helper
trigger1=(Time > 75) && (Var(0) > 75) && ((GameTime%20) = 0) && (Random > 749) && (NumHelper(9510) < 1)
helpertype=Normal
name="Rock2"
id=9510
pos=0,0
postype=p1
facing=0
stateno=9510
keyctrl=0
ownpal=1
supermovetime= 0
pausemovetime= 0
size.xscale=(IfElse(Random <= 799,0.25,.4))
size.yscale=(IfElse(Random <= 799,0.25,.4))

[State 11020,Helper]
type=Helper
trigger1=(Time > 75) && (Var(0) > 75) && ((GameTime%30) = 0) && (Random = [249,749]) && (NumHelper(9520) < 1)
helpertype=Normal
name="Rock3"
id=9520
pos=0,0
postype=p1
facing=0
stateno=9520
keyctrl=0
ownpal=1
supermovetime= 0
pausemovetime= 0
size.xscale=(IfElse(Random <= 799,0.15,.25))
size.yscale=(IfElse(Random <= 799,0.15,.25))

[State 11020,Helper]
type=Helper
trigger1=(Time > 75) && (Var(0) > 75) && ((GameTime%40) = 0) && (Random = [249,749]) && (NumHelper(9530) < 1)
helpertype=Normal
name="Rock4"
id=9530
pos=0,0
postype=p1
facing=0
stateno=9530
keyctrl=0
ownpal=1
supermovetime= 0
pausemovetime= 0
size.xscale=(IfElse(Random <= 799,0.1,.2))
size.yscale=(IfElse(Random <= 799,0.1,.2))

[State 11020,Helper]
type=Helper
trigger1=(Time > 75) && (Var(0) > 75) && ((GameTime%50) = 0) && (Random = [249,749]) && (NumHelper(9540) < 1)
helpertype=Normal
name="Rock5"
id=9540
pos=0,0
postype=p1
facing=0
stateno=9540
keyctrl=0
ownpal=1
supermovetime= 0
pausemovetime= 0
size.xscale=(IfElse(Random <= 799,0.4,.3))
size.yscale=(IfElse(Random <= 799,0.4,.35))

[State 11020,DestroySelf]
type=DestroySelf
trigger1=(Var(0) < 0) || (Parent, StateNo = 192)

;---------------------------------------------------------------------------
;ScreenBound
[Statedef 11030]
type= A
movetype=I
physics=N
anim=11030
velset=0,0
ctrl=0
poweradd=0
juggle=0
sprpriority=0

[State 0, ScreenBound]
type = ScreenBound
trigger1 =1
value = 1
movecamera =1,0
ignorehitpause =1

[State 11030,VarSet]
type=VarSet
trigger1=(!Time)
var(0)=(Parent, StateNo)

[State 11030,DestroySelf]
type=DestroySelf
trigger1=(Parent, StateNo != Var(0)) || (Parent, AnimElem = 4)

;---------------------------------------------------------------------------
;WideScreen
[Statedef 11040]
type= A
movetype=I
physics=N
anim=11030
velset=0,0
ctrl=0
poweradd=0
juggle=0
facep2=0
hitdefpersist= 0
movehitpersist= 0
hitcountpersist= 0
sprpriority=8

[State 11040,AssertSpecial]
type=AssertSpecial
trigger1=1
flag=Intro
flag2=RoundNotOver
flag3=NoBarDisplay
ignorehitpause= 1

[State 11040,AssertSpecial]
type=AssertSpecial
trigger1=1
flag=NoFG
flag2=TimerFreeze
ignorehitpause= 1

[State 11040,AssertSpecial]
type=AssertSpecial
trigger1=(Parent, StateNo = [191,193])
flag=NoMusic
ignorehitpause= 1

[State 11040,AllPalFX]
type=AllPalFX
trigger1=(!Time) && (Parent, StateNo != 191)
time=(IfElse((Parent, Var(23) = 8), 345,270))
add=0,0,0
mul=256,256,256
sinadd=0,0,0,0
invertall=0
color=100
ignorehitpause= 1

[State 11040,Pause]
type=Pause
trigger1=(!Time) && (Parent, Anim != 191)
time=(IfElse((Parent, Var(23) = 8), 350,275))
movetime=(IfElse((Parent, Var(23) = 8), 350,275))
persistent=0
ignorehitpause= 1

[State 11040,PlaySnd]
type=PlaySnd
trigger1=(!Time) && (Parent, Var(23) = 1)
value=S0,7

[State 11040,PlaySnd]
type=PlaySnd
trigger1=(!Time) && (Parent, Var(23) = 2)
value=S0,10

[State 11040,PlaySnd]
type=PlaySnd
trigger1=(!Time) && (Parent, Var(23) = 3)
value=S0,11

[State 11040,PlaySnd]
type=PlaySnd
trigger1=(!Time) && (Parent, Var(23) = 4)
value=S0,12

[State 11040,PlaySnd]
type=PlaySnd
trigger1=(Time = 20) && (Parent, Var(23) = 5)
value=S0,15

[State 11040,PlaySnd]
type=PlaySnd
trigger1=(!Time) && (Parent, Var(23) = 6)
value=S0,16

[State 11040,PlaySnd]
type=PlaySnd
trigger1=(!Time) && (Parent, Var(23) = 7)
value=S0,17

[State 11040,PlaySnd]
type=PlaySnd
trigger1=(Time = 20) && (Parent, Var(23) = 8)
value=S0,20

[State 11040,PlaySnd]
type=PlaySnd
trigger1=(Time = 20) && (Parent, Var(23) = 9)
value=S0,21

[State 11040,PlaySnd]
type=PlaySnd
trigger1=(Time = 20) && (Parent, Var(23) = 10)
value=S0,22

[State 11040,PlaySnd]
type=PlaySnd
trigger1=(Time = 20) && (Parent, Var(23) = 11)
value=S0,23

[State 11040,PlaySnd]
type=PlaySnd
trigger1=(Time = 20) && (Parent, Var(23) = 12)
value=S0,(IfElse(Random <= 499,13,14))

[State 11040,Explod]
type=Explod
trigger1=(!Time) && (Parent, StateNo != 191) && (Parent, Var(23) != 8)
anim=11040
id=11040
pos=0,0
postype=left
facing=1
vfacing=1
bindtime=-1
vel=0,0
accel=0,0
random=0,0
removetime=270
supermove=0
supermovetime= 9999
pausemovetime= 9999
scale=1,1
sprpriority=7
ontop=1
shadow=0,0,0
ownpal=1
removeongethit= 0

[State 11040,Explod]
type=Explod
trigger1=(!Time) && (Parent, Var(23) = 8)
anim=11055
id=11055
pos=0,0
postype=left
facing=1
vfacing=1
bindtime=-1
vel=0,0
accel=0,0
random=0,0
removetime=340
supermove=0
supermovetime= 9999
pausemovetime= 9999
scale=1,1
sprpriority=7
ontop=1
shadow=0,0,0
ownpal=1
removeongethit= 0

[State 11040,Explod]
type=Explod
trigger1=(!Time) && (Parent, Var(23) = 1)
anim=11041
id=11041
pos=0,0
postype=left
facing=1
vfacing=1
bindtime=-1
vel=0,0
accel=0,0
random=0,0
removetime=250
supermove=0
supermovetime= 9999
pausemovetime= 9999
scale=1,1
sprpriority=7
ontop=1
shadow=0,0,0
ownpal=1
removeongethit= 0

[State 11040,Explod]
type=Explod
trigger1=(!Time) && (Parent, Var(23) = 2)
anim=11042
id=11042
pos=0,0
postype=left
facing=1
vfacing=1
bindtime=-1
vel=0,0
accel=0,0
random=0,0
removetime=250
supermove=0
supermovetime= 9999
pausemovetime= 9999
scale=1,1
sprpriority=7
ontop=1
shadow=0,0,0
ownpal=1
removeongethit= 0

[State 11040,Explod]
type=Explod
trigger1=(!Time) && (Parent, Var(23) = 3)
anim=11043
id=11043
pos=0,0
postype=left
facing=1
vfacing=1
bindtime=-1
vel=0,0
accel=0,0
random=0,0
removetime=250
supermove=0
supermovetime= 9999
pausemovetime= 9999
scale=1,1
sprpriority=7
ontop=1
shadow=0,0,0
ownpal=1
removeongethit= 0

[State 11040,Explod]
type=Explod
trigger1=(!Time) && (Parent, Var(23) = 4)
anim=11044
id=11044
pos=0,0
postype=left
facing=1
vfacing=1
bindtime=-1
vel=0,0
accel=0,0
random=0,0
removetime=250
supermove=0
supermovetime= 9999
pausemovetime= 9999
scale=1,1
sprpriority=7
ontop=1
shadow=0,0,0
ownpal=1
removeongethit= 0

[State 11040,Explod]
type=Explod
trigger1=(!Time) && (Parent, Var(23) = 5)
anim=11045
id=11045
pos=0,0
postype=left
facing=1
vfacing=1
bindtime=-1
vel=0,0
accel=0,0
random=0,0
removetime=250
supermove=0
supermovetime= 9999
pausemovetime= 9999
scale=1,1
sprpriority=7
ontop=1
shadow=0,0,0
ownpal=1
removeongethit= 0

[State 11040,Explod]
type=Explod
trigger1=(!Time) && (Parent, Var(23) = 6)
anim=11046
id=11046
pos=0,0
postype=left
facing=1
vfacing=1
bindtime=-1
vel=0,0
accel=0,0
random=0,0
removetime=250
supermove=0
supermovetime= 9999
pausemovetime= 9999
scale=1,1
sprpriority=7
ontop=1
shadow=0,0,0
ownpal=1
removeongethit= 0

[State 11040,Explod]
type=Explod
trigger1=(!Time) && (Parent, Var(23) = 7)
anim=11047
id=11047
pos=0,0
postype=left
facing=1
vfacing=1
bindtime=-1
vel=0,0
accel=0,0
random=0,0
removetime=250
supermove=0
supermovetime= 9999
pausemovetime= 9999
scale=1,1
sprpriority=7
ontop=1
shadow=0,0,0
ownpal=1
removeongethit= 0

[State 11040,Explod]
type=Explod
trigger1=(!Time) && (Parent, Var(23) = 8)
anim=11048
id=11048
pos=0,0
postype=left
facing=1
vfacing=1
bindtime=-1
vel=0,0
accel=0,0
random=0,0
removetime=340
supermove=0
supermovetime= 9999
pausemovetime= 9999
scale=1,1
sprpriority=7
ontop=1
shadow=0,0,0
ownpal=1
removeongethit= 0

[State 11040,Explod]
type=Explod
trigger1=(!Time) && (Parent, Var(23) = 9)
anim=11049
id=11049
pos=0,0
postype=left
facing=1
vfacing=1
bindtime=-1
vel=0,0
accel=0,0
random=0,0
removetime=250
supermove=0
supermovetime= 9999
pausemovetime= 9999
scale=1,1
sprpriority=7
ontop=1
shadow=0,0,0
ownpal=1
removeongethit= 0

[State 11040,Explod]
type=Explod
trigger1=(!Time) && (Parent, Var(23) = 10)
anim=11050
id=11050
pos=0,0
postype=left
facing=1
vfacing=1
bindtime=-1
vel=0,0
accel=0,0
random=0,0
removetime=250
supermove=0
supermovetime= 9999
pausemovetime= 9999
scale=1,1
sprpriority=7
ontop=1
shadow=0,0,0
ownpal=1
removeongethit= 0

[State 11040,Explod]
type=Explod
trigger1=(!Time) && (Parent, Var(23) = 11)
anim=11051
id=11051
pos=0,0
postype=left
facing=1
vfacing=1
bindtime=-1
vel=0,0
accel=0,0
random=0,0
removetime=250
supermove=0
supermovetime= 9999
pausemovetime= 9999
scale=1,1
sprpriority=7
ontop=1
shadow=0,0,0
ownpal=1
removeongethit= 0

[State 11040,Explod]
type=Explod
trigger1=(!Time) && (Parent, Var(23) = 12)
anim=11052
id=11052
pos=0,0
postype=left
facing=1
vfacing=1
bindtime=-1
vel=0,0
accel=0,0
random=0,0
removetime=250
supermove=0
supermovetime= 9999
pausemovetime= 9999
scale=1,1
sprpriority=7
ontop=1
shadow=0,0,0
ownpal=1
removeongethit= 0

[State 11040,ParentVarSet]
type=ParentVarSet
trigger1=(Time = 21) && (Parent, StateNo != [191,192])
var(23)=-1

[State 11040,ParentVarSet]
type=ParentVarSet
trigger1=(Time = 21) && (Parent, StateNo = [180,182])
var(23)=-2

[State 11040,ParentVarSet]
type=ParentVarSet
trigger1=(Parent, StateNo = 192) && (Parent, AnimElem = 3, = 31)
var(23)=0

[State 11040,RemoveExplod]
type=RemoveExplod
trigger1=(Time > 275)
id=11040

[State 11040,RemoveExplod]
type=RemoveExplod
trigger1=(Time > 275)
id=11041

[State 11040,RemoveExplod]
type=RemoveExplod
trigger1=(Time > 275)
id=11042

[State 11040,RemoveExplod]
type=RemoveExplod
trigger1=(Time > 275)
id=11043

[State 11040,RemoveExplod]
type=RemoveExplod
trigger1=(Time > 275)
id=11044

[State 11040,RemoveExplod]
type=RemoveExplod
trigger1=(Time > 275)
id=11045

[State 11040,RemoveExplod]
type=RemoveExplod
trigger1=(Time > 275)
id=11046

[State 11040,RemoveExplod]
type=RemoveExplod
trigger1=(Time > 275)
id=11047

[State 11040,RemoveExplod]
type=RemoveExplod
trigger1=(Time > 350)
id=11048

[State 11040,RemoveExplod]
type=RemoveExplod
trigger1=(Time > 275)
id=11049

[State 11040,RemoveExplod]
type=RemoveExplod
trigger1=(Time > 275)
id=11050

[State 11040,RemoveExplod]
type=RemoveExplod
trigger1=(Time > 275)
id=11051

[State 11040,RemoveExplod]
type=RemoveExplod
trigger1=(Time > 275)
id=11052

[State 11040,DestroySelf]
type=DestroySelf
trigger1=(Time > (IfElse((Parent, Var(23) = 8), 350,275)))

