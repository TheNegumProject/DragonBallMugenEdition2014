;===========================================================================
;Zangya's Helper States
;===========================================================================
;---------------------------------------------------------------------------
;Aura Sparkles
[StateDef 10001]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 9999
ctrl = 0
sprpriority = 0

[State 10001, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 0,0

[State 10001, VarSet]
type = VarRandom
trigger1 = time
v = 6
range = -27,16

[State 10001, Sparkle-1]
type = Explod
trigger1 = !(time%3)
anim = 11551
id = 11550
postype = p1
pos = var(6), var(7)
vel = abs(var(6)*0.01), -3-(var(7)*0.05)
accel = 0, 0
ownpal = 1
scale = 0.5, 0.5
sprpriority = 3

[State 10001, VarSet2]
type = VarRandom
trigger1 = 1
v = 7
range = -20,20

[State 10001, End]
type = DestroySelf
trigger1 = parent, stateno != 1701
;---------------------------------------------------------------------------
;Growing Bubble Ring [State 1001]
[StateDef 10100]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 10101
ctrl = 0
sprpriority = 3

[State 10100, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 7,-43

[State 10100, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 10100, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 10100, VarSet]
type = VarSet
trigger1 = time = 0
v = 4
value = 0

[State 10100, VarSet]
type = VarAdd
trigger1 = 1
v = 4
value = 13

[State 10100, PalFX]
type = PalFX
trigger1 = 1
time=1
add = -Var(4),-Var(4),-Var(4)
persistent = 1
ignorehitpause = 1

[State 10100, AngleSet]
type = AngleSet
trigger1 = time = 0
value = 0

[State 10100, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = (time+3)*0.03, (time+3)*.03

[State 11050, VarSet]
type = VarRandom
trigger1 = time
v = 5
range = 0,359

[State 11050, FVarSet]
type = VarSet
trigger1 = time
fv = 6
value = var(5)*(3.142/180)

[State 10700, Sparkle]
type = Explod
trigger1 = time < 11
anim = ifelse(time%2, 11559,11550)
id = 11550
postype = p1
pos = 0, 0
vel = cos(fvar(6))*1.4, -sin(fvar(6))*1.4
accel = 0, 0.05
ownpal = 1
scale = 0.25, 0.25
sprpriority = 3

[State 10100, End]
type = DestroySelf
trigger1 = time = 17
;---------------------------------------------------------------------------
;Growing Bubble Ring 2
[StateDef 10101]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 10101
ctrl = 0
sprpriority = 3

[State 10101, BindToParent]
type = BindToParent
trigger1 = !time
time = 1
pos = 0,0

[State 10101, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 10101, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 10101, VarSet]
type = VarSet
trigger1 = time = 0
v = 4
value = 0

[State 10101, VarSet]
type = VarAdd
trigger1 = 1
v = 4
value = 13

[State 10101, PalFX]
type = PalFX
trigger1 = 1
time=1
add = -Var(4),-Var(4),-Var(4)
persistent = 1
ignorehitpause = 1

[State 10101, AngleSet]
type = AngleSet
trigger1 = time = 0
value = 0

[State 10101, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = (time+3)*0.035, (time+3)*.035

[State 10101, End]
type = DestroySelf
trigger1 = time = 17
;---------------------------------------------------------------------------
;Growing Bubble Ring 3
[StateDef 10102]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 10101
ctrl = 0
sprpriority = 3

[State 10102, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 10102, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 10102, VarSet]
type = VarSet
trigger1 = time = 0
v = 4
value = 0

[State 10102, VarSet]
type = VarAdd
trigger1 = 1
v = 4
value = 13

[State 10102, PalFX]
type = PalFX
trigger1 = 1
time=1
add = -Var(4),-Var(4),-Var(4)
persistent = 1
ignorehitpause = 1

[State 10102, AngleSet]
type = AngleSet
trigger1 = time = 0
value = 0

[State 10102, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = (time+3)*0.035, (time+3)*.035

[State 10102, VarSet]
type = VarRandom
trigger1 = time
v = 5
range = 0,359

[State 10102, FVarSet]
type = VarSet
trigger1 = time
fv = 6
value = var(5)*(3.142/180)

[State 10102, Sparkle]
type = Explod
trigger1 = time < 12
anim = ifelse(time%2, 11559,11550)
id = 11550
postype = p1
pos = 0, 0
vel = cos(fvar(6))*2.0, -sin(fvar(6))*2.0
accel = 0, 0.075
ownpal = 1
scale = 0.25, 0.25
sprpriority = 3

[State 10102, End]
type = DestroySelf
trigger1 = time = 17
;---------------------------------------------------------------------------
;Growing Bubble Ring [State 1051]
[StateDef 10103]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 10101
ctrl = 0
sprpriority = 3

[State 10103, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 26,-22

[State 10103, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 10103, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 10103, VarSet]
type = VarSet
trigger1 = time = 0
v = 4
value = 0

[State 10103, VarSet]
type = VarAdd
trigger1 = 1
v = 4
value = 13

[State 10103, PalFX]
type = PalFX
trigger1 = 1
time=1
add = -Var(4),-Var(4),-Var(4)
persistent = 1
ignorehitpause = 1

[State 10103, AngleSet]
type = AngleSet
trigger1 = time = 0
value = 0

[State 10103, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = (time+3)*0.04, (time+3)*.04

[State 10103, End]
type = DestroySelf
trigger1 = time = 17

;--------------------------------------------------------------------------------------
;Dash Lines-RunFwd [State 100 && 102]
[StateDef 10200]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 9999;Invisible
ctrl = 0
sprpriority = 2

[State 10200, VarSet]
type = VarRandom
trigger1 = 1
v = 10
range = 0, 53

[State 10200, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 0,0

[State 10200, DashLine]
type = Explod
trigger1 = !(time%2)
Anim = 10200
Postype = p1
Pos = floor(-35+(Var(10)*0.6)), -var(10)
velocity = 1, 0
Id = 10200
sprpriority = 3
removeongethit = 0
Bindtime = 1
SuperMove = 1
ownpal=0
scale = 0.4,0.5

[State 10200, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 10200, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 10200, DestroySelf]
type = DestroySelf
trigger1 = (parent, stateno != 100 && parent, stateno != 102)
;--------------------------------------------------------------------------------------
;Dash Lines-RunBack [States 105 && 107]
[StateDef 10201]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 9999;Invisible
ctrl = 0
sprpriority = 2

[State 10201, VarSet]
type = VarRandom
trigger1 = 1
v = 10
range = 0, 60

[State 10201, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 0,0

[State 10201, DashLine]
type = Explod
trigger1 = time%2
Anim = 10201
Postype = p1
Pos = floor(19-(Var(10)*0.2)), -var(10)
velocity = -1, 0
Id = 10200
sprpriority = 3
removeongethit = 0
Bindtime = 1
SuperMove = 1
ownpal=0
scale = 0.4,0.5

[State 10201, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 10201, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 10201, DestroySelf]
type = DestroySelf
trigger1 = (parent, stateno != 105 && parent, stateno != 107)
;--------------------------------------------------------------------------------------
;Dash Lines-RunUp [State 109]
[StateDef 10205]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 9999;Invisible
ctrl = 0
sprpriority = 2

[State 10205, VarSet]
type = VarRandom
trigger1 = 1
v = 10
range = 0, 30

[State 10205, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 0,0

[State 10205, DashLine]
type = Explod
trigger1 = !(time%2)
Anim = 10205
Postype = p1
Pos = -15+Var(10), 5-var(10)
velocity = 0, -1
Id = 10200
sprpriority = 3
removeongethit = 0
Bindtime = 1
SuperMove = 1
ownpal=0
scale = 0.5,0.4

[State 10205, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 10205, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 10205, DestroySelf]
type = DestroySelf
trigger1 = (parent, stateno != 109)
;--------------------------------------------------------------------------------------
;Dash Lines-SuperJump [State 41]
[StateDef 10206]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 9999;Invisible
ctrl = 0
sprpriority = 2

[State 10206, VarSet]
type = VarRandom
trigger1 = 1
v = 10
range = 0, 30

[State 10206, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 0,0

[State 10206, DashLine]
type = Explod
trigger1 = time%2
Anim = 10205
Postype = p1
Pos = -15+Var(10), 5-var(10)
velocity = 0, -1
Id = 10200
sprpriority = 3
removeongethit = 0
Bindtime = 1
SuperMove = 1
ownpal=0
scale = 0.5,0.4

[State 10206, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 10206, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 10206, DestroySelf]
type = DestroySelf
trigger1 = time >= 12
;--------------------------------------------------------------------------------------
;Twirly Kick Foot Sparkles and Stuff
[StateDef 10700]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 12151
ctrl = 0
sprpriority = 3

[State 10700, BindToParent]
type = BindToParent
trigger1 = parent, animelem = 2, >=0
time = 1
pos = 7,-77

[State 10700, BindToParent]
type = BindToParent
trigger1 = parent, animelem = 3, >=0
time = 1
pos = 4,-77

[State 10700, BindToParent]
type = BindToParent
trigger1 = parent, animelem = 4, >=0
time = 1
pos = 1,-77

[State 10700, BindToParent]
type = BindToParent
trigger1 = parent, animelem = 5, >=0
time = 1
pos = -1,-77

[State 10700, BindToParent]
type = BindToParent
trigger1 = parent, animelem = 6, >=0
time = 1
pos = -4,-77

[State 10700, BindToParent]
type = BindToParent
trigger1 = parent, animelem = 7, >=0
time = 1
pos = -7,-77

[State 10700, BindToParent]
type = BindToParent
trigger1 = parent, animelem = 8, >=0
time = 1
pos = -3,-77

[State 10700, BindToParent]
type = BindToParent
trigger1 = parent, animelem = 9, >=0
time = 1
pos = -1,-77

[State 10700, BindToParent]
type = BindToParent
trigger1 = parent, animelem = 10, >=0
time = 1
pos = 1,-77

[State 10700, BindToParent]
type = BindToParent
trigger1 = parent, animelem = 11, >=0
time = 1
pos = 3,-77

[State 10700, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 10700, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 10700, AngleSet]
type = AngleSet
trigger1 = !time
value = 90

[State 10700, AngleDraw]
type = AngleDraw
trigger1 = 1

[State 1400, AfterImage]
type = AfterImage
trigger1 = !time
time = 50
length = 10
palinvertall = 0
palbright = 0,0,0
palcontrast = 130,20,80
paladd = 15,0,15
timegap = 1
framegap = 1
trans = Add

[State 10700, VarSet]
type = VarRandom
trigger1 = time
v = 6
range = -6,6

[State 10700, VarSet2]
type = VarRandom
trigger1 = time
v = 7
range = -6,6

[State 10700, Sparkle]
type = Explod
trigger1 = !(time%2)
anim = 11550
id = 11550
postype = p1
pos = var(6), var(7)
vel = 0, 0
accel = 0, 0.05
ownpal = 1
scale = 0.25, 0.25
sprpriority = 3

[State 10700, DestroySelf]
type = DestroySelf
trigger1 = parent, stateno != [1400,1402]
;--------------------------------------------------------------------------------------
;Dive Kick Sparkles and Foot Glow 
[StateDef 10701]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 12151
ctrl = 0
sprpriority = 3

[State 10701, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 36,-15

[State 10701, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 10701, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 10701, AngleSet]
type = AngleSet
trigger1 = !time
value = -35

[State 10701, AngleDraw]
type = AngleDraw
trigger1 = 1

[State 10701, AfterImage]
type = AfterImage
trigger1 = !time
time = 50
length = 10
palinvertall = 0
palbright = 0,0,0
palcontrast = 130,20,80
paladd = 15,0,15
timegap = 1
framegap = 1
trans = Add

[State 10701, VarSet]
type = VarRandom
trigger1 = time
v = 6
range = -6,6

[State 10701, VarSet2]
type = VarRandom
trigger1 = time
v = 7
range = -6,6

[State 10701, Sparkle]
type = Explod
trigger1 = !(time%2)
anim = 11550
id = 11550
postype = p1
pos = var(6), var(7)
vel = 0, 0
accel = 0, 0.05
ownpal = 1
scale = 0.25, 0.25
sprpriority = 3

[State 10701, DestroySelf]
type = DestroySelf
trigger1 = parent, stateno != [1450,1452]
;---------------------------------------------------------------------------
;Hit Spark-Small
[StateDef 11000]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 11000
ctrl = 0
sprpriority = 3

[State 11000, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 11000, VarSet]
type = VarRandom
trigger1 = time = 0
v = 4
range = 0,3

[State 11000, AngleSet]
type = AngleSet
trigger1 = time = 0
value = var(4)*90

[State 11000, AngleDraw]
type = AngleDraw
trigger1 = 1

[State 11000, Hit_Particle.Helper]
type = Helper
trigger1 = time = [1,3]
name = "Hit Particles"
stateno = 11050
postype = p1
pos = 0,0
keyctrl = 0
ownpal = 1
id = 11050
ignorehitpause = 1
supermovetime  = 9999
pausemovetime  = 9999
size.xscale = 1
size.yscale = 1

[State 11000, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 11000, Bubble]
type = Explod
trigger1 = time = 2
Anim = 10100
Pos = 0, 0
Id = 10100
sprpriority = 3
removeongethit = 1
;removetime = 75
Postype = p1
Bindtime = -1
SuperMove = 1
ownpal = 1
scale =(time*0.04), (time*0.04)

[State 11010, Modify.Bubble]
type = ModifyExplod
trigger1 = time
ID = 10100
scale = (time*0.04), (time*0.04)

[State 11000, End]
type = DestroySelf
trigger1 = animtime = 0
;---------------------------------------------------------------------------
;Hit Spark-Medium
[StateDef 11010]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 11010
ctrl = 0
sprpriority = 3

[State 11010, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 11010, VarSet]
type = VarRandom
trigger1 = time = 0
v = 4
range = 0,3

[State 11010, AngleSet]
type = AngleSet
trigger1 = time = 0
value = var(4)*90

[State 11010, AngleDraw]
type = AngleDraw
trigger1 = 1

[State 11010, Hit_Particle.Helper]
type = Helper
trigger1 = time = [1,3]
name = "Hit Particles"
stateno = 11050
postype = p1
pos = 0,0
keyctrl = 0
ownpal = 1
id = 11050
ignorehitpause = 1
supermovetime  = 9999
pausemovetime  = 9999
size.xscale = 1
size.yscale = 1

[State 11010, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 11010, Bubble]
type = Explod
trigger1 = time = 2
Anim = 10100
Pos = 0, 0
Id = 10100
sprpriority = 3
removeongethit = 1
;removetime = 75
Postype = p1
Bindtime = -1
SuperMove = 1
ownpal = 1
scale =(time*0.05), (time*0.05)

[State 11010, Modify.Bubble]
type = ModifyExplod
trigger1 = time
ID = 10100
scale = (time*0.05), (time*0.05)

[State 11010, End]
type = DestroySelf
trigger1 = animtime = 0
;---------------------------------------------------------------------------
;Hit Spark-Large
[StateDef 11020]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 11020
ctrl = 0
sprpriority = 3

[State 11020, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 11020, VarSet]
type = VarRandom
trigger1 = time = 0
v = 4
range = 0,3

[State 11020, AngleSet]
type = AngleSet
trigger1 = time = 0
value = var(4)*90

[State 11020, AngleDraw]
type = AngleDraw
trigger1 = 1

[State 11020, Hit_Particle.Helper]
type = Helper
trigger1 = time = [1,4]
name = "Hit Particles"
stateno = 11050
postype = p1
pos = 0,0
keyctrl = 0
ownpal = 1
id = 11050
ignorehitpause = 1
supermovetime  = 9999
pausemovetime  = 9999
size.xscale = 1
size.yscale = 1

[State 11020, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 11020, Bubble]
type = Explod
trigger1 = time = 2
Anim = 10100
Pos = 0, 0
Id = 10100
sprpriority = 3
removeongethit = 1
;removetime = 75
Postype = p1
Bindtime = -1
SuperMove = 1
ownpal = 1
scale =(time*0.06), (time*0.06)

[State 11020, Modify.Bubble]
type = ModifyExplod
trigger1 = time
ID = 10100
scale = (time*0.06), (time*0.06)

[State 11020, End]
type = DestroySelf
trigger1 = animtime = 0
;---------------------------------------------------------------------------
;Hit Spark Particles
[StateDef 11050]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 11050
ctrl = 0
sprpriority = 3

;-----------
[State 11050, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 11050, VarSet]
type = VarSet
trigger1 = time = 0
v = 4
value = 0

[State 11050, VarSet]
type = VarAdd
trigger1 = 1
v = 4
value = 25

[State 11050, PalFX]
type = PalFX
trigger1 = 1
time=1
add = -Var(4),-Var(4),-Var(4)
persistent = 1
ignorehitpause = 1
;-----------

[State 11050, VarSet]
type = VarRandom
trigger1 = time = 0
v = 5
range = 0,359


[State 11050, FVarSet]
type = VarSet
trigger1 = time = 0
fv = 6
value = var(5)*(3.142/180)

[State 11050, AngleSet]
type = AngleSet
trigger1 = time = 0
value = var(5)

[State 11050, AngleDraw]
type = AngleDraw
trigger1 = 1

[State 11050, VelAdd]
type = VelAdd
trigger1 = 1
x = cos(fvar(6))
y = -sin(fvar(6))


[State 11050, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 11050, End]
type = DestroySelf
trigger1 = time = 10
;---------------------------------------------------------------------------
;Air Dash Upwards Effect: Used in States [109]
[StateDef 11051]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 11600
ctrl = 0
sprpriority = 2
poweradd = 0

[State 11050, VarSet]
type = VarRandom
trigger1 = time = 0
v = 5
range = 0,359

[State 11050, AngleSet]
type = AngleSet
trigger1 = time = 0
value = var(5)

[State 11050, AngleDraw]
type = AngleDraw
trigger1 = 1

[State 11050, VelAdd]
type = VelAdd
triggerall = var(5) = [0,89]
trigger1 = 1
x = 1-(var(5)*0.01)
y = 0-(var(5)*0.01)

[State 11050, VelAdd]
type = VelAdd
triggerall = var(5) = [90,179]
trigger1 = 1
x = 0-((var(5)-90)*0.01)
y = -1+((var(5)-90)*0.01)

[State 11050, VelAdd]
type = VelAdd
triggerall = var(5) = [180,269]
trigger1 = 1
x = -1+((var(5)-180)*0.01)
y = 0+((var(5)-180)*0.01)

[State 11050, VelAdd]
type = VelAdd
triggerall = var(5) = [270,359]
trigger1 = 1
x = 0+((var(5)-270)*0.01)
y = 1-((var(5)-270)*0.01)

[State 11050, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
;---------------------------------------------------------------------------
;Air Dash Upwards Effect: Used in States [109]
[StateDef 11609]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 11600
ctrl = 0
sprpriority = 2
poweradd = 0

[State 11609, Trans]
type = Trans
trigger1 = 1
trans = add

[State 11609, AngleSet]
type = AngleSet
trigger1 = time = 0
value = 90

[State 11609, AngleDraw]
type = AngleDraw
trigger1 = 1

[State 11609, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
;---------------------------------------------------------------------------
;Energy Volley Spawner
[StateDef 12000]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 9999
ctrl = 0
sprpriority = 2
poweradd = 0

[State 12600, BindToParent]
type = BindToParent
trigger1 = !time
time = 35
pos = 0,0

[State 12000, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 12000, KiVolley.Helper]
type = Helper
trigger1 = time = 5
name = "KiVolleyBall-1"
stateno = 12001
postype = p1
pos = 0, 0
keyctrl = 0
ownpal = 1
id = 12001

[State 12000, KiVolley.Helper]
type = Helper
trigger1 = time = 10
name = "KiVolleyBall-2"
stateno = 12002
postype = p1
pos = 0, 0
keyctrl = 0
ownpal = 1
id = 12002

[State 12000, KiVolley.Helper]
type = Helper
trigger1 = time = 15
name = "KiVolleyBall-3"
stateno = 12003
postype = p1
pos = 0, 0
keyctrl = 0
ownpal = 1
id = 12003

[State 12000, KiVolley.Helper]
type = Helper
trigger1 = time = 20
name = "KiVolleyBall-4"
stateno = 12004
postype = p1
pos = 0, 0
keyctrl = 0
ownpal = 1
id = 12004

[State 12000, VarSet]
type = VarSet
trigger1 = !time
v = 3
value = 0
[State 12000, VarSet]
type = VarSet
trigger1 = (parent, anim = 1001)
v = 3
value = 1

[State 12000, VarSet]
type = VarSet
trigger1 = (parent, stateno != [1000,1002]) && time < 51
v = 4
value = 1

[State 12000, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 12000, DestroySelf]
type = DestroySelf
trigger1 = time > 20 && numhelper = 0
trigger2 = time > 120
;---------------------------------------------------------------------------
;Energy Volley Ball 1
[StateDef 12001]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 12001
ctrl = 0
sprpriority = 2
poweradd = -40

[State 12001, VarSet]
type = VarAdd
trigger1 = var(3) = 1
v = 3
value = 1 
[State 12001, VarSet]
type = VarSet
trigger1 = parent, var(3) = [0,1]
v = 3
value = parent, var(3) 

[State 12001, VarSet]
type = VarSet
trigger1 = 1
v = 4
value = parent, var(4) 

[State 12001, BindToParent]
type = BindToParent
trigger1 = var(3)=0 && var(4)=0
time = 1
pos = 8,-75

[State 12001, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 12001, Ball]
type = Explod
trigger1 = !time
anim = 12000
id = 12000
postype = p1
pos = 0, 0
vel = 0, 0
bindtime = -1
removetime = -1
removeongethit = 1
accel = 0
ownpal = 1
scale = 0.1, 0.1
sprpriority = 3

[State 12001, Ball-1-Expand]
type =  ModifyExplod
trigger1 = time = [1,10]
id = 12000
scale = 0.1+(time)*0.04, 0.1+(time)*0.04

[State 12001, VelSet]
type = VelSet
trigger1 = var(3)=1 && (vel x = 0 && vel y = 0) && pos y < 0
x = 4
y = -8

[State 12001, VelAdd]
type = VelAdd
trigger1 = (var(3)!=0) && pos y < 0
y = 0.4

[State 12001, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 12001, No Shadow]
type = AssertSpecial
trigger1 = time >= 0
flag = noshadow
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 12001, HitDef]
type = HitDef
trigger1 = 1
attr = S, SP
animtype  = Hard
damage = ifelse(var(3)!=0, 25,15), ifelse(var(3)!=0,5,3)
getpower = 0
givepower = 0
hitflag = MAFP
guardflag = MA
pausetime = 1,12
sparkno = -1
guard.sparkno = -1
sparkxy = -10,0
hitsound   = -1
guardsound = -1
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6      
air.velocity = -4.5,-2.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0

[State 12001, PosSet]
type = PosSet
trigger1 = pos y > 0
y = 0

[State 12001, RemoveBall]
type =  RemoveExplod
trigger1 = (movecontact) || (time && pos y = 0)
id = 12000

[State 12001, Movecontact]
type = ChangeState
trigger1 = (movecontact) || (time && pos y = 0)
value = 13000

[State 12001, Gethit]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AT, AP
slot = 0
stateno = 13000

[State 12001, VarSet]
type = VarSet
trigger1 = 1
v = 4
value = parent, var(4) 

[State 12000, VarSet]
type = VarRandom
trigger1 = !(Time % 2)
v = 6
range = -10,10

[State 12000, VarSet2]
type = VarRandom
trigger1 = !(Time % 2)
v = 7
range = -10,10

[State 12000, Sparkles-1]
type = Explod
trigger1 = Time % 2
anim = 11550
id = 11550
postype = p1
pos = var(6), var(7)
vel = (vel x)*0.1, (vel y)*0.1
accel = 0, 0.01
ownpal = 1
scale = 0.25, 0.25
sprpriority = 3

[State 12001, Movecontact]
type = ChangeState
trigger1 = var(4) = 1
value = 12009
;---------------------------------------------------------------------------
;Energy Volley Ball 2
[StateDef 12002]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 12001
ctrl = 0
sprpriority = 2
poweradd = -40

[State 12001, VarSet]
type = VarAdd
trigger1 = var(3) = 1
v = 3
value = 1 
[State 12002, VarSet]
type = VarSet
trigger1 = parent, var(3) = [0,1]
v = 3
value = parent, var(3) 

[State 12002, VarSet]
type = VarSet
trigger1 = 1
v = 4
value = parent, var(4) 

[State 12002, BindToParent]
type = BindToParent
trigger1 = var(3)=0 && var(4)=0
time = 1
pos = 21,-72

[State 12002, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 12002, Ball]
type = Explod
trigger1 = !time
anim = 12000
id = 12000
postype = p1
pos = 0, 0
vel = 0, 0
bindtime = -1
removetime = -1
removeongethit = 1
accel = 0
ownpal = 1
scale = 0.1, 0.1
sprpriority = 3

[State 12002, Ball-1-Expand]
type =  ModifyExplod
trigger1 = time = [1,10]
id = 12000
scale = 0.1+(time)*0.04, 0.1+(time)*0.04

[State 12002, VelSet]
type = VelSet
trigger1 = var(3)=1 && (vel x = 0 && vel y = 0) && pos y < 0
x = 6
y = -6

[State 12002, VelAdd]
type = VelAdd
trigger1 = (var(3)!=0) && pos y < 0
y = 0.4

[State 12002, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 12002, No Shadow]
type = AssertSpecial
trigger1 = time >= 0
flag = noshadow
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 12002, HitDef]
type = HitDef
trigger1 = 1
attr = S, SP
animtype  = Hard
damage = ifelse(var(3)!=0,25,15), ifelse(var(3)!=0,5,3)
getpower = 0
givepower = 0
hitflag = MAFP
guardflag = MA
pausetime = 1,12
sparkno = -1
guard.sparkno = -1
sparkxy = -10,0
hitsound   = -1
guardsound = -1
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6      
air.velocity = -4.5,-2.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0

[State 12002, PosSet]
type = PosSet
trigger1 = pos y > 0
y = 0

[State 12002, RemoveBall]
type =  RemoveExplod
trigger1 = (movecontact) || (time && pos y = 0)
id = 12000

[State 12002, Movecontact]
type = ChangeState
trigger1 = (movecontact) || (time && pos y = 0)
value = 13000

[State 12002, Gethit]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AT, AP
slot = 0
stateno = 13000

[State 12002, VarSet]
type = VarSet
trigger1 = 1
v = 4
value = parent, var(4) 

[State 12002, VarSet]
type = VarRandom
trigger1 = !(Time % 2)
v = 6
range = -10,10

[State 12002, VarSet2]
type = VarRandom
trigger1 = !(Time % 2)
v = 7
range = -10,10

[State 12002, Sparkles-1]
type = Explod
trigger1 = Time % 2
anim = 11550
id = 11550
postype = p1
pos = var(6), var(7)
vel = (vel x)*0.1, (vel y)*0.1
accel = 0, 0.01
ownpal = 1
scale = 0.25, 0.25
sprpriority = 3

[State 12002, Movecontact]
type = ChangeState
trigger1 = var(4) = 1
value = 12009
;---------------------------------------------------------------------------
;Energy Volley Ball 3
[StateDef 12003]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 12001
ctrl = 0
sprpriority = 2
poweradd = -40

[State 12003, VarSet]
type = VarAdd
trigger1 = var(3) = 1
v = 3
value = 1 
[State 12003, VarSet]
type = VarSet
trigger1 = parent, var(3) = [0,1]
v = 3
value = parent, var(3) 

[State 12003, VarSet]
type = VarSet
trigger1 = 1
v = 4
value = parent, var(4) 

[State 12003, BindToParent]
type = BindToParent
trigger1 = var(3)=0 && var(4)=0
time = 1
pos = 30,-61

[State 12003, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 12003, Ball]
type = Explod
trigger1 = !time
anim = 12000
id = 12000
postype = p1
pos = 0, 0
vel = 0, 0
bindtime = -1
removetime = -1
removeongethit = 1
accel = 0
ownpal = 1
scale = 0.1, 0.1
sprpriority = 3

[State 12003, Ball-1-Expand]
type =  ModifyExplod
trigger1 = time = [1,10]
id = 12000
scale = 0.1+(time)*0.04, 0.1+(time)*0.04

[State 12003, VelSet]
type = VelSet
trigger1 = var(3)=1 && (vel x = 0 && vel y = 0) && pos y < 0
x = 8
y = -4

[State 12003, VelAdd]
type = VelAdd
trigger1 = (var(3)!=0) && pos y < 0
y = 0.4

[State 12003, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 12003, No Shadow]
type = AssertSpecial
trigger1 = time >= 0
flag = noshadow
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 12003, HitDef]
type = HitDef
trigger1 = 1
attr = S, SP
animtype  = Hard
damage = ifelse(var(3)!=0, 25,15), ifelse(var(3)!=0,5,3)
getpower = 0
givepower = 0
hitflag = MAFP
guardflag = MA
pausetime = 1,12
sparkno = -1
guard.sparkno = -1
sparkxy = -10,0
hitsound   = -1
guardsound = -1
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6      
air.velocity = -4.5,-2.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0

[State 12003, PosSet]
type = PosSet
trigger1 = pos y > 0
y = 0

[State 12003, RemoveBall]
type =  RemoveExplod
trigger1 = (movecontact) || (time && pos y = 0)
id = 12000

[State 12003, Movecontact]
type = ChangeState
trigger1 = (movecontact) || (time && pos y = 0)
value = 13000

[State 12003, Gethit]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AT, AP
slot = 0
stateno = 13000

[State 12003, VarSet]
type = VarSet
trigger1 = 1
v = 4
value = parent, var(4) 

[State 12003, VarSet]
type = VarRandom
trigger1 = !(Time % 2)
v = 6
range = -10,10

[State 12003, VarSet2]
type = VarRandom
trigger1 = !(Time % 2)
v = 7
range = -10,10

[State 12003, Sparkles-1]
type = Explod
trigger1 = Time % 2
anim = 11550
id = 11550
postype = p1
pos = var(6), var(7)
vel = (vel x)*0.1, (vel y)*0.1
accel = 0, 0.01
ownpal = 1
scale = 0.25, 0.25
sprpriority = 3

[State 12003, Movecontact]
type = ChangeState
trigger1 = var(4) = 1
value = 12009
;---------------------------------------------------------------------------
;Energy Volley Ball 4
[StateDef 12004]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 12001
ctrl = 0
sprpriority = 2
poweradd = -40

[State 12004, VarSet]
type = VarAdd
trigger1 = var(3) = 1
v = 3
value = 1 
[State 12004, VarSet]
type = VarSet
trigger1 = parent, var(3) = [0,1]
v = 3
value = parent, var(3) 

[State 12004, VarSet]
type = VarSet
trigger1 = 1
v = 4
value = parent, var(4) 

[State 12004, BindToParent]
type = BindToParent
trigger1 = var(3)= 0 && var(4)= 0
time = 1
pos = 32,-47

[State 12004, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 12004, Ball]
type = Explod
trigger1 = !time
anim = 12000
id = 12000
postype = p1
pos = 0, 0
vel = 0, 0
bindtime = -1
removetime = -1
removeongethit = 1
accel = 0
ownpal = 1
scale = 0.1, 0.1
sprpriority = 3

[State 12004, Ball-1-Expand]
type =  ModifyExplod
trigger1 = time = [1,10]
id = 12000
scale = 0.1+(time)*0.04, 0.1+(time)*0.04

[State 12004, VelSet]
type = VelSet
trigger1 = var(3)=1 && (vel x = 0 && vel y = 0) && pos y < 0
x = 10
y = -2

[State 12004, VelAdd]
type = VelAdd
trigger1 = (var(3)!=0) && pos y < 0
y = 0.4

[State 12004, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 12004, No Shadow]
type = AssertSpecial
trigger1 = time >= 0
flag = noshadow
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 12004, HitDef]
type = HitDef
trigger1 = 1
attr = S, SP
animtype  = Hard
damage = ifelse(var(3)!=0, 25,15), ifelse(var(3)!=0,5,3)
getpower = 0
givepower = 0
hitflag = MAFP
guardflag = MA
pausetime = 1,12
sparkno = -1
guard.sparkno = -1
sparkxy = -10,0
hitsound   = -1
guardsound = -1
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6      
air.velocity = -4.5,-2.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0

[State 12004, PosSet]
type = PosSet
trigger1 = pos y > 0
y = 0

[State 12004, RemoveBall]
type =  RemoveExplod
trigger1 = (movecontact) || (time && pos y = 0)
id = 12000

[State 12004, Movecontact]
type = ChangeState
trigger1 = (movecontact) || (time && pos y = 0)
value = 13000

[State 12004, Gethit]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AT, AP
slot = 0
stateno = 13000

[State 12004, VarSet]
type = VarSet
trigger1 = 1
v = 4
value = parent, var(4) 

[State 12004, VarSet]
type = VarRandom
trigger1 = !(Time % 2)
v = 6
range = -10,10

[State 12004, VarSet2]
type = VarRandom
trigger1 = !(Time % 2)
v = 7
range = -10,10

[State 12004, Sparkles-1]
type = Explod
trigger1 = Time % 2
anim = 11550
id = 11550
postype = p1
pos = var(6), var(7)
vel = (vel x)*0.1, (vel y)*0.1
accel = 0, 0.01
ownpal = 1
scale = 0.25, 0.25
sprpriority = 3

[State 12004, Movecontact]
type = ChangeState
trigger1 = var(4) = 1
value = 12009
;---------------------------------------------------------------------------
;Energy Volley Ball 5
[StateDef 12005]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 12001
ctrl = 0
sprpriority = 2
poweradd = -40

[State 12005, VarSet]
type = VarAdd
trigger1 = var(3) = 1
v = 3
value = 1 
[State 12005, VarSet]
type = VarSet
trigger1 = parent, var(3) = [0,1]
v = 3
value = parent, var(3) 

[State 12005, VarSet]
type = VarSet
trigger1 = 1
v = 4
value = parent, var(4) 

[State 12005, BindToParent]
type = BindToParent
trigger1 = var(3)= 0 && var(4)= 0
time = 1
pos = 30,-33

[State 12005, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 12005, Ball]
type = Explod
trigger1 = !time
anim = 12000
id = 12000
postype = p1
pos = 0, 0
vel = 0, 0
bindtime = -1
removetime = -1
removeongethit = 1
accel = 0
ownpal = 1
scale = 0.1, 0.1
sprpriority = 3

[State 12005, Ball-1-Expand]
type =  ModifyExplod
trigger1 = time = [1,10]
id = 12000
scale = 0.1+(time)*0.04, 0.1+(time)*0.04

[State 12005, VelSet]
type = VelSet
trigger1 = var(3)=1 && (vel x = 0 && vel y = 0) && pos y < 0
x = 8
y = -0.5

[State 12005, VelAdd]
type = VelAdd
trigger1 = (var(3)!=0) && pos y < 0
y = 0.4

[State 12005, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 12005, No Shadow]
type = AssertSpecial
trigger1 = time >= 0
flag = noshadow
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 12005, HitDef]
type = HitDef
trigger1 = 1
attr = S, SP
animtype  = Hard
damage = ifelse(var(3)!=0, 25,15), ifelse(var(3)!=0,5,3)
getpower = 0
givepower = 0
hitflag = MAFP
guardflag = MA
pausetime = 1,12
sparkno = -1
guard.sparkno = -1
sparkxy = -10,0
hitsound   = -1
guardsound = -1
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6      
air.velocity = -4.5,-2.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0

[State 12005, PosSet]
type = PosSet
trigger1 = pos y > 0
y = 0

[State 12005, RemoveBall]
type =  RemoveExplod
trigger1 = (movecontact) || (time && pos y = 0)
id = 12000

[State 12005, Movecontact]
type = ChangeState
trigger1 = (movecontact) || (time && pos y = 0)
value = 13000

[State 12005, Gethit]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AT, AP
slot = 0
stateno = 13000

[State 12005, VarSet]
type = VarSet
trigger1 = 1
v = 4
value = parent, var(4) 

[State 12005, VarSet]
type = VarRandom
trigger1 = !(Time % 2)
v = 6
range = -10,10

[State 12005, VarSet2]
type = VarRandom
trigger1 = !(Time % 2)
v = 7
range = -10,10

[State 12005, Sparkles-1]
type = Explod
trigger1 = Time % 2
anim = 11550
id = 11550
postype = p1
pos = var(6), var(7)
vel = (vel x)*0.1, (vel y)*0.1
accel = 0, 0.01
ownpal = 1
scale = 0.25, 0.25
sprpriority = 3

[State 12005, Movecontact]
type = ChangeState
trigger1 = var(4) = 1
value = 12009
;---------------------------------------------------------------------------
;Energy Volley Spawner Weak
[StateDef 12007]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 9999
ctrl = 0
sprpriority = 2
poweradd = 0

[State 12007, BindToParent]
type = BindToParent
trigger1 = !time
time = 35
pos = 0,0

[State 12007, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 12007, KiVolley.Helper]
type = Helper
trigger1 = time = 5
name = "KiVolleyBall-1"
stateno = 12001
postype = p1
pos = 0, 0
keyctrl = 0
ownpal = 1
id = 12001

[State 12007, KiVolley.Helper]
type = Helper
trigger1 = time = 10
name = "KiVolleyBall-2"
stateno = 12002
postype = p1
pos = 0, 0
keyctrl = 0
ownpal = 1
id = 12002

[State 12007, KiVolley.Helper]
type = Helper
trigger1 = time = 15
name = "KiVolleyBall-3"
stateno = 12003
postype = p1
pos = 0, 0
keyctrl = 0
ownpal = 1
id = 12003

[State 12007, VarSet]
type = VarSet
trigger1 = !time
v = 3
value = 0
[State 12007, VarSet]
type = VarSet
trigger1 = (parent, anim = 1001)
v = 3
value = 1

[State 12007, VarSet]
type = VarSet
trigger1 = (parent, stateno != [1000,1002]) && time < 51
v = 4
value = 1

[State 12007, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 12007, DestroySelf]
type = DestroySelf
trigger1 = time > 20 && numhelper = 0
trigger2 = time > 120
;---------------------------------------------------------------------------
;Energy Volley Spawner Strong
[StateDef 12008]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 9999
ctrl = 0
sprpriority = 2
poweradd = 0

[State 12008, BindToParent]
type = BindToParent
trigger1 = !time
time = 35
pos = 0,0

[State 12008, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 12008, KiVolley1.Helper]
type = Helper
trigger1 = time = 5
name = "KiVolleyBall-1"
stateno = 12001
postype = p1
pos = 0, 0
keyctrl = 0
ownpal = 1
id = 12001

[State 12008, KiVolley2.Helper]
type = Helper
trigger1 = time = 10
name = "KiVolleyBall-2"
stateno = 12002
postype = p1
pos = 0, 0
keyctrl = 0
ownpal = 1
id = 12002

[State 12008, KiVolley3.Helper]
type = Helper
trigger1 = time = 15
name = "KiVolleyBall-3"
stateno = 12003
postype = p1
pos = 0, 0
keyctrl = 0
ownpal = 1
id = 12003

[State 12008, KiVolley4.Helper]
type = Helper
trigger1 = time = 20
name = "KiVolleyBall-4"
stateno = 12004
postype = p1
pos = 0, 0
keyctrl = 0
ownpal = 1
id = 12004

[State 12008, KiVolley5.Helper]
type = Helper
trigger1 = time = 25
name = "KiVolleyBall-5"
stateno = 12005
postype = p1
pos = 0, 0
keyctrl = 0
ownpal = 1
id = 12005

[State 12008, VarSet]
type = VarSet
trigger1 = !time
v = 3
value = 0
[State 12008, VarSet]
type = VarSet
trigger1 = (parent, anim = 1001)
v = 3
value = 1

[State 12008, VarSet]
type = VarSet
trigger1 = (parent, stateno != [1000,1002]) && time < 51
v = 4
value = 1

[State 12008, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 12008, DestroySelf]
type = DestroySelf
trigger1 = time > 20 && numhelper = 0
trigger2 = time > 120
;---------------------------------------------------------------------------
;Energy Volley Ball Diffuse
[StateDef 12009]
type = A
physics = N
movetype = I
anim = 9999

[State 12009, Ball-1-Die]
type =  ModifyExplod
trigger1 = !time
id = 12000
anim = 12009
removetime = 11

[State 12009, Ball-2-Die]
type =  ModifyExplod
trigger1 = !time
id = 12001
anim = 12009
removetime = 11

[State 12009, Ball-3-Die]
type =  ModifyExplod
trigger1 = !time
id = 12002
anim = 12009
removetime = 11

[State 12009, Ball-4-Die]
type =  ModifyExplod
trigger1 = !time
id = 12003
anim = 12009
removetime = 11

[State 12009, Movecontact]
type = Destroyself
trigger1 = time = 1
;---------------------------------------------------------------------------
;Bouncy Ball
[StateDef 12050]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 12050
ctrl = 0
sprpriority = 3
poweradd = 0

[State 12050, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
persistent = 1
ignorehitpause = 1

[State 12050, BindToParent]
type = BindToParent
trigger1 = (parent,stateno=1900)
time = 1
pos = 15,-45

[State 12050, BindToParent]
type = BindToParent
trigger1 = (parent,stateno=1901) && (parent, animelem = 2, < 0)
time = 1
pos = 8,-79

[State 12050, SizeVarReset]
type = VarSet
trigger1 = !time
fv = 1
value = 0.25

[State 12050, SizeVar]
type = VarAdd
trigger1 = time && fvar(1) <= 0.50
fv = 1
value = 0.01

[State 12050, AngleSet]
type = AngleSet
trigger1 = !time
value = 0

[State 12050, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = fvar(1),fvar(1)

[State 12050, Bubble.Helper]
type = Helper
trigger1 = !time
name = "Bubble"
stateno = 10101
postype = p1
pos = 0,0
keyctrl = 0
ownpal = 1
id = 10101

[State 12050, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 12050, Trans]
type = Trans
trigger1 = 1
trans = add

[State 12050, Next]
type = ChangeState
trigger1 = (parent,stateno=1901) && (parent, anim = 1902)
value = 12051

[State 12050, DestroySelf]
type = DestroySelf
trigger1 = parent,stateno!=[1900,1901]
;---------------------------------------------------------------------------
;Bouncy Ball in Action
[StateDef 12051]
type = A
physics = N
movetype = A
anim = 12051
ctrl = 0
sprpriority = 3
poweradd = 0

[State 12051, HitVar]
type = VarSet
trigger1 = !time && prevstateno = 12050
v = 15
value = 0

[State 12051, VelSet]
type = VelSet
trigger1 = !time && prevstateno = 12050
x = 6
y = -6

[State 12051, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
persistent = 1
ignorehitpause = 1

[State 12051, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = fvar(1),fvar(1)

[State 12051, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 12051, Trans]
type = Trans
trigger1 = 1
trans = add

[State 12051, Gethit]
type = HitOverride
trigger1 = 1
attr = SCA, HP, SP, NP, HA, SA, NA, AA
slot = 0
stateno = 12058

[State 12051, NotHit]
type = NotHitBy
trigger1 = 1
value = ,NT,ST,HT
time = 1

[State 12051, LifeVarSet]
type = VarSet
trigger1 = !time && prevstateno = 12050
v = 10
value = 1000

[State 12051, LifeLoss]
type = VarAdd
trigger1 = time
v = 10
value = -1

[State 12051, Hitdef]
type = HitDef
triggerall = var(15) <= 0
trigger1 = !time
attr = S, HP
animtype  = Heavy
Damage = 30,5
priority = 2, miss
hitflag = MAFP
guardflag = MA
guard.dist = 15
pausetime = 0,10
guard.pausetime = 0,10
sparkno = S12205+floor(var(22))
sparkxy = 0,0
hitsound   =  S1340,0
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -(vel x), 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.velocity = -(vel x),(vel y)
kill = 1
guard.kill = 1

[State 12051, NumHits]
type = VarAdd
trigger1 = movecontact && var(15) = 0
v = 16
value = 1

[State 12051, NoHitting]
type = VarSet
trigger1 = movecontact
v = 15
value = 13

[State 12051, NoHittingTimer]
type = VarAdd
trigger1 = var(15) > 0
v = 15
value = -1

[State 12051, VarSetX1]
type = VarRandom
trigger1 = !(Time % 2)
v = 6
range = -12,-6

[State 12051, VarSetX2]
type = VarSet
trigger1 = !(Time % 2)
v = 6
value = floor(var(6)*ifelse(random>500,-1,1))

[State 12051, VarSetY1]
type = VarRandom
trigger1 = !(Time % 2)
v = 7
range = -12,-6

[State 12051, VarSetY2]
type = VarSet
trigger1 = !(Time % 2)
v = 7
value = floor(var(7)*ifelse(random>500,-1,1))

[State 12051, Sparkles]
type = Explod
trigger1 = Time % 2
anim = 11550
id = 11550
postype = p1
pos = var(6), var(7)
vel = (vel x)*0.1, (vel y)*0.1
accel = 0, 0.0
ownpal = 1
scale = 0.25, 0.25
sprpriority = 3

[State 12051, VarSetA]
type = VarRandom
trigger1 = !(Time % 2)
v = 8
range = -5,5

[State 12051, VarSetB]
type = VarRandom
trigger1 = !(Time % 2)
v = 9
range = -5,5

[State 12051, Sparkles2]
type = Explod
trigger1 = !(Time % 2)
anim = 11559
id = 11550
postype = p1
pos = var(8), var(9)
vel = (vel x)*0.1, (vel y)*0.1
accel = 0, 0.0
ownpal = 1
scale = 0.25, 0.25
sprpriority = 3

[State 12051, Wall_Bounce]
type = ChangeState
trigger1 = (frontedgebodydist < -10) && (vel x > 0)
trigger2 = (backedgebodydist < -10) && (vel x < 0)
trigger3 = (movecontact)
value = 12055

[State 12051, Floor.Cieling_Bounce]
type = ChangeState
trigger1 = (screenpos y >= 240 || pos y >= 0) && (vel y > 0)
trigger2 = (screenpos y <= 0) && (vel y < 0)
value = 12056

[State 12051, DeathState]
type = ChangeState
trigger1 = var(10) <= 0
trigger2 = var(16) = 5
value = 12059
;---------------------------------------------------------------------------
;Bouncy Ball Bounce Off Wall
[StateDef 12055]
type = A
physics = N
movetype = A
velset = (vel x)*-1, (vel y)
anim = 12051
ctrl = 0
sprpriority = 3
poweradd = 0

[State 12055, Sound]
type = PlaySnd
trigger1 = !time
value = 1350,0

[State 12055, Bubble.Helper]
type = Helper
trigger1 = !time
name = "Bubble"
stateno = 10102
postype = p1
pos = 0,0
keyctrl = 0
ownpal = 1
id = 10102

[State 12055, Gethit]
type = HitOverride
trigger1 = 1
attr = SCA, HP, SP, NP, HA, SA, NA 
slot = 0
stateno = 12058

[State 12055, NotHit]
type = NotHitBy
trigger1 = 1
value = ,NT,ST,HT
time = 1

[State 12055, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
persistent = 1
ignorehitpause = 1

[State 12055, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 12055, Trans]
type = Trans
trigger1 = 1
trans = add

[State 12055, Wall_Bounce]
type = ChangeState
trigger1 = time = 1
value = 12051
;---------------------------------------------------------------------------
;Bouncy Ball Bounce Off Floor or Cieling
[StateDef 12056]
type = A
physics = N
movetype = A
velset = (vel x), (vel y)*-1
anim = 12051
ctrl = 0
sprpriority = 3
poweradd = 0

[State 12056, Sound]
type = PlaySnd
trigger1 = !time
value = 1350,0

[State 12056, Bubble.Helper]
type = Helper
trigger1 = !time
name = "Bubble"
stateno = 10102
postype = p1
pos = 0,0
keyctrl = 0
ownpal = 1
id = 10102

[State 12056, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
persistent = 1
ignorehitpause = 1

[State 12056, Gethit]
type = HitOverride
trigger1 = 1
attr = SCA, HP, SP, NP, HA, SA, NA 
slot = 0
stateno = 12058

[State 12056, NotHit]
type = NotHitBy
trigger1 = 1
value = ,NT,ST,HT
time = 1

[State 12056, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 12056, Trans]
type = Trans
trigger1 = 1
trans = add

[State 12056, Wall_Bounce]
type = ChangeState
trigger1 = time = 1
value = 12051
;---------------------------------------------------------------------------
;Bouncy Ball Get Hit
[StateDef 12058]
type = A
physics = N
movetype = H
velset = (vel x)*-1, (vel y)*-1
anim = 12050
ctrl = 0
sprpriority = 3
poweradd = 0

[State 12058, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 0.5,0.5

[State 12058, Sound]
type = PlaySnd
trigger1 = !time
value = 1350,0

[State 12058, Bubble.Helper]
type = Helper
trigger1 = !time
name = "Bubble"
stateno = 10102
postype = p1
pos = 0,0
keyctrl = 0
ownpal = 1
id = 10102

[State 12058, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
persistent = 1
ignorehitpause = 1

[State 12058, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 12058, Trans]
type = Trans
trigger1 = 1
trans = add

[State 12058, LifeVarSet]
type = VarAdd
trigger1 = !time
v = 10
value = -100

[State 12058, Wall_Bounce]
type = ChangeState
trigger1 = time = 10
value = 12051
;---------------------------------------------------------------------------
;Bouncy Ball Death State
[StateDef 12059]
type = A
physics = N
movetype = A
velset = (vel x), (vel y)
anim = 12050
ctrl = 0
sprpriority = 3
poweradd = 0

[State 12059, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 0.5,0.5

[State 12059, PlaySND]
type = PlaySnd
trigger1 = !time
value = 1901, 1

[State 12059, Boom]
type = PlaySnd
trigger1 = time = 6
trigger2 = time = 14
value = 1100, 0

[State 12059, BigBoom]
type = PlaySnd
trigger1 = time = 22
value = 1100, 1

[State 12059, PalFX]
type = PalFX
trigger1 = time > 10
add = -(time-10)*16,-(time-10)*16,-(time-10)*16
time = 1

[State 12059, VelMul]
type = Velmul
trigger1 = time
x = 0.95
y = 0.95

[State 12059, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
persistent = 1
ignorehitpause = 1

[State 12059, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 12059, Trans]
type = Trans
trigger1 = 1
trans = add

[State 12059, VarSet1]
type = VarRandom
trigger1 = !(Time % 4)
v = 3
range = 0,3

[State 12059, VarSet2]
type = VarRandom
trigger1 = !(Time % 4)
v = 4
range = -12,12

[State 12059, VarSet3]
type = VarRandom
trigger1 = !(Time % 4)
v = 5
range = -12,12

[State 12059, Explosions]
type = Explod
trigger1 = !(Time % 4)
anim = 13000+var(3)
id = 13000
postype = p1
pos = var(4), var(5)
vel = (vel x)*0.5, (vel y)*0.5
accel = 0, 0.0
ownpal = 1
scale = 0.75, 0.75
sprpriority = 3

[State 12051, VarSetX1]
type = VarRandom
trigger1 = !(Time % 2)
v = 6
range = -12,-6

[State 12051, VarSetX2]
type = VarSet
trigger1 = !(Time % 2)
v = 6
value = floor(var(6)*ifelse(random>500,-1,1))

[State 12051, VarSetY1]
type = VarRandom
trigger1 = !(Time % 2)
v = 7
range = -12,-6

[State 12051, VarSetY2]
type = VarSet
trigger1 = !(Time % 2)
v = 7
value = floor(var(7)*ifelse(random>500,-1,1))

[State 12051, Sparkles]
type = Explod
trigger1 = Time % 2
anim = 11550
id = 11550
postype = p1
pos = var(6), var(7)
vel = (vel x)*0.1, (vel y)*0.1
accel = 0, 0.0
ownpal = 1
scale = 0.25, 0.25
sprpriority = 3

[State 12051, VarSetA]
type = VarRandom
trigger1 = !(Time % 2)
v = 8
range = -5,5

[State 12051, VarSetB]
type = VarRandom
trigger1 = !(Time % 2)
v = 9
range = -5,5

[State 12051, Sparkles2]
type = Explod
trigger1 = !(Time % 2)
anim = 11559
id = 11550
postype = p1
pos = var(8), var(9)
vel = (vel x)*0.1, (vel y)*0.1
accel = 0, 0.0
ownpal = 1
scale = 0.25, 0.25
sprpriority = 3

[State 12059, DestroySelf]
type = DestroySelf
trigger1 = time = 25
;---------------------------------------------------------------------------
;Launcher Effect: Used in States [250]
[StateDef 12600]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 12600
ctrl = 0
sprpriority = 3
poweradd = 0

[State 12600, BindToParent]
type = null;BindToParent
trigger1 = 1
time = 1
pos = 28,-8

[State 12600, Trans]
type = Trans
trigger1 = 1
trans = add

[State 12600, AngleSet]
type = AngleSet
trigger1 = time = 0
value = 90

[State 12600, AngleDraw]
type = AngleDraw
trigger1 = 1

[State 12600, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0 || parent, stateno != 250
;---------------------------------------------------------------------------
;Strong Jump Punch Effect: Used in States [620]
[StateDef 12601]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 12600
ctrl = 0
sprpriority = 3
poweradd = 0

[State 12600, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 21,-34

[State 12600, Trans]
type = Trans
trigger1 = 1
trans = add

[State 12600, AngleSet]
type = AngleSet
trigger1 = time = 0
value = -45

[State 12600, AngleDraw]
type = AngleDraw
trigger1 = 1

[State 12600, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0 || parent, stateno != 620
;---------------------------------------------------------------------------
;Jump Strong Kick Effect: Used in States [640]
[StateDef 12631]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 12630
ctrl = 0
sprpriority = 3
poweradd = 0

[State 12631, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 28,-8

[State 12631, Trans]
type = Trans
trigger1 = 1
trans = add

[State 12631, AngleSet]
type = AngleSet
trigger1 = time = 0
value = -95

[State 12631, AngleDraw]
type = AngleDraw
trigger1 = 1

[State 12631, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0 || parent, stateno != 640
;---------------------------------------------------------------------------
;Jump Strong Kick Effect: Used in States [450]
[StateDef 12632]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 12630
ctrl = 0
sprpriority = 3
poweradd = 0

[State 12632, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 50,-44

[State 12631, Trans]
type = Trans
trigger1 = 1
trans = add

[State 12631, AngleSet]
type = AngleSet
trigger1 = time = 0
value = -20

[State 12631, AngleDraw]
type = AngleDraw
trigger1 = 1

[State 12631, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0 || parent, stateno != 450
;---------------------------------------------------------------------------
;Angled and Flipped Slap thinger majig: Used in States [1556]
[StateDef 12641]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 12641
ctrl = 0
sprpriority = 3
poweradd = 0

[State 12641, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 12641, Trans]
type = Trans
trigger1 = 1
trans = add

[State 12641, AngleSet]
type = AngleSet
trigger1 = time = 0
value = -90

[State 12641, AngleDraw]
type = AngleDraw
trigger1 = 1

[State 12641, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
;---------------------------------------------------------------------------
;Fireball FWD : Used in States [1000-1009]
[StateDef 12150]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 12150
ctrl = 0
sprpriority = 4
poweradd = -60

[State 12150, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 30
length = 30
palinvertall = 0
palbright = 0,0,0
palcontrast = 128,128,128
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add

[State 12150, VarSet]
type = Varrandom
trigger1 = !time
v = 5
range = -20,20

[State 12150, VelSet]
type = VelSet
trigger1 = time = 0
x = 13
y = var(5)*0.1

[State 12150, VelAdd]
type = VelAdd
trigger1 = time = 0
y = -(var(5)*0.01)

[State 12150, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 12150, No Shadow]
type = AssertSpecial
trigger1 = time >= 0
flag = noshadow
supermovetime = 9999
pausemovetime = 9999

[State 12150, VarSet]
type = VarRandom
trigger1 = !(Time % 2)
v = 6
range = -20,20

[State 12150, Sparkle-1]
type = Explod
trigger1 = Time % 2
anim = 11550
id = 11550
postype = p1
pos = floor(var(6)*0.25), floor(var(6)*0.25)
vel = abs(var(6)*0.005), abs(var(6)*0.015)
accel = 0, 0.01
ownpal = 1
scale = 0.25, 0.25
sprpriority = 3

[State 12150, HitDef]
type = HitDef
trigger1 = time = 0 
attr = S, SP
animtype  = Hard
Damage = 7,2
getpower = 0
givepower = 0
hitflag = MAFP
guardflag = MA
pausetime = 1,6
sparkno = -1
guard.sparkno = -1
sparkxy = -10,0
hitsound   = -1
guardsound = -1
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6      
air.velocity = -4.5,-2.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0

[State 12150, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 12150, Movecontact]
type = ChangeState
trigger1 = (movecontact)
value = 13000

[State 12150, Gethit]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AT, AP
slot = 0
stateno = 13000

[State 12150, DestroySelf]
type = DestroySelf
trigger1 = time = 30
;---------------------------------------------------------------------------
;Fireball UP: Used in States [1010-1019]
[StateDef 12160]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 12150
ctrl = 0
sprpriority = 4
poweradd = -60

[State 12150, Trans]
type = Trans
trigger1 = 1
trans = add

[State 12160, AngleSet]
type = AngleSet
trigger1 = time = 0
value = 30

[State 12160, AngleDraw]
type = AngleDraw
trigger1 = 1

[State 12160, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 30
length = 30
palinvertall = 0
palbright = 0,0,0
palcontrast = 128,128,128
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add

[State 12160, VarSet]
type = Varrandom
trigger1 = time = 0
v = 5
range = -20,20

[State 12160, VelSet]
type = VelSet
trigger1 = time = 0
x = 13+(var(5)*0.1)
y = -6-(var(5)*0.1)

[State 12160, VelAdd]
type = VelAdd
trigger1 = time = 0
y = -(var(5)*0.01)

[State 12160, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 12160, No Shadow]
type = AssertSpecial
trigger1 = time >= 0
flag = noshadow
supermovetime = 9999
pausemovetime = 9999


[State 12160, VarSet]
type = VarRandom
trigger1 = !(Time % 2)
v = 6
range = -20,20

[State 12160, Sparkle-1]
type = Explod
trigger1 = Time % 2
anim = 11550
id = 11550
postype = p1
pos = floor(var(6)*0.25), floor(var(6)*0.25)
vel = abs(var(6)*0.005), abs(var(6)*0.015)
accel = 0, 0.01
ownpal = 1
scale = 0.25, 0.25
sprpriority = 3

[State 12160, HitDef]
type = HitDef
trigger1 = time = 0 
attr = S, SP
animtype  = Hard
Damage = 7,2
getpower = 0
givepower = 0
hitflag = MAFP
guardflag = MA
pausetime = 1,6
sparkno = -1
guard.sparkno = -1
sparkxy = -10,0
hitsound   = -1
guardsound = -1
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6      
air.velocity = -4.5,-2.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0

[State 12160, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 12160, Movecontact]
type = ChangeState
trigger1 = (movecontact)
value = 13000

[State 12160, Gethit]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AT, AP
slot = 0
stateno = 13000

[State 12160, DestroySelf]
type = DestroySelf
trigger1 = time = 30
;---------------------------------------------------------------------------
;Fireball Down1: Used in States [1020-1029]
[StateDef 12170]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 12150
ctrl = 0
sprpriority = 4
poweradd = -60

[State 12150, Trans]
type = Trans
trigger1 = 1
trans = add

[State 12160, AngleSet]
type = AngleSet
trigger1 = time = 0
value = -40

[State 12160, AngleDraw]
type = AngleDraw
trigger1 = 1

[State 12160, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 30
length = 30
palinvertall = 0
palbright = 0,0,0
palcontrast = 128,128,128
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add

[State 12170, VelSet]
type = VelSet
trigger1 = time = 0
x = 11
y = 11

[State 12170, No Shadow]
type = AssertSpecial
trigger1 = time >= 0
flag = noshadow
supermovetime = 9999
pausemovetime = 9999

[State 12170, VarSet]
type = VarRandom
trigger1 = !(Time % 2)
v = 6
range = -20,20

[State 12170, Sparkle-1]
type = Explod
trigger1 = Time % 2
anim = 11550
id = 11550
postype = p1
pos = floor(var(6)*0.25), floor(var(6)*0.25)
vel = abs(var(6)*0.015), abs(var(6)*0.015)
accel = 0, 0.01
ownpal = 1
scale = 0.25, 0.25
sprpriority = 3

[State 12170, HitDef]
type = HitDef
trigger1 = time = 0 
attr = S, SP
animtype  = Hard
Damage = 8,2
getpower = 0
givepower = 0
hitflag = MAFP
guardflag = MA
pausetime = 1,6
sparkno = -1
guard.sparkno = -1
sparkxy = -10,0
hitsound   = -1
guardsound = -1
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6      
air.velocity = -4.5,-2.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0

[State 12170, PosSet]
type = PosSet
trigger1 = pos y > 0
y = 0

[State 12170, VelSet]
type = VelSet
trigger1 = pos y > 0
x = 0
y = 0

[State 12170, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 12170, Movecontact]
type = ChangeState
trigger1 = (movecontact) || pos y = 0
value = 13000

[State 12170, Gethit]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AT, AP
slot = 0
stateno = 13000

[State 12170, DestroySelf]
type = DestroySelf
trigger1 = time = 30 || pos y > 0
;---------------------------------------------------------------------------
;Fireball Down2: Used in States [1020-1029]
[StateDef 12171]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 12150
ctrl = 0
sprpriority = 4
poweradd = -60

[State 12171, Trans]
type = Trans
trigger1 = 1
trans = add

[State 12171, AngleSet]
type = AngleSet
trigger1 = time = 0
value = -33

[State 12171, AngleDraw]
type = AngleDraw
trigger1 = 1

[State 12171, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 30
length = 30
palinvertall = 0
palbright = 0,0,0
palcontrast = 128,128,128
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add

[State 12171, VelSet]
type = VelSet
trigger1 = time = 0
x = 12
y = 10

[State 12171, No Shadow]
type = AssertSpecial
trigger1 = time >= 0
flag = noshadow
supermovetime = 9999
pausemovetime = 9999

[State 12171, VarSet]
type = VarRandom
trigger1 = !(Time % 2)
v = 6
range = -20,20

[State 12171, Sparkle-1]
type = Explod
trigger1 = Time % 2
anim = 11550
id = 11550
postype = p1
pos = floor(var(6)*0.25), floor(var(6)*0.25)
vel = abs(var(6)*0.015), abs(var(6)*0.015)
accel = 0, 0.01
ownpal = 1
scale = 0.25, 0.25
sprpriority = 3

[State 12171, HitDef]
type = HitDef
trigger1 = time = 0 
attr = S, SP
animtype  = Hard
Damage = 8,2
getpower = 0
givepower = 0
hitflag = MAFP
guardflag = MA
pausetime = 1,6
sparkno = -1
guard.sparkno = -1
sparkxy = -10,0
hitsound   = -1
guardsound = -1
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6      
air.velocity = -4.5,-2.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0

[State 12171, PosSet]
type = PosSet
trigger1 = pos y > 0
y = 0

[State 12171, VelSet]
type = VelSet
trigger1 = pos y > 0
x = 0
y = 0

[State 12170, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 12170, Movecontact]
type = ChangeState
trigger1 = (movecontact) || pos y = 0
value = 13000

[State 12170, Gethit]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AT, AP
slot = 0
stateno = 13000

[State 12171, DestroySelf]
type = DestroySelf
trigger1 = time = 30 || pos y > 0
;---------------------------------------------------------------------------
;Fireball Down3: Used in States [1020-1029]
[StateDef 12172]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 12150
ctrl = 0
sprpriority = 4
poweradd = -60

[State 12172, Trans]
type = Trans
trigger1 = 1
trans = add

[State 12172, AngleSet]
type = AngleSet
trigger1 = time = 0
value = -26

[State 12172, AngleDraw]
type = AngleDraw
trigger1 = 1

[State 12172, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 30
length = 30
palinvertall = 0
palbright = 0,0,0
palcontrast = 128,128,128
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add

[State 12172, VelSet]
type = VelSet
trigger1 = time = 0
x = 13
y = 9

[State 12172, No Shadow]
type = AssertSpecial
trigger1 = time >= 0
flag = noshadow
supermovetime = 9999
pausemovetime = 9999

[State 12172, VarSet]
type = VarRandom
trigger1 = !(Time % 2)
v = 6
range = -20,20

[State 12172, Sparkle-1]
type = Explod
trigger1 = Time % 2
anim = 11550
id = 11550
postype = p1
pos = floor(var(6)*0.25), floor(var(6)*0.25)
vel = abs(var(6)*0.015), abs(var(6)*0.015)
accel = 0, 0.01
ownpal = 1
scale = 0.25, 0.25
sprpriority = 3

[State 12172, HitDef]
type = HitDef
trigger1 = time = 0 
attr = S, SP
animtype  = Hard
Damage = 8,2
getpower = 0
givepower = 0
hitflag = MAFP
guardflag = MA
pausetime = 1,6
sparkno = -1
guard.sparkno = -1
sparkxy = -10,0
hitsound   = -1
guardsound = -1
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6      
air.velocity = -4.5,-2.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0

[State 12172, PosSet]
type = PosSet
trigger1 = pos y > 0
y = 0

[State 12172, VelSet]
type = VelSet
trigger1 = pos y > 0
x = 0
y = 0

[State 12172, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 12172, Movecontact]
type = ChangeState
trigger1 = (movecontact) || pos y = 0
value = 13000

[State 12172, Gethit]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AT, AP
slot = 0
stateno = 13000

[State 12172, DestroySelf]
type = DestroySelf
trigger1 = time = 30 || pos y > 0
;----------------------------------------------------------------------------------
;Energy Spurt Short Upwise[Fire ball angle states]
[StateDef 12175]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 12175
ctrl = 0
sprpriority = 4

[State 12175, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 12175, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 12175, AngleSet]
type = AngleSet
trigger1 = time = 0
value = 20

[State 12175, AngleDraw]
type = AngleDraw
trigger1 = 1

[State 12175, End]
type = DestroySelf
trigger1 = animtime = 0
;----------------------------------------------------------------------------------
;Energy Spurt Upwise[Fire ball angle states]
[StateDef 12176]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 12176
ctrl = 0
sprpriority = 3

[State 12176, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 12176, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 12176, AngleSet]
type = AngleSet
trigger1 = time = 0
value = 24

[State 12176, AngleDraw]
type = AngleDraw
trigger1 = 1

[State 12176, End]
type = DestroySelf
trigger1 = animtime = 0
;----------------------------------------------------------------------------------
;Energy Spurt Short Downwise[Fire ball angle states]
[StateDef 12177]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 12175
ctrl = 0
sprpriority = 3

[State 12177, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 12177, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 12177, AngleSet]
type = AngleSet
trigger1 = time = 0
value = -35

[State 12177, AngleDraw]
type = AngleDraw
trigger1 = 1

[State 12177, End]
type = DestroySelf
trigger1 = animtime = 0
;----------------------------------------------------------------------------------
;Energy Spurt Downwise[Fire ball angle states]
[StateDef 12178]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 12176
ctrl = 0
sprpriority = 3

[State 12178, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 12178, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 12178, AngleSet]
type = AngleSet
trigger1 = time = 0
value = -35

[State 12178, AngleDraw]
type = AngleDraw
trigger1 = 1

[State 12178, End]
type = DestroySelf
trigger1 = animtime = 0
;---------------------------------------------------------------------------
;Ki Mines
[StateDef 12300]
type = A
physics = N
movetype = A
velset = ifelse(numhelper(12301)>0,ifelse(numhelper(12302)>0,2,7),12), -2
anim = 12300
ctrl = 0
sprpriority = 3
poweradd = 0

[State 12177, VarSetID]
type = VarSet
trigger1 = !time
v = 11
value = ifelse(numhelper(12301)>0,ifelse(numhelper(12302)>0,3,2),1)

[State 12300, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 12300, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 12300, PosSet]
type = PosSet
trigger1 = pos y > 0
y = 0

[State 12300, VelSet]
type = VelSet
trigger1 = pos y >= 0
x = 0
y = 0

[State 12300, VelAdd]
type = VelAdd
trigger1 = pos y < 0
y = 0.44

[State 12300, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 12300, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 12300, AngleSet]
type = AngleAdd
trigger1 = time
value = -19

[State 12300, AngleDraw]
type = AngleDraw
trigger1 = 1

[State 12300, AfterImage]
type = AfterImage
trigger1 = !time
time = 30
length = 10
palinvertall = 0
palbright = 0,0,0
palcontrast = 128,128,128
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add

[State 12051, Wall_Bounce]
type = VelSet
trigger1 = (frontedgebodydist < -10) && (vel x > 0)
x = -(vel x)*0.5
y = (vel y)+(-2)

[State 12300, Next]
type = ChangeState
trigger1 = pos y = 0
value = 12301

;---------------------------------------------------------------------------
;Ki Mines
[StateDef 12301]
type = S
physics = N
movetype = A
velset = 0, 0
anim = 12301
ctrl = 0
sprpriority = 3
poweradd = 0

[State 12301, Gethit]
type = HitOverride
trigger1 = 1
attr = SCA, HP, SP, NP, HA, SA, NA, AA
slot = 0
stateno = 12309

[State 12301, NotHit]
type = NotHitBy
trigger1 = 1
value = ,NT,ST,HT
time = 1

[State 12301, AfterImageTime]
type = AfterImageTime
trigger1 = !time
time = 1

[State 12301, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 12301, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 12301, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 12301, FVarSet]
type = VarSet
trigger1 = animelem = 2, =0
fv = 10
value = 1.1

[State 12301, FVarSet]
type = VarSet
trigger1 = animelem = 3, =0
fv = 10
value = 1

[State 12301, AngleSet]
type = AngleSet
trigger1 = !time
value = 0

[State 12301, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = fvar(10),fvar(10)

[State 12301, Hitdef]
type = HitDef
trigger1 = !time
attr = S, HP
animtype  = Heavy
Damage = 80,15
guardflag = MA
guard.dist = 10
pausetime = 0,14
guard.pausetime = 0,14
sparkno = -1
sparkxy = 0,0
hitsound   =  -1
guardsound = 6,0
ground.type = High
ground.slidetime = 6
ground.hittime  = 6
ground.velocity = -1.3, -13
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.velocity = -1.3, -13
fall = 1
fall.recover = 0
kill = 1
guard.kill = 1

[State 12301, Next]
type = ChangeState
trigger1 = time > 360 + var(11)*30
trigger2 = movecontact
value = 12309
;---------------------------------------------------------------------------
;Ki Mines Explode
[StateDef 12309]
type = S
physics = N
movetype = A
velset = 0, 0
anim = 12302
ctrl = 0
sprpriority = 3
poweradd = 0

[State 12309, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 12309, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 12309, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 12309, SoundMedBoom]
type = PlaySnd
trigger1 = !time
value = 1100,1

[State 12309, SoundSmallBooms]
type = PlaySnd
trigger1 = time = 8
trigger2 = time = 18
trigger3 = time = 28
value = 1100,0

[State 12309, Disperse Effect]
type = Helper
trigger1 = !time
name = "DisperseEffect"
stateno = 14505
postype = p1
pos = 0, 0
keyctrl = 0
ownpal = 1
id = 14500
bindtime = 0

[State 12309, SmallExplosions]
type = Helper
trigger1 = time = 0
trigger2 = time = 4
trigger3 = time = 8
trigger4 = time = 12
trigger5 = time = 16
name = "SmallExplode"
stateno = 13011
postype = p1
pos = 0, 0
keyctrl = 0
ownpal = 1
id = 13010
bindtime = 0
size.xscale = 0.5
size.yscale = 0.5

[State 12309, PalFX]
type = PalFX
trigger1 = time > 4
add = -(time-4)*10,-(time-4)*10,-(time-4)*10
time = 1

[State 12309, Bubble]
type = Helper
trigger1 = !time
name = "Bubble"
stateno = 10102
postype = p1
pos = 0, 0
keyctrl = 0
ownpal = 1
id = 10102
bindtime = 0
size.xscale = 1
size.yscale = 1

[State 12400, Puff]
type = Explod
trigger1 = !time
anim = 15175
id = 15175
postype = p1
pos = 0, 11
ownpal = 1
scale = 0.4, 0.4
sprpriority = 3
ignorehitpause = 1

[State 12309, DestroySelf]
type = DestroySelf
trigger1 = time > 29
;---------------------------------------------------------------------------
;Eye Beam : Used in State 1801
[StateDef 12400]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 12400
ctrl = 0
sprpriority = 4

[State 12400, AllPalFX]
type = AllPalFX
trigger1 = time < 13
add = 28-(time*2),28-(time*2),28-(time*2)
color = 180+(time*4)
time = 1

[State 12400, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 12400, No Shadow]
type = AssertSpecial
trigger1 = time >= 0
flag = noshadow
supermovetime = 9999
pausemovetime = 9999

[State 12400, VarX]
type = VarRandom
trigger1 = 1
v = 20
range = 0,320
ignorehitpause = 1

[State 12400, VarY]
type = VarRandom
trigger1 = 1
v = 21
range = -11,11
ignorehitpause = 1

[State 12400, VarAnim]
type = VarRandom
trigger1 = 1
v = 22
range = 0,3
ignorehitpause = 1

[State 12400, ElectricSpark1]
type = Explod
triggerall = (time = [5,24])
trigger1 = (time%2)
anim = 10030+floor(var(22))
id = 10030
postype = p1
pos = floor(var(20)), floor(var(21))
vel = 0, 0
accel = 0, 0
ownpal = 1
scale = 0.125, 0.125
sprpriority = 3
ignorehitpause = 1

[State 12400, ElectricSpark2]
type = Explod
triggerall = (time = [5,24])
trigger1 = !(time%2)
anim = 10035+floor(var(22))
id = 10035
postype = p1
pos = floor(var(20)), floor(var(21))
vel = 0, 0
accel = 0, 0
ownpal = 1
scale = 0.125, 0.125
sprpriority = 3
ignorehitpause = 1

[State 12400, Hitdef]
type = HitDef
trigger1 = timemod = 6,0
attr = S, HP
animtype  = Heavy
Damage = 32,6
guardflag = MAFD
guardflag = MA
pausetime = 0,80
guard.pausetime = 0,10
sparkno = S12205+floor(var(22))
sparkxy = 0,0
hitsound   =  -1
guardsound = 6,0
ground.type = High
ground.slidetime = 16
ground.hittime  = 16
ground.velocity = 0, 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.velocity = 0, 0
fall = 0
fall.recover = 1
kill = 1
guard.kill = 1

[State 12400, VarSet]
type = VarSet
trigger1 = movecontact && numtarget >0
v = 17
value = target, ID
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 12400, VarSet]
type = VarSet
trigger1 = !time
v = 7
value = 0

[State 12400, VarSet]
type = VarAdd
trigger1 = movecontact
v = 7
value = 1
ignorehitpause = 1

[State 12400, VarSet]
type = VarRandom
trigger1 = 1
v = 8
range = 0,359
ignorehitpause = 1

[State 12400, FVarSet]
type = VarSet
trigger1 = 1
fv = 9
value = var(8)*(3.142/180)
ignorehitpause = 1

[State 12400, VarSet]
type = VarRandom
trigger1 = 1
v = 10
range = 0,359
ignorehitpause = 1

[State 12400, FVarSet]
type = VarSet
trigger1 = 1
fv = 11
value = var(10)*(3.142/180)
ignorehitpause = 1

[State 12400, PlaySND]
type = PlaySnd
trigger1 = movehit && numhelper(12405)=0 
value = 1340,0
volume = 255

[State 12400, Sparkle]
type = Explod
triggerall = movecontact && PlayerIDExist(var(17)) && numtarget >0
trigger1 = var(7) < 28
anim = 11550
id = 11550
postype = p1
pos = floor(abs((playerID(var(17)), pos x)-(pos x))*1.075), 0
vel = cos(fvar(9))*2, -sin(fvar(9))*2
accel = 0, 0.05
ownpal = 1
scale = 0.25, 0.25
sprpriority = 3
ignorehitpause = 1

[State 12400, Sparkle]
type = Explod
triggerall = movecontact && PlayerIDExist(var(17)) && numtarget >0
trigger1 = var(7) < 28
anim = 11559
id = 11551
postype = p1
pos = floor(abs((playerID(var(17)), pos x)-(pos x))*1.075), 0
vel = cos(fvar(11))*1.5, -sin(fvar(11))*1.5
accel = 0, 0.05
ownpal = 1
scale = 0.25, 0.25
sprpriority = 3
ignorehitpause = 1

[State 12400, StunSpark.Helper]
type = Helper
trigger1 = movehit && numhelper(12405)=0 && PlayerIDExist(var(17)) && numtarget >0
name = "StunSparks"
stateno = 12405
id = 12405
pos = floor(abs((playerID(var(17)), pos x)-(pos x))),floor(((playerID(var(17)), pos y))-(pos y))
postype = p1
ownpal = 1
sprpriority = 0
supermovetime  = 9999
pausemovetime  = 9999
persistent = 0
ignorehitpause = 1

[State 12400, ScreenBound]
type = ScreenBound
trigger1 = p2movetype = H || (BackEdgeBodydist < -1 && BackEdgeBodydist > -30)
movecamera = 0,0
value	= 0

[State 12400, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0 || parent,stateno !=1801

;---------------------------------------------------------------------------
;Electric Stun Sparks
[StateDef 12405]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 9999
ctrl = 0
sprpriority = 3

[State 12405, VarX]
type = VarRandom
trigger1 = 1
v = 20
range = -6,26
ignorehitpause = 1

[State 12405, VarY]
type = VarRandom
trigger1 = 1
v = 21
range = -5,-75
ignorehitpause = 1

[State 12405, VarAnim]
type = VarRandom
trigger1 = 1
v = 22
range = 0,3
ignorehitpause = 1

[State 12405, ElectricSpark1]
type = Explod
trigger1 = (time%2)
anim = 10030+floor(var(22))
id = 10030
postype = p1
pos = floor(var(20)), floor(var(21))
vel = 0, 0
accel = 0, 0
ownpal = 1
scale = 0.125, 0.125
sprpriority = 3
ignorehitpause = 1

[State 12405, ElectricSpark2]
type = Explod
trigger1 = !(time%2)
anim = 10035+floor(var(22))
id = 10035
postype = p1
pos = floor(var(20)), floor(var(21))
vel = 0, 0
accel = 0, 0
ownpal = 1
scale = 0.125, 0.125
sprpriority = 3
ignorehitpause = 1

[State 12405, DestroySelf]
type = DestroySelf
trigger1 = time = 80
;---------------------------------------------------------------------------
;UpperCut Effect Angled
[StateDef 12650]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 12651
ctrl = 0
sprpriority = 3

[State 12650, No Shadow]
type = AssertSpecial
trigger1 = time >= 0
flag = noshadow
supermovetime = 9999
pausemovetime = 9999

[State 12420, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = -7,-69

[State 12420, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 12420, AngleSet]
type = AngleSet
trigger1 = !time
value = 30

[State 12420, AnglDraw]
type = AngleDraw
trigger1 = 1

[State 12650, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 12650, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1

[State 12650, End]
type = DestroySelf
trigger1 = animtime = 0 || (parent, stateno != 420 && parent, stateno != [1350,1359])

;---------------------------------------------------------------------------
;Finger Laser Fwd
[StateDef 12710]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 12710
ctrl = 0
sprpriority = 3
poweradd = -100

[State 12710, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 30
length = 10
palinvertall = 0
palbright = 0,0,0
palcontrast = 128,128,128
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add

[State 12710, VelSet]
type = VelSet
trigger1 = time = 0
x = 15

[State 12710, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 12710, No Shadow]
type = AssertSpecial
trigger1 = time >= 0
flag = noshadow
supermovetime = 9999
pausemovetime = 9999

[State 12710, VarSet]
type = VarRandom
trigger1 = Time
v = 6
range = -10,10

[State 12710, Sparkle-1]
type = Explod
trigger1 = Time
anim = 11550
id = 11550
postype = p1
pos = var(6), floor(var(6)*0.2)
vel = (vel x)*0.033, 0
accel = (vel x)*0.003, abs(var(6)*0.025)
ownpal = 1
scale = 0.25, 0.25
sprpriority = 3

[State 12710, HitDef]
type = HitDef
trigger1 = time = 0 
attr = S, SP
animtype  = Hard
Damage = 65,13
getpower = 0
givepower = 0
hitflag = MAFP
guardflag = MA
pausetime = 0,10
guard.pausetime = 0,5
sparkno = -1
guard.sparkno = -1
sparkxy = -10,0
hitsound   = S1302,0
guardsound = S1302,0
ground.type = High
ground.slidetime = 16
ground.hittime  = 16
ground.velocity = -7      
air.velocity = -5.5,-2.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0

[State 12710, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 12710, VarSet]
type = VarSet
trigger1 = movecontact && numtarget >0
v = 17
value = target, ID
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 12710, VarSet]
type = VarRandom
trigger1 = time
v = 7
range = 0,3

[State 12710, HitSpark]
type = Explod
trigger1 = movehit = 1 && PlayerIDExist(var(17))
anim = 12715+var(7)
id = 12715
postype = p1
pos = floor(abs((playerID(var(17)), pos x)-(pos x))),0
vel = 0, 0
ownpal = 1
scale = 0.25, 0.25
sprpriority = 4

[State 12710, DestroySelf]
type = DestroySelf
trigger1 = time = 25 || frontedgebodydist < -50
;---------------------------------------------------------------------------
;Finger Laser Fwd-Up
[StateDef 12711]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 12710
ctrl = 0
sprpriority = 3
poweradd = -100

[State 12711, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 30
length = 10
palinvertall = 0
palbright = 0,0,0
palcontrast = 128,128,128
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add

[State 12711, Trans]
type = Trans
trigger1 = 1
trans = add
ignorehitpause = 1

[State 12711, AngleSet]
type = AngleSet
trigger1 = !time
value = 15

[State 12711, AngleDraw]
type = AngleDraw
trigger1 = 1

[State 12711, VelSet]
type = VelSet
trigger1 = !time
x = 13.5
y = -3

[State 12711, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 12711, No Shadow]
type = AssertSpecial
trigger1 = time >= 0
flag = noshadow
supermovetime = 9999
pausemovetime = 9999

[State 12711, VarSet]
type = VarRandom
trigger1 = Time
v = 6
range = -10,5

[State 12711, Sparkle-1]
type = Explod
trigger1 = Time
anim = 11550
id = 11550
postype = p1
pos = var(6), -floor(var(6)*0.5)
vel = (vel x)*0.033, 0
accel = (vel x)*0.003, abs(var(6)*0.025)
ownpal = 1
scale = 0.25, 0.25
sprpriority = 3

[State 12711, HitDef]
type = HitDef
trigger1 = time = 0 
attr = S, SP
animtype  = Hard
Damage = 65,13
getpower = 0
givepower = 0
hitflag = MAFP
guardflag = MA
pausetime = 0,10
guard.pausetime = 0,5
sparkno = -1
guard.sparkno = -1
sparkxy = -10,0
hitsound   = S1302,0
guardsound = S1302,0
ground.type = High
ground.slidetime = 16
ground.hittime  = 16
ground.velocity = -7      
air.velocity = -5.5,-2.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0

[State 12711, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 12710, VarSet]
type = VarSet
trigger1 = movecontact && numtarget >0
v = 17
value = target, ID
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 12711, VarSet]
type = VarRandom
trigger1 = time
v = 7
range = 0,3

[State 12711, HitSpark]
type = Explod
trigger1 = movehit = 1 && PlayerIDExist(var(17))
anim = 12715+var(7)
id = 12715
postype = p1
pos = floor(abs((playerID(var(17)), pos x)-(pos x))),0
vel = 0, 0
ownpal = 1
scale = 0.25, 0.25
sprpriority = 4

[State 12711, DestroySelf]
type = DestroySelf
trigger1 = time = 25 || frontedgebodydist < -50
;---------------------------------------------------------------------------
;Finger Laser Up
[StateDef 12712]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 12710
ctrl = 0
sprpriority = 3
poweradd = -100

[State 12712, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 30
length = 10
palinvertall = 0
palbright = 0,0,0
palcontrast = 128,128,128
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add

[State 12712, Trans]
type = Trans
trigger1 = 1
trans = add
ignorehitpause = 1

[State 12712, AngleSet]
type = AngleSet
trigger1 = !time
value = 30

[State 12712, AngleDraw]
type = AngleDraw
trigger1 = 1

[State 12712, VelSet]
type = VelSet
trigger1 = !time
x = 11.5
y = -6

[State 12712, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 12712, No Shadow]
type = AssertSpecial
trigger1 = time >= 0
flag = noshadow
supermovetime = 9999
pausemovetime = 9999

[State 12712, VarSet]
type = VarRandom
trigger1 = Time
v = 6
range = -10,5

[State 12712, Sparkle-1]
type = Explod
trigger1 = Time
anim = 11550
id = 11550
postype = p1
pos = var(6), -floor(var(6)*0.75)
vel = (vel x)*0.033, 0
accel = (vel x)*0.003, abs(var(6)*0.025)
ownpal = 1
scale = 0.25, 0.25
sprpriority = 3

[State 12712, HitDef]
type = HitDef
trigger1 = time = 0 
attr = S, SP
animtype  = Hard
Damage = 65,13
getpower = 0
givepower = 0
hitflag = MAFP
guardflag = MA
pausetime = 0,10
guard.pausetime = 0,5
sparkno = -1
guard.sparkno = -1
sparkxy = -10,0
hitsound   = S1302,0
guardsound = S1302,0
ground.type = High
ground.slidetime = 16
ground.hittime  = 16
ground.velocity = -7      
air.velocity = -5.5,-2.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0

[State 12712, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 12710, VarSet]
type = VarSet
trigger1 = movecontact && numtarget >0
v = 17
value = target, ID
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 12712, VarSet]
type = VarRandom
trigger1 = time
v = 7
range = 0,3

[State 12712, HitSpark]
type = Explod
trigger1 = movehit = 1 && PlayerIDExist(var(17))
anim = 12715+var(7)
id = 12715
postype = p1
pos = floor(abs((playerID(var(17)), pos x)-(pos x))),0
vel = 0, 0
ownpal = 1
scale = 0.25, 0.25
sprpriority = 4

[State 12712, DestroySelf]
type = DestroySelf
trigger1 = time = 25 || frontedgebodydist < -50
;---------------------------------------------------------------------------
;Small Explosion (From Basic FireBall)
[StateDef 13000]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 9999
ctrl = 0
sprpriority = 4
poweradd = 0

[State 13000, Sound]
type = PlaySnd
trigger1 = time = 0
value = 1100,0

[State 13000, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
supermovetime = 9999
pausemovetime = 9999

[State 13000, FVarset]
type = VarSet
trigger1 = (!time)
fv = 1
value = 0

[State 13000, FVarset]
type = VarAdd
trigger1 = 1
fv = 1
value = 0.01

[State 13000, SmallExplosion]
type = Explod
trigger1 = (!time)
Anim = 13000
Pos = 0,0
Id = 13000
velocity = 0,0
sprpriority = 5
removeongethit = 0
bindtime = 1
Postype = p1
supermovetime  = 9999
pausemovetime  = 9999
persistent = 0
ownpal = 1
scale = 0.5, 0.5

[State 13000, Flash! AhhAHHHH!]
type = Explod
trigger1 = (!time)
Anim = 13105
Pos = 0,0
Id = 13105
velocity = 0,0
sprpriority = 5
removeongethit = 0
;removetime = 9
bindtime = 1
Postype = p1
supermovetime  = 9999
pausemovetime  = 9999
persistent = 0
ownpal = 1
scale = 0.01, 0.01

[State 13000, ModifyExplod]
type = ModifyExplod
trigger1 = (time)
id = 13105
supermovetime = 9999
pausemovetime = 9999
scale = 0.1+fvar(1),0.1+fvar(1)

[State 13000, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 13000, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 30
length = 5
palinvertall = 0
palbright = 0,0,0
palcontrast = 128,128,128
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add

[State 13000, Disperse Effect]
type = Helper
trigger1 = time = 0
name = "DisperseEffect"
stateno = 14501
postype = p1
pos = 0, 0
keyctrl = 0
ownpal = 0
id = 14500
bindtime = 0

[State 13000, DestroySelf]
type = DestroySelf
trigger1 = time = 13
;---------------------------------------------------------------------------
;Small Explosion (From Ki Barrage)
[StateDef 13001]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 9999
ctrl = 0
sprpriority = 4
poweradd = 0

[State 13001, Sound]
type = PlaySnd
trigger1 = time = 0
value = 1100,0

[State 13001, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
supermovetime = 9999
pausemovetime = 9999

[State 13001, FVarset]
type = VarSet
trigger1 = (!time)
fv = 1
value = 0

[State 13001, FVarset]
type = VarAdd
trigger1 = 1
fv = 1
value = 0.01

[State 13001, SmallExplosion]
type = Explod
trigger1 = (!time)
Anim = 13000
Pos = 0,0
Id = 13000
velocity = 0,0
sprpriority = 5
removeongethit = 0
bindtime = 1
Postype = p1
supermovetime  = 9999
pausemovetime  = 9999
persistent = 0
ownpal = 1
scale = 0.5, 0.5

[State 13001, Flash! AhhAHHHH!]
type = Explod
trigger1 = (!time)
Anim = 13105
Pos = 0,0
Id = 13105
velocity = 0,0
sprpriority = 5
removeongethit = 0
;removetime = 9
bindtime = 1
Postype = p1
supermovetime  = 9999
pausemovetime  = 9999
persistent = 0
ownpal = 1
scale = 0.01, 0.01

[State 13001, ModifyExplod]
type = ModifyExplod
trigger1 = (time)
id = 13105
supermovetime = 9999
pausemovetime = 9999
scale = 0.1+fvar(1),0.1+fvar(1)

[State 13001, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 13001, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 30
length = 5
palinvertall = 0
palbright = 0,0,0
palcontrast = 128,128,128
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add

[State 13001, Disperse Effect]
type = Helper
trigger1 = time = 0
name = "DisperseEffect"
stateno = 14503
postype = p1
pos = 0, 0
keyctrl = 0
ownpal = 0
id = 14500
bindtime = 0

[State 13001, DestroySelf]
type = DestroySelf
trigger1 = time = 13
;---------------------------------------------------------------------------
;Small Explosion
[StateDef 13010]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 13000
ctrl = 0
sprpriority = 4
poweradd = 0

[State 13010, VarSet]
type = VarRandom
trigger1 = !time
v = 17
range = -5, 5

[State 13010, VarSet]
type = VarRandom
trigger1 = !time
v = 18
range = -7, 4

[State 13010, VelSet]
type = VelSet
trigger1 = !time
x = Var(17)
y = Var(18)

[State 13010, VelAdd]
type = VelAdd
trigger1 = 1
x = (-Var(17)*.01)
y = ifelse(var(18)=0, 0.2, abs(Var(18)*.05))

[State 13010, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
supermovetime = 9999
pausemovetime = 9999

[State 13010, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 13010, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 30
length = 20
palinvertall = 0
palbright = 0,0,0
palcontrast = 128,128,128
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add
;--------------------------
[State 13010, Vel-VarSet]
type = VarSet
trigger1 = !time
fv = 19
value = var(17)

[State 13010, Vel-VarSet]
type = VarSet
trigger1 = !time
fv = 20
value = var(18)

[State 13010, VelAdd]
type = VarAdd
trigger1 = 1
fv = 19 
value = (-FVar(19)*.01)

[State 13010, VelAdd]
type = VarAdd
trigger1 = 1
fv = 20
value = ifelse(fvar(20)=0, 0.2, abs(fVar(20)*.05))

[State 13010, Pos-VarSet]
type = VarRandom
trigger1 = 1
v = 21
range = -13, 13

[State 13010, Pos-VarSet]
type = VarRandom
trigger1 = 1
v = 22
range = -13, 13

[State 13010, Pos-VarSet]
type = VarRandom
trigger1 = 1
v = 23
range = -13, 13

[State 13010, Pos-VarSet]
type = VarRandom
trigger1 = 1
v = 24
range = -13, 13

[State 13010, Sparkle-1]
type = Explod
triggerall = time = [1,17]
trigger1 = Time % 2
anim = 11550
id = 11550
postype = p1
pos = var(21), var(22)
vel = fvar(19)*.5, fvar(20)*.25
accel = -fvar(19)*.01, ifelse(fvar(20)=0, 0.1, abs(fvar(20))*.025)
ownpal = 1
scale = 0.25, 0.25
sprpriority = 3

[State 13010, Sparkle-2]
type = Explod
triggerall = time = [2,18]
trigger1 = Time % 2
anim = 11555
id = 11555
postype = p1
pos = var(23), var(24)
vel = fvar(19)*.5, fvar(20)*.25
accel = -fvar(19)*.01, ifelse(fvar(20)=0, 0.1, abs(fvar(20))*.025)
ownpal = 1
scale = 0.25, 0.25
sprpriority = 3
;-----------------------
[State 13010, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
;---------------------------------------------------------------------------
;Small Explosion 2
[StateDef 13011]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 13000
ctrl = 0
sprpriority = 4
poweradd = 0

[State 13011, VarSet]
type = VarRandom
trigger1 = !time
v = 17
range = -3, 3

[State 13011, VarSet]
type = VarRandom
trigger1 = !time
v = 18
range = -7, -3

[State 13011, VelSet]
type = VelSet
trigger1 = !time
x = Var(17)
y = Var(18)

[State 13011, VelAdd]
type = VelAdd
trigger1 = 1
x = (-Var(17)*.01)
y = abs(Var(18)*.05)

[State 13011, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
supermovetime = 9999
pausemovetime = 9999

[State 13011, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 13011, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 30
length = 20
palinvertall = 0
palbright = 0,0,0
palcontrast = 128,128,128
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add
;--------------------------
[State 13011, Vel-VarSet1]
type = VarRandom
trigger1 = 1
v = 21
range = -5, 5

[State 13011, Vel-VarSet2]
type = VarRandom
trigger1 = 1
v = 22
range = -5, 5

[State 13011, Vel-VarSeta]
type = VarRandom
trigger1 = 1
v = 23
range = -5, 5

[State 13011, Vel-VarSetb]
type = VarRandom
trigger1 = 1
v = 24
range = -5, 5

[State 13011, Sparkle-1]
type = Explod
triggerall = time = [6,18]
trigger1 = Time % 2
anim = 11550
id = 11550
postype = p1
pos = floor(var(21)), floor(var(22))
vel = (vel x)*0.5, (vel y)*0.5
accel = -(vel x)*0.015,-(vel y)*0.015
ownpal = 1
scale = 0.25, 0.25
sprpriority = 3

[State 13011, Sparkle-2]
type = Explod
triggerall = time = [6,18]
trigger1 = !(Time % 2)
anim = 11555
id = 11555
postype = p1
pos = floor(var(23)), floor(var(24))
vel = (vel x)*0.5, (vel y)*0.5
accel = -(vel x)*0.015,-(vel y)*0.015
ownpal = 1
scale = 0.25, 0.25
sprpriority = 3
;-----------------------
[State 13011, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
;---------------------------------------------------------------------------
;Big Explosion (From Big FireBall)
[StateDef 13100]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 13100
ctrl = 0
sprpriority = 4
poweradd = 0

[State 13100, Sound]
type = PlaySnd
trigger1 = time = 0
value = 1100,1

[State 13100, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
supermovetime = 9999
pausemovetime = 9999

[State 13100, FVarset]
type = VarSet
trigger1 = (!time)
fv = 1
value = 0

[State 13100, FVarset]
type = VarAdd
trigger1 = 1
fv = 1
value = 0.05

[State 13100, Flash! AhhAHHHH!]
type = Explod
trigger1 = (!time)
Anim = 13105
Pos = 0,0
Id = 13105
velocity = 0,0
sprpriority = 5
removeongethit = 0
;removetime = 9
bindtime = 1
Postype = p1
supermovetime  = 9999
pausemovetime  = 9999
persistent = 0
ownpal = 1
scale = 0.05, 0.05

[State 13100, ModifyExplod]
type = ModifyExplod
trigger1 = (time)
id = 13105
supermovetime = 9999
pausemovetime = 9999
scale = 0.25+fvar(1),0.25+fvar(1)

[State 13100, Shake]
type = EnvShake
trigger1 = (!time)
Time = 17
freq = 90
ampl = -3
phase = 0

[State 13100, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 13100, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 30
length = 5
palinvertall = 0
palbright = 0,0,0
palcontrast = 128,128,128
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add

[State 13100, Disperse Effect]
type = Helper
trigger1 = time = 0
name = "DisperseEffect"
stateno = 14500
postype = p1
pos = 0, 0
keyctrl = 0
ownpal = 0
id = 14500
bindtime = 0

[State 13100, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
;---------------------------------------------------------------------------
;Big Explosion (From Massive FireBall)
[StateDef 13101]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 13100
ctrl = 0
sprpriority = 4
poweradd = 0

[State 13101, AllPalFX]
type = AllPalFX
trigger1 = time < 13
add = 140-(time*10),140-(time*10),140-(time*10)
color = 70+(time*10)
time = 1

[State 13101, SoundBigBoom]
type = PlaySnd
trigger1 = time = 0
value = 1100,2

[State 13101, SoundMediumBoom]
type = PlaySnd
trigger1 = time = 7
trigger2 = time = 18
value = 1100,0
volume = 100

[State 13101, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
supermovetime = 9999
pausemovetime = 9999

[State 13101, FVarset]
type = VarSet
trigger1 = (!time)
fv = 1
value = 0

[State 13101, FVarset]
type = VarAdd
trigger1 = 1
fv = 1
value = 0.1

[State 13101, Flash! AhhAHHHH!]
type = Explod
trigger1 = (!time)
Anim = 13105
Pos = 0,0
Id = 13105
velocity = 0,0
sprpriority = 5
removeongethit = 0
;removetime = 9
bindtime = 1
Postype = p1
supermovetime  = 9999
pausemovetime  = 9999
persistent = 0
ownpal = 1
scale = 0.1, 0.1

[State 13101, ModifyExplod]
type = ModifyExplod
trigger1 = (time)
id = 13105
supermovetime = 9999
pausemovetime = 9999
scale = 0.35+fvar(1),0.35+fvar(1)

[State 13101, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 13101, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 30
length = 5
palinvertall = 0
palbright = 0,0,0
palcontrast = 128,128,128
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add

[State 13101, Shake]
type = EnvShake
trigger1 = (!time)
Time = 28
freq = 90
ampl = ifelse((parent, stateno = 5150),-8,-5)
phase = 0

[State 13101, Disperse Effect]
type = Helper
trigger1 = time = 0
name = "DisperseEffect"
stateno = 14500
postype = p1
pos = 0, 0
keyctrl = 0
ownpal = 0
id = 14500
bindtime = 0

[State 13100, SmallExplosions]
type = Helper
trigger1 = time = 0
trigger2 = time = 4
trigger3 = time = 8
trigger4 = time = 12
trigger5 = time = 16
trigger6 = time = 20
name = "SmallExplode"
stateno = 13010
postype = p1
pos = 0, 0
keyctrl = 0
ownpal = 0
id = 13010
bindtime = 0

[State 13101, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
;---------------------------------------------------------------------------
;Circular Disperse Effect 1
[StateDef 14500]
type = S
physics = N
movetype = I
velset = 0, 0
anim = 9999
ctrl = 0
sprpriority = 0

[State 14500, RandomVariable-1]
type = VarRandom
trigger1 = 1
v = 14
range = -8,8

[State 14500, RandomVariable-2]
type = VarRandom
trigger1 = 1
v = 15
range = -8,8

[State 14500, Sparkle-1]
type = Explod
triggerall = time < 12
trigger1 = Timemod = 2,0
anim = 11550
id = 11550
postype = p1
pos = 0, 0
ownpal = 1
velocity = Var(14)*0.5, var(15)*0.5
scale = 0.25, 0.25
sprpriority = 3

[State 14500, Sparkle-2]
type = Explod
triggerall = time < 12
trigger1 = Timemod = 2,1
anim = 11555
id = 11555
postype = p1
pos = 0, 0
ownpal = 1
velocity = Var(14)*0.75, var(15)*0.75
scale = 0.25, 0.25
sprpriority = 3

[State 14500, DestroySelf]
type = DestroySelf
trigger1 = time = 20
;---------------------------------------------------------------------------
;Circular Disperse Effect 2
[StateDef 14501]
type = S
physics = N
movetype = I
velset = 0, 0
anim = 9999
ctrl = 0
sprpriority = 0

[State 14501, RandomVariable-1]
type = VarRandom
trigger1 = 1
v = 14
range = -8,8

[State 14501, RandomVariable-2]
type = VarRandom
trigger1 = 1
v = 15
range = -8,8

[State 14501, Sparkle-1]
type = Explod
triggerall = time < 12
trigger1 = Timemod = 2,0
anim = 11550
id = 11550
postype = p1
pos = 0, 0
ownpal = 1
velocity = Var(14)*0.25, var(15)*0.25
scale = 0.25, 0.25
sprpriority = 3

[State 14501, Sparkle-2]
type = Explod
triggerall = time < 12
trigger1 = Timemod = 2,1
anim = 11555
id = 11555
postype = p1
pos = 0, 0
ownpal = 1
velocity = Var(14)*0.4, var(15)*0.4
scale = 0.25, 0.25
sprpriority = 3

[State 14501, DestroySelf]
type = DestroySelf
trigger1 = time = 16
;---------------------------------------------------------------------------
;Circular Disperse Effect 3 (For Ki Barrage)
[StateDef 14503]
type = S
physics = N
movetype = I
velset = 0, 0
anim = 9999
ctrl = 0
sprpriority = 0

[State 14501, RandomVariable-1]
type = VarRandom
trigger1 = 1
v = 14
range = -8,8

[State 14501, RandomVariable-2]
type = VarRandom
trigger1 = 1
v = 15
range = -8,8

[State 14501, Sparkle-1]
type = Explod
triggerall = time < 12
trigger1 = Time%2
anim = 11550
id = 11550
postype = p1
pos = 0, 0
ownpal = 1
velocity = Var(14)*0.25, var(15)*0.25
scale = 0.25, 0.25
sprpriority = 3

[State 14501, Sparkle-2]
type = Explod
triggerall = time < 12 
trigger1 = Time%2
anim = 11555
id = 11555
postype = p1
pos = 0, 0
ownpal = 1
velocity = Var(14)*0.4, var(15)*0.4
scale = 0.25, 0.25
sprpriority = 3

[State 14501, DestroySelf]
type = DestroySelf
trigger1 = time = 13
;---------------------------------------------------------------------------
;Conical Disperse Effect
[StateDef 14505]
type = S
physics = N
movetype = I
velset = 0, 0
anim = 9999
ctrl = 0
sprpriority = 0

[State 14505, RandomVariable-1]
type = VarRandom
trigger1 = 1
v = 14
range = -6,6

[State 14505, RandomVariable-2]
type = VarRandom
trigger1 = 1
v = 15
range = -12,-6

[State 14505, Sparkle-1]
type = Explod
triggerall = time < 12
trigger1 = Timemod = 2,0
anim = 11550
id = 11550
postype = p1
pos = floor(var(16)*0.5), 0
ownpal = 1
velocity = Var(14)*0.5, var(15)*0.5
scale = 0.25, 0.25
sprpriority = 3

[State 14505, RandomVariable-1]
type = VarRandom
trigger1 = 1
v = 16
range = -6,6

[State 14505, RandomVariable-2]
type = VarRandom
trigger1 = 1
v = 17
range = -12,-6

[State 14505, Sparkle-2]
type = Explod
triggerall = time < 12
trigger1 = Timemod = 2,1
anim = 11555
id = 11555
postype = p1
pos = floor(var(16)*0.5), 0
ownpal = 1
velocity = Var(16)*0.5, var(17)*0.5
scale = 0.25, 0.25
sprpriority = 3

[State 14505, DestroySelf]
type = DestroySelf
trigger1 = time = 12
;--------------------------------------------------------------------------------------
;Ki String Initial Shot
[StateDef 14700]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 14700
ctrl = 0
sprpriority = 3

[State 14700, PlaySND]
type = PlaySnd
trigger1 = !time
value = 1330,0
volume = 255

[State 14700, BindToParent]
type = BindToParent
trigger1 = !time
time = 1
pos = 9,-43

[State 14700, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 14700, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 14700, VelSet]
type = VelSet
trigger1 = !time
x = 15

[State 14700, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 14700, VarSet]
type = VarRandom
trigger1 = Time
v = 6
range = -10,10

[State 14700, VarSet]
type = VarRandom
trigger1 = Time
v = 7
range = -5,5

[State 14700, Sparkle]
type = Explod
trigger1 = Time
anim = 11559
id = 11559
postype = p1
pos = var(6), var(7)
vel = 0, 0
accel = 0, 0.05
ownpal = 0
scale = 0.125, 0.125
sprpriority = 3

[State 14700, HitDef]
type = HitDef
trigger1 = !time
attr = S, HP
animtype  = Hard
Damage = 1,1
getpower = 0
givepower = 0
hitflag = MAFP
guardflag = MA
pausetime = 1,12
sparkno = -1
guard.sparkno = -1
sparkxy = -10,0
hitsound   = -1
guardsound = -1
ground.type = High
ground.slidetime = 30
ground.hittime  = 30
ground.velocity = 0      
air.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
id = 14700
p2stateno = 95028

[State 14700, DestroySelf]
type = DestroySelf
trigger1 = parent, stateno != [2100,2102]
trigger2 = moveguarded
trigger3 = frontedgebodydist < -10

[State 14700, ChangeState]
type = ChangeState
trigger1 = movehit
value = 14701
;--------------------------------------------------------------------------------------
;Ki Strings 1
[StateDef 14701]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 14712
ctrl = 0
sprpriority = 3

[State 14700, PlaySND]
type = PlaySnd
trigger1 = !time
value = 1330,1
volume = 255

[State 14701, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 9,-43

[State 14701, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 14701, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 14701, GetTargetID]
type = VarSet
trigger1 =  numtarget > 0
v = 3
value = target, ID
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 14701, VarSet]
type = VarSet
trigger1 = PlayerIDExist(var(3))
fv = 5
value = abs(((playerID(var(3)), pos x)-(pos x))/320)

[State 14701, DistX]
type = VarSet
trigger1 = PlayerIDExist(var(3))
fv = 20
value = abs((playerID(var(3)), pos x)-(pos x))

[State 14701, DistY]
type = VarSet
trigger1 = PlayerIDExist(var(3))
fv = 21
value = -(((playerID(var(3)), pos y)-43)-(pos y))

[State 14701, Angle]
type = VarSet
trigger1 = 1
fv = 22
value = (atan(fvar(21)/fvar(20))*(180/3.142))

[State 14701, AngleSet]
type = AngleSet
trigger1 = 1
value = fvar(22)

[State 14701, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = fvar(5), 1

[State 14701, VarSet]
type = VarRandom
trigger1 = !(Time%3)
v = 6
range = 0,floor(p2bodydist x)

[State 14701, VarSet]
type = VarRandom
trigger1 = !(Time%3)
v = 7
range = -5,5

[State 14701, Sparkle]
type = null;Explod
trigger1 = !(Time%3)
anim = 11559
id = 11559
postype = p1
pos = floor(var(6)), var(7)
vel = 0, 0
accel = 0, 0.025
ownpal = 0
scale = 0.125, 0.125
sprpriority = 3

[State 14701, String Wrap]
type = Explod
trigger1 = !time
anim = 14720
id = 14720
postype = p2
pos = -4, -43
removetime = 200
vel = 0, 0
accel = 0, 0
ownpal = 0
scale = 0.5, 0.5
sprpriority = 3
bindtime = -1

[State 14701, Tighten String Wrap]
type = ModifyExplod
trigger1 = parent, anim = 2102
id = 14720
scale = 0.35, 0.5

[State 14701, VarSet]
type = VarRandom
trigger1 = !(Time%3)
v = 8
range = -25,10

[State 14701, VarSet]
type = VarRandom
trigger1 = !(Time%3)
v = 9
range = -30,30

[State 14701, Sparkle]
type = Explod
trigger1 = !(Time%3)
anim = 11559
id = 11559
postype = p2
pos = floor(var(8)), floor(var(9))-43
vel = 0, 0
accel = 0, 0.025
ownpal = 0
scale = 0.125, 0.125
sprpriority = 3

[State 14701, KiString2.Helper]
type = Helper
trigger1 = !time
name = "String2"
stateno = 14702
postype = p1
pos = 0, 0
keyctrl = 0
ownpal = 1
id = 14702
size.xscale = 0.5
size.yscale = 0.75

[State 14701, KiString3.Helper]
type = Helper
trigger1 = !time
name = "String3"
stateno = 14703
postype = p1
pos = 0, 0
keyctrl = 0
ownpal = 1
id = 14703
size.xscale = 0.5
size.yscale = 0.75

[State 14701, KiString4.Helper]
type = Helper
trigger1 = !time
name = "String4"
stateno = 14704
postype = p1
pos = 0, 0
keyctrl = 0
ownpal = 1
id = 14704
size.xscale = 0.5
size.yscale = 0.9

[State 14701, KiString5.Helper]
type = Helper
trigger1 = !time
name = "String5"
stateno = 14705
postype = p1
pos = 0, 0
keyctrl = 0
ownpal = 1
id = 14705
size.xscale = 0.5
size.yscale = 0.9

[State 14701, Next]
type = ChangeState
trigger1 = parent, stateno != [2100,2102]
value = 14711

[State 14701, Next]
type = ChangeState
trigger1 = parent, anim = 2102
value = 14719
;--------------------------------------------------------------------------------------
;Ki Strings 2
[StateDef 14702]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 14711
ctrl = 0
sprpriority = 3

[State 14702, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 0,0

[State 14702, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 14702, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 14702, VarSet]
type = VarSet
trigger1 = PlayerIDExist(parent, var(3))
fv = 5
value = abs(((playerID(parent, var(3)), pos x)-(pos x))/320)

[State 14702, AngleSet]
type = AngleSet
trigger1 = 1
value = 2+(parent,fvar(22))

[State 14702, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = fvar(5), 1

[State 14702, DestroySelf]
type = ChangeState
trigger1 = parent, stateno = 14711
value = 14712
;--------------------------------------------------------------------------------------
;Ki Strings 3
[StateDef 14703]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 14710
ctrl = 0
sprpriority = 3

[State 14703, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 0,0

[State 14703, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 14703, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 14703, VarSet]
type = VarSet
trigger1 = PlayerIDExist(parent, var(3))
fv = 5
value = abs(((playerID(parent, var(3)), pos x)-(pos x))/320)

[State 14703, AngleSet]
type = AngleSet
trigger1 = 1
value = 4+(parent,fvar(22))

[State 14703, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = fvar(5), 1

[State 14703, DestroySelf]
type = ChangeState
trigger1 = parent, stateno = 14711
value = 14713
;--------------------------------------------------------------------------------------
;Ki Strings 4
[StateDef 14704]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 14713
ctrl = 0
sprpriority = 3

[State 14704, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 0,0

[State 14704, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 14704, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 14704, VarSet]
type = VarSet
trigger1 = PlayerIDExist(parent, var(3))
fv = 5
value = abs(((playerID(parent, var(3)), pos x)-(pos x))/320)

[State 14704, AngleSet]
type = AngleSet
trigger1 = 1
value = -2+(parent,fvar(22))

[State 14704, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = fvar(5), 1

[State 14704, DestroySelf]
type = ChangeState
trigger1 = parent, stateno = 14711
value = 14714
;--------------------------------------------------------------------------------------
;Ki Strings 5
[StateDef 14705]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 14714
ctrl = 0
sprpriority = 3

[State 14705, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 0,0

[State 14705, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 14705, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 14705, VarSet]
type = VarSet
trigger1 = PlayerIDExist(parent, var(3))
fv = 5
value = abs(((playerID(parent, var(3)), pos x)-(pos x))/320)

[State 14705, AngleSet]
type = AngleSet
trigger1 = 1
value = -4+(parent,fvar(22))

[State 14705, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = fvar(5), 1

[State 14705, DestroySelf]
type = ChangeState
trigger1 = parent, stateno = 14711
value = 14715
;--------------------------------------------------------------------------------------
;Ki Strings Die
[StateDef 14711]
type = A
physics = N
movetype = I
velset = 0, 0
ctrl = 0
sprpriority = 3

[State 14711, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 14711, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 14711, VarSet]
type = PalFx
trigger1 = time
time = 1
add = -(time*12),-(time*12),-(time*12)

[State 14711, VarSet]
type = VarSet
trigger1 = PlayerIDExist(var(3))
fv = 5
value = abs(((playerID(var(3)), pos x)-(pos x))/320)

[State 14711, DistX]
type = VarSet
trigger1 = PlayerIDExist(var(3))
fv = 20
value = abs((playerID(var(3)), pos x)-(pos x))

[State 14711, DistY]
type = VarSet
trigger1 = PlayerIDExist(var(3))
fv = 21
value = -(((playerID(var(3)), pos y)-43)-(pos y))

[State 14711, DistY]
type = VarSet
trigger1 = 1
fv = 22
value = (atan(fvar(21)/fvar(20))*(180/3.142))

[State 14711, AngleSet]
type = AngleSet
trigger1 = 1
value = fvar(22)

[State 14711, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = fvar(5), 1

[State 14711, RemoveExplod]
type = RemoveExplod
trigger1 = time = 10
id = 14720

[State 14711, DestroySelf]
type = DestroySelf
trigger1 = Time = 20
;--------------------------------------------------------------------------------------
;Ki Strings 2 Die
[StateDef 14712]
type = A
physics = N
movetype = I
velset = 0, 0
ctrl = 0
sprpriority = 3

[State 14712, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 14712, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 14712, VarSet]
type = PalFx
trigger1 = time
time = 1
add = -(time*12),-(time*12),-(time*12)

[State 14712, VarSet]
type = VarSet
trigger1 = PlayerIDExist(parent, var(3))
fv = 5
value = abs(((playerID(parent, var(3)), pos x)-(pos x))/320)

[State 14712, AngleSet]
type = AngleSet
trigger1 = 1
value = 2+(parent,fvar(22))

[State 14712, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = fvar(5), 1

[State 14712, DestroySelf]
type = DestroySelf
trigger1 = Time = 20
;--------------------------------------------------------------------------------------
;Ki Strings 3 Die
[StateDef 14713]
type = A
physics = N
movetype = I
velset = 0, 0
ctrl = 0
sprpriority = 3

[State 14713, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 14713, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 14713, VarSet]
type = PalFx
trigger1 = time
time = 1
add = -(time*12),-(time*12),-(time*12)

[State 14713, VarSet]
type = VarSet
trigger1 = PlayerIDExist(parent, var(3))
fv = 5
value = abs(((playerID(parent, var(3)), pos x)-(pos x))/320)

[State 14713, AngleSet]
type = AngleSet
trigger1 = 1
value = 4+(parent,fvar(22))

[State 14713, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = fvar(5), 1

[State 14713, DestroySelf]
type = DestroySelf
trigger1 = Time = 20
;--------------------------------------------------------------------------------------
;Ki Strings 4 Die
[StateDef 14714]
type = A
physics = N
movetype = I
velset = 0, 0
ctrl = 0
sprpriority = 3

[State 14714, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 14714, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 14714, VarSet]
type = PalFx
trigger1 = time
time = 1
add = -(time*12),-(time*12),-(time*12)

[State 14714, VarSet]
type = VarSet
trigger1 = PlayerIDExist(parent, var(3))
fv = 5
value = abs(((playerID(parent, var(3)), pos x)-(pos x))/320)

[State 14714, AngleSet]
type = AngleSet
trigger1 = 1
value = -2+(parent,fvar(22))

[State 14714, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = fvar(5), 1

[State 14714, DestroySelf]
type = DestroySelf
trigger1 = Time = 20
;--------------------------------------------------------------------------------------
;Ki Strings 5 Die
[StateDef 14715]
type = A
physics = N
movetype = I
velset = 0, 0
ctrl = 0
sprpriority = 3

[State 14715, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 14715, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 14715, VarSet]
type = PalFx
trigger1 = time
time = 1
add = -(time*12),-(time*12),-(time*12)

[State 14715, VarSet]
type = VarSet
trigger1 = PlayerIDExist(parent, var(3))
fv = 5
value = abs(((playerID(parent, var(3)), pos x)-(pos x))/320)

[State 14715, AngleSet]
type = AngleSet
trigger1 = 1
value = -4+(parent,fvar(22))

[State 14715, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = fvar(5), 1

[State 14715, DestroySelf]
type = DestroySelf
trigger1 = Time = 20
;--------------------------------------------------------------------------------------
;Main Ki String Tighten
[StateDef 14719]
type = A
physics = N
movetype = I
velset = 0, 0
ctrl = 0
sprpriority = 3

[State 14719, PlaySND]
type = PlaySnd
trigger1 = !time
value = 1330,4

[State 14719, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 14719, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 14719, GetTargetID]
type = VarSet
trigger1 =  numtarget > 0
v = 3
value = target, ID
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 14719, VarSet]
type = VarSet
trigger1 = 1
fv = 5
value = abs(((playerID(var(3)), pos x)-(pos x))/320)

[State 14719, TargetState]
type = TargetState
trigger1=!time
value = 95029

[State 14719, DistX]
type = VarSet
trigger1 = PlayerIDExist(var(3))
fv = 20
value = abs((playerID(var(3)), pos x)-(pos x))

[State 14719, DistY]
type = VarSet
trigger1 = PlayerIDExist(var(3))
fv = 21
value = -(((playerID(var(3)), pos y)-43)-(pos y))

[State 14719, DistY]
type = VarSet
trigger1 = 1
fv = 22
value = (atan(fvar(21)/fvar(20))*(180/3.142))

[State 14719, AngleSet]
type = AngleSet
trigger1 = 1
value = fvar(22)

[State 14719, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = fvar(5), 1

[State 14719, Blood-1]
type = Explod
trigger1 = time = 1 && PlayerIDExist(var(3))
anim = 16100
id = 16100
postype = p1
pos = floor(abs((playerID(var(3)), pos x)-(pos x)))+7, floor(((playerID(var(3)), pos y)-43)-(pos y))
vel = 0,0
accel = 0,0
ownpal = 1
scale = 1, 1
sprpriority = 3

[State 14719, Blood-2]
type = Explod
trigger1 = time = 6 && PlayerIDExist(var(3))
anim = 16110
id = 16110
postype = p1
pos = floor(abs((playerID(var(3)), pos x)-(pos x)))+13, floor(((playerID(var(3)), pos y)-43)-(pos y))
vel = 0,0
accel = 0,0
ownpal = 1
scale = 1, 1
sprpriority = 3

[State 11050, VarSet]
type = VarRandom
trigger1 = time
v = 8
range = 0,359

[State 11050, FVarSet]
type = VarSet
trigger1 = time
fv = 9
value = var(8)*(3.142/180)

[State 14719, Sparkle]
type = Explod
trigger1 = time < 11 && PlayerIDExist(var(3))
anim = 11559
id = 11550
postype = p1
pos = floor(abs((playerID(var(3)), pos x)-(pos x))*1.075)+10, floor(((playerID(var(3)), pos y)-43)-(pos y))
vel = cos(fvar(9))*1.4, -sin(fvar(9))*1.4
accel = 0, 0.05
ownpal = 1
scale = 0.25, 0.25
sprpriority = 3

[State 11050, VarSet]
type = VarRandom
trigger1 = time
v = 10
range = 0,3

[State 14719, Blood-Splatter]
type = Explod
trigger1 = time < 11 && PlayerIDExist(var(3))
anim = 16150+var(10)
id = 16150
postype = p1
pos = floor(abs((playerID(var(3)), pos x)-(pos x))*1.075)+10, floor(((playerID(var(3)), pos y)-43)-(pos y))
vel = cos(fvar(9))*3.0, -abs(-sin(fvar(9))*5.0)
accel = 0, 0.2
ownpal = 1
scale = 1, 1
sprpriority = 3
removetime = 32

[State 14719, Next]
type = ChangeState
trigger1 = Time = 11
value = 14711
;---------------------------------------------------------------------------
;Ground Dust - Slam
[StateDef 15170]
type = S
physics = N
movetype = I
velset = 0, 0
anim = 9999
ctrl = 0

[State 15170, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 15170, PlaySND]
type = PlaySnd
trigger1 = time = 1
value = 5110,0

[State 15170, Shake]
type = EnvShake
trigger1 = time = 1
Time = 8

[State 15170, Dust]
type = Explod
trigger1 = time = 1
Anim = 15170
Pos = -10,0
Id = 15170
velocity = 0,0
sprpriority = 3
removeongethit = 0
;removetime = 9
bindtime = 1
Postype = p2
SuperMove = 1
ownpal = 1
scale = 0.5, 0.5

[State 15170, Swirl]
type = Explod
trigger1 = time = 6
Anim = 15175
Pos = -9,0
Id = 15175
velocity = 0,0
sprpriority = 4
removeongethit = 0
;removetime = 9
bindtime = 1
Postype = p2
SuperMove = 1
ownpal = 1
scale = 0.5, 0.5

[State 15170, End]
type = DestroySelf
trigger1 = time = 6
;---------------------------------------------------------------------------
;P2 Smoke/Explosions
[StateDef 15300]
type = A
physics = N
movetype = A
velset = 0, 0
anim = -1
ctrl = 0
sprpriority = 4

[State 15300, Smoke1]
type = Explod
trigger1 = time = 8
Anim = 15300
Pos = 0,-25
Id = 15300
velocity = 0
sprpriority = 3
removeongethit = 1
removetime = 14
bindtime = -1
Postype = p2
ownpal = 1
scale = 0.9, 0.9

[State 15300, Smoke2]
type = Explod
trigger1 = time = 15
Anim = 15300
Pos = 20,-15
Id = 15301
velocity = 0
sprpriority = 3
removeongethit = 1
removetime = 14
bindtime = -1
Postype = p2
ownpal = 1
scale = 0.9, 0.9

[State 15300, Smoke3]
type = Explod
trigger1 = time = 23
Anim = 15300
Pos = -10,-5
Id = 15302
velocity = 0
sprpriority = 3
removeongethit = 1
removetime = 14
bindtime = -1
Postype = p2
ownpal = 1
scale = 0.7, 0.7

[State 15300, Smoke4]
type = Explod
trigger1 = time = 31
Anim = 15300
Pos = 10,-25
Id = 15303
velocity = 0
sprpriority = 3
removeongethit = 1
removetime = 14
bindtime = -1
Postype = p2
ownpal = 1
scale = 0.9, 0.9

[State 15300, DestroySelf]
type = DestroySelf
trigger1 = p2stateno = 5120
;---------------------------------------------------------------------------
;Rock Helper 00
[StateDef 15200]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 15200 + Parent, Var(16)
ctrl = 0
sprpriority = 4

[State 15200, VelSet]
type = VelSet
triggerall = time = 0
trigger1 = parent, stateno = 1701
y = -2

[State 15200, VelAdd]
type = VelAdd
trigger1 = parent, stateno != 1701
y = 0.08

[State 15201, VelAdd]
type = VelAdd
triggerall = vel y > -3
trigger1 = parent, stateno = 1701
y = -0.08

[State 15200, Next]
type = ChangeState
trigger1 = pos Y < -240 && parent, stateno = 1701
value = 15255

[State 15200, Next]
type = ChangeState
trigger1 = pos y >= 0 && time > 0
value = 15255
;---------------------------------------------------------------------------
;Rock Helper 01
[StateDef 15201]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 15200 + Parent, Var(16)
ctrl = 0
sprpriority = 4

[State 15201, VelSet]
type = VelSet
triggerall = time = 0
trigger1 = parent, stateno = 1701
y = -3

[State 15201, VelAdd]
type = VelAdd
trigger1 = parent, stateno != 1701
y = 0.08

[State 15201, VelAdd]
type = VelAdd
triggerall = vel y > -3
trigger1 = parent, stateno = 1701
y = -0.08

[State 15201, Next]
type = ChangeState
trigger1 = pos Y < -240 && parent, stateno = 1701
value = 15255

[State 15201, Next]
type = ChangeState
trigger1 = pos y >= 0 && time > 0
value = 15255
;---------------------------------------------------------------------------
;Rock Helper 02
[StateDef 15202]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 15200 + Parent, Var(16)
ctrl = 0
sprpriority = 4

[State 15202, VelSet]
type = VelSet
triggerall = time = 0
trigger1 =  parent, stateno = 1701
y = -4

[State 15202, VelAdd]
type = VelAdd
trigger1 = parent, stateno != 1701
y = 0.08

[State 15201, VelAdd]
type = VelAdd
triggerall = vel y > -4
trigger1 = parent, stateno = 1701
y = -0.08

[State 15202, Next]
type = ChangeState
trigger1 = pos Y < -240 && parent, stateno = 1701
value = 15255

[State 15202, Next]
type = ChangeState
trigger1 = pos y >= 0 && time > 0
value = 15255
;---------------------------------------------------------------------------
;Rock Helper Die
[StateDef 15255]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 15255
ctrl = 0
sprpriority = 4

[State 15202, PlaySND]
type = PlaySnd
trigger1 = time= 0
value = 1720,0
volume = 245

[State 15255, DestroySelf]
type = DestroySelf
trigger1 = time = 4
;---------------------------------------------------------------------------
;Pink Whirlwind Angled 1[State 1300]
[StateDef 15500]
type = S
physics = N
movetype = I
velset = 0, 0
anim = 15500
ctrl = 0
sprpriority = 3

[State 15500, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 15500, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 37,-48

[State 15500, Trans]
type = Trans
trigger1 = 1
trans = add

[State 15500, AngleSet]
type = AngleSet
trigger1 = time = 0
value = 90

[State 15500, AngleDraw]
type = AngleDraw
trigger1 = 1

[State 15500, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0 || (parent, stateno != [1300, 1301])
;-------------------------------------------------------------------------------
;Dizzy Stars
[StateDef 15800]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 9999
ctrl = 0
sprpriority = 3

[State 15801, PosSet]
type = PosSet
trigger1 = 1
x = parent, pos x

[State 15801, Pos X]
type = VarSet
trigger1 = !time
v = 4
value = ifelse(facing=1,2,-2)

[State 15801, Pos Y]
type = VarSet
trigger1 = !time
v = 5
value = -60

;Tired Variable from Parent Dizzy State.
[State 15801, VarSet]
type = VarSet
trigger1 = 1
v = 6
value = parent, Var(6)

;Star Start locations
;   B
;A     C
;   D

[State 15800, Star_Helper.A]
type = Helper
trigger1 = !time
name = "StarA"
stateno = 15801
postype = p1
pos = var(4),var(5)
keyctrl = 0
ownpal = 1
id = 15801
ignorehitpause = 1
supermovetime  = 9999
pausemovetime  = 9999
size.xscale = 1
size.yscale = 1

[State 15800, Star_Helper.B]
type = Helper
trigger1 = !time
name = "StarB"
stateno = 15802
postype = p1
pos = var(4),var(5)
keyctrl = 0
ownpal = 1
id = 15802
ignorehitpause = 1
supermovetime  = 9999
pausemovetime  = 9999
size.xscale = 1
size.yscale = 1

[State 15800, Star_Helper.C]
type = Helper
trigger1 = !time
name = "StarC"
stateno = 15803
postype = p1
pos = var(4),var(5)
keyctrl = 0
ownpal = 1
id = 15803
ignorehitpause = 1
supermovetime  = 9999
pausemovetime  = 9999
size.xscale = 1
size.yscale = 1

[State 15800, Star_Helper.D]
type = Helper
trigger1 = !time
name = "StarD"
stateno = 15804
postype = p1
pos = var(4),var(5)
keyctrl = 0
ownpal = 1
id = 15804
ignorehitpause = 1
supermovetime  = 9999
pausemovetime  = 9999
size.xscale = 1
size.yscale = 1

[State 15800, Die State]
type = ChangeState
trigger1 = parent, stateno != 5300
value = 15809
;-------------------------------------------------------------------------------
;Dizzy Star A
[StateDef 15801]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 15800
ctrl = 0
sprpriority = 3

[State 15801, Trans]
type = Trans
trigger1 = 1
trans = add1
persistent = 1
ignorehitpause = 1

[State 15801, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 15801, PosSet]
type = PosSet
trigger1 = 1
x = (parent, pos x)+fvar(11)*20+(parent, var(4))
y = ((parent, pos y)+fvar(12)*20*0.35)+(parent, var(5))

;--------------------------
;Tired Variable from Parent Dizzy State.
[State 15801, VarSet]
type = VarSet
trigger1 = 1
v = 6
value = parent, Var(6)
;--------------------------
;Circling Variables

[State 15801, VarSet]
type = VarSet
trigger1 = 1
fv = 10
value = time*0.05

[State 15801, VarSet]
type = VarSet
trigger1 = 1
fv = 11
value = sin(fvar(10))

[State 15801, VarSet]
type = VarSet
trigger1 = 1
fv = 12
value = -cos(fvar(10))

[State 15801, VarSet]
type = VarSet
trigger1 = 1
fv = 13
value = cos(fvar(10))*0.25

[State 15801, VelSet]
type = VelSet
trigger1 = time
x = fvar(11)
y = fvar(12)*0.35

;-----------------------------
;Scaling(for 3d orbit effect)
[State 15801, AngleSet]
type = AngleSet
trigger1 = !time
value = 0

[State 15801, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 0.75-fvar(13), 0.75-fvar(13)
;-----------------------------
[State 15801, End]
type = ChangeState
trigger1 = var(6) >= 75
trigger2 = parent, stateno != 15800
value = 15805
;-------------------------------------------------------------------------------
;Dizzy Star B
[StateDef 15802]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 15800
ctrl = 0
sprpriority = 3

[State 15802, Trans]
type = Trans
trigger1 = 1
trans = add1
persistent = 1
ignorehitpause = 1

[State 15802, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 15801, PosSet]
type = PosSet
trigger1 = 1
x = (parent, pos x)+fvar(11)*20+(parent, var(4))
y = ((parent, pos y)+fvar(12)*20*0.35)+(parent, var(5))

;--------------------------
;Tired Variable from Parent Dizzy State.
[State 15802, VarSet]
type = VarSet
trigger1 = 1
v = 6
value = parent, Var(6)
;--------------------------
;Circling Variables
[State 15802, VarSet]
type = VarSet
trigger1 = 1
fv = 10
value = (time+30)*0.05

[State 15802, VarSet]
type = VarSet
trigger1 = 1
fv = 11
value = sin(fvar(10))

[State 15802, VarSet]
type = VarSet
trigger1 = 1
fv = 12
value = -cos(fvar(10))

[State 15802, VarSet]
type = VarSet
trigger1 = 1
fv = 13
value = cos(fvar(10))*0.25

[State 15802, VelSet]
type = VelSet
trigger1 = time
x = fvar(11)
y = fvar(12)*0.35

;-----------------------------
;Scaling(for 3d orbit effect)
[State 15802, AngleSet]
type = AngleSet
trigger1 = !time
value = 0

[State 15802, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 0.75-fvar(13), 0.75-fvar(13)
;-----------------------------
[State 15802, End]
type = ChangeState
trigger1 = var(6) >= 225
trigger2 = parent, stateno != 15800
value = 15805
;-------------------------------------------------------------------------------
;Dizzy Star C
[StateDef 15803]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 15800
ctrl = 0
sprpriority = 3

[State 15803, Trans]
type = Trans
trigger1 = 1
trans = add1
persistent = 1
ignorehitpause = 1

[State 15803, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 15801, PosSet]
type = PosSet
trigger1 = 1
x = (parent, pos x)+fvar(11)*20+(parent, var(4))
y = ((parent, pos y)+fvar(12)*20*0.35)+(parent, var(5))

;--------------------------
;Tired Variable from Parent Dizzy State.
[State 15803, VarSet]
type = VarSet
trigger1 = 1
v = 6
value = parent, Var(6)
;--------------------------
;Circling Variables

[State 15803, VarSet]
type = VarSet
trigger1 = 1
fv = 10
value = (time+60)*0.05

[State 15803, VarSet]
type = VarSet
trigger1 = 1
fv = 11
value = sin(fvar(10))

[State 15803, VarSet]
type = VarSet
trigger1 = 1
fv = 12
value = -cos(fvar(10))

[State 15803, VarSet]
type = VarSet
trigger1 = 1
fv = 13
value = cos(fvar(10))*0.25

[State 15803, VelSet]
type = VelSet
trigger1 = time
x = fvar(11)
y = fvar(12)*0.35

;-----------------------------
;Scaling(for 3d orbit effect)
[State 15803, AngleSet]
type = AngleSet
trigger1 = !time
value = 0

[State 15803, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 0.75-fvar(13), 0.75-fvar(13)
;-----------------------------
[State 15803, End]
type = ChangeState
trigger1 = var(6) >= 150
trigger2 = parent, stateno != 15800
value = 15805
;-------------------------------------------------------------------------------
;Dizzy Star D
[StateDef 15804]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 15800
ctrl = 0
sprpriority = 3

[State 15804, Trans]
type = Trans
trigger1 = 1
trans = add1
persistent = 1
ignorehitpause = 1

[State 15804, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 15804, PosSet]
type = PosSet
trigger1 = 1
x = (parent, pos x)+fvar(11)*20+(parent, var(4))
y = ((parent, pos y)+fvar(12)*20*0.35)+(parent, var(5))

;--------------------------
;Tired Variable from Parent Dizzy State.
[State 15804, VarSet]
type = VarSet
trigger1 = 1
v = 6
value = parent, Var(6)
;--------------------------
;Circling Variables

[State 15804, VarSet]
type = VarSet
trigger1 = 1
fv = 10
value = (time+90)*0.05

[State 15804, VarSet]
type = VarSet
trigger1 = 1
fv = 11
value = sin(fvar(10))

[State 15804, VarSet]
type = VarSet
trigger1 = 1
fv = 12
value = -cos(fvar(10))

[State 15803, VarSet]
type = VarSet
trigger1 = 1
fv = 13
value = cos(fvar(10))*0.25

[State 15804, VelSet]
type = VelSet
trigger1 = time
x = fvar(11)
y = fvar(12)*0.35

;-----------------------------
;Scaling(for 3d orbit effect)
[State 15804, AngleSet]
type = AngleSet
trigger1 = !time
value = 0

[State 15804, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 0.75-fvar(13), 0.75-fvar(13)
;-----------------------------
[State 15804, End]
type = ChangeState
trigger1 = var(6) >= 300
trigger2 = parent, stateno != 15800
value = 15805
;-------------------------------------------------------------------------------
;Dizzy Star Remove/Pop Off/Bounce
[StateDef 15805]
type = A
physics = N
movetype = I
anim = 15800
ctrl = 0
sprpriority = 3

[State 15805, Trans]
type = Trans
trigger1 = 1
trans = add1
persistent = 1
ignorehitpause = 1

[State 15805, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

;Scaling(for 3d orbit effect)
[State 15805, AngleSet]
type = AngleSet
trigger1 = !time
value = 0

[State 15805, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 0.75-fvar(13), 0.75-fvar(13)

[State 15805, VelSet]
type = VelSet
trigger1 = !time
y = -4

[State 15805, VelAdd]
type = VelAdd
trigger1 = time
y = 0.3

[State 15805, PosSet-Ground]
type = PosSet
trigger1 = pos y > 0
y = 0

[State 15805, VelSet]
type = VelSet
trigger1 = pos y = 0
y = -(vel y) * 0.5

[State 15805, End]
type = ChangeState
trigger1 = time >= 80 && random < 75
trigger2 = time = 100
value = 15806

;-------------------------------------------------------------------------------
;Dizzy Star Burst/Explode/Pop
[StateDef 15806]
type = A
physics = N
movetype = I
velset = 0,0
anim = 9999
ctrl = 0
sprpriority = 3

[State 15806, PlaySND]
type = PlaySnd
trigger1 = !time
value = 1003,0

[State 15806, FVarset]
type = VarAdd
trigger1 = 1
fv = 1
value = 0.005

[State 15806, Flash! AhhAHHHH!]
type = Explod
trigger1 = (!time)
Anim = 13105
Pos = 0,0
Id = 13105
velocity = 0,0
sprpriority = 5
removeongethit = 0
;removetime = 9
bindtime = 1
Postype = p1
supermovetime  = 9999
pausemovetime  = 9999
persistent = 0
ownpal = 1
scale = 0.01, 0.01

[State 15806, ModifyExplod]
type = ModifyExplod
trigger1 = (time)
id = 13105
supermovetime = 9999
pausemovetime = 9999
scale = 0.1+fvar(1),0.1+fvar(1)

[State 15806, RandomVariable-1]
type = VarRandom
trigger1 = 1
v = 14
range = -8,8

[State 15806, RandomVariable-2]
type = VarRandom
trigger1 = 1
v = 15
range = -8,8

[State 15806, Sparkle-1]
type = Explod
triggerall = time < 12
trigger1 = Timemod = 2,0
anim = 11555
id = 11550
postype = p1
pos = 0, 0
ownpal = 1
velocity = Var(14)*0.25*((0.5-fvar(13))*0.75), var(15)*0.25*((0.5-fvar(13))*0.75)
scale = (0.5-fvar(13))*0.5, (0.5-fvar(13))*0.5
sprpriority = 3

[State 15806, Sparkle-2]
type = Explod
triggerall = time < 12
trigger1 = Timemod = 2,1
anim = 11555
id = 11555
postype = p1
pos = 0, 0
ownpal = 1
velocity = Var(14)*0.4*((0.5-fvar(13))*0.75), var(15)*0.4*((0.5-fvar(13))*0.75)
scale = (0.5-fvar(13))*0.5, (0.5-fvar(13))*0.5
sprpriority = 3

[State 15806, End]
type = DestroySelf
trigger1 = time = 15
;-------------------------------------------------------------------------------
;Dizzy Stars End State(Used to Kill Remaining stars)
[StateDef 15809]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 9999
ctrl = 0
sprpriority = 3

[State 15804, End]
type = DestroySelf
trigger1 = time = 1
;---------------------------------------------------------------------------
;Hearts
[StateDef 16000]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 9999
ctrl = 0
sprpriority = 3

[State 1600, VarSet]
type = VarRandom
trigger1 = time
v = 17
range = -30, 30

[State 1600, VarSet]
type = VarRandom
trigger1 = time
v = 18
range = -35, 25

[State 16000, Hearts]
type = Explod
trigger1 = timemod = 9, 0
Anim = 16001
Pos = var(17), var(18)
Id = 16000
sprpriority = 5
removeongethit = 1
;removetime = 1
Postype = p1
Bindtime = -1
SuperMove = 1
ownpal = 1
scale = 0.5, 0.5

[State 16000, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 16000, End]
type = DestroySelf
trigger1 = time = 100
;-------------------------------------------------------------------------------
;Teleport Trail
[StateDef 17900]
type = S
physics = N
movetype = I
velset = 0, 0
anim = 17901
ctrl = 0
sprpriority = 3

[State 17900, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 17900, End.X]
type = VarSet
trigger1 = time=0
fv = 3
value = parent, p2bodydist x

[State 17900, End.Y]
type = VarSet
trigger1 = time=0
fv = 4
value = parent, p2bodydist y

[State 17900, VelSet]
type = VelSet
trigger1 = time>=2
x = fvar(3)*0.1
y = fvar(4)*0.1

[State 17900, AfterImage]
type = AfterImage
trigger1 = time = 4
time = 10
length = 10
palinvertall = 0
palbright = 0,0,0
palcontrast = 90,30,100
paladd = 15,0,40
timegap = 1
framegap = 1
trans = Add

[State 17900, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 17900, PalFX]
type = PalFX
trigger1 = 1
time=1
add = -128-time*10,-128-time*10,0-time*10
persistent = 1
ignorehitpause = 1

[State 17900, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 17900, End]
type = DestroySelf
trigger1 = time = 12
;-------------------------------------------------------------------------------
;Teleport Trail 2
[StateDef 17901]
type = S
physics = N
movetype = I
velset = 0, 0
anim = 17901
ctrl = 0
sprpriority = 1

[State 17900, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 17901, End.X]
type = VarSet
trigger1 = !time
v = 3
value = parent, var(23)

[State 17901, VelSet]
type = VelSet
trigger1 = time>=2
x = var(3)*0.08
y = 0

[State 17901, AfterImage]
type = AfterImage
trigger1 = time = 4
time = 10
length = 10
palinvertall = 0
palbright = 0,0,0
palcontrast = 130,20,80
paladd = 35,0,15
timegap = 1
framegap = 1
trans = Add

[State 17901, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 17901, PalFX]
type = PalFX
trigger1 = 1
time=1
add = -128-time*10,-128-time*10,0-time*10
persistent = 1
ignorehitpause = 1

[State 17901, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 17901, End]
type = DestroySelf
trigger1 = time = 10
;---------------------------------------------------------------------------
;Super Portrait
[Statedef 19000]
physics  = N
anim     = 9999
sprpriority = 0

[State 19000, VarSet]
type = VarSet
trigger1 = time = 0
persistent = 0
ignorehitpause = 1
fv = 1
value = 0

[State 19000, VarAdd]
type = VarAdd
trigger1 = time >= 30
persistent = 1
ignorehitpause = 1
fv = 1
value = 0.02

[State 19000, AssertSpecial]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 19000, Picture]
type = Explod
trigger1 = time = 0
anim = 19000
id = 19000
pos = -30,120
postype = back
ownpal = 0
sprpriority = 0
supermovetime = 9999
pausemovetime = 9999
persistent = 1
ignorehitpause = 1
scale = 0.48,0.48

[State 19000, ModExplod]
type = ModifyExplod
trigger1 = time >= 30
id = 19000
supermovetime = 9999
pausemovetime = 9999
scale = 0.48+fvar(1),0.48+fvar(1)

[State 19000, RemoveExplod]
type = RemoveExplod
trigger1 = time = 60
id = 19000

[State 19000, DestroySelf]
type = DestroySelf
trigger1 = time = 60
;---------------------------------------------------------------------------
;Super Portrait2
[Statedef 19002]
physics  = N
anim     = 9999
sprpriority = 0

[State 19002, VarSet]
type = VarSet
trigger1 = time = 0
persistent = 0
ignorehitpause = 1
fv = 1
value = 0

[State 19002, VarAdd]
type = VarAdd
trigger1 = time >= 30
persistent = 1
ignorehitpause = 1
fv = 1
value = 0.02

[State 19002, AssertSpecial]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 19002, Picture]
type = Explod
trigger1 = time = 0
anim = 19002
id = 19002
pos = -30,120
postype = back
ownpal = 0
sprpriority = 0
supermovetime = 9999
pausemovetime = 9999
persistent = 1
ignorehitpause = 1
scale = 0.48,0.48

[State 19002, ModExplod]
type = ModifyExplod
trigger1 = time >= 30
id = 19002
supermovetime = 9999
pausemovetime = 9999
scale = 0.48+fvar(1),0.48+fvar(1)

[State 19002, RemoveExplod]
type = RemoveExplod
trigger1 = time = 60
id = 19002

[State 19002, DestroySelf]
type = DestroySelf
trigger1 = time = 60
;---------------------------------------------------------------------------
;WinKO Effect by FlowaGirl! FlowaGirl receives all the credit for this code.

[Statedef 9998]
type = S
movetype = I
physics = N
anim = 9999

[State 9998: Pause]
type = Pause
trigger1 = !Time
time = 12
movetime = 12

[State 9998: EnvColor]
type = EnvColor
trigger1 = Time < 12
value = Time*4, Time*4, Time*4
time = 1
under = 1

[State 9998: EnvShake]
type = EnvShake
trigger1 = !Time
time = 12
freq = 120
ampl = -3
phase = 90

[State 9998: AllPalFX]
type = AllPalFX
trigger1 = Time < 50
time = 1
add = 0,0,0
mul = 256,256,256
sinadd = 0,0,0,1
invertall = 0
color = Time*5