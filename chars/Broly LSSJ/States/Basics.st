;===========================================================================
;-| Basic |-----------------------------------------------------------------

;---------------------------------------------------------------------------
;Stand Weak Punch
[Statedef 200]
type= S
movetype=A
physics=S
anim=200
velset=0,0
ctrl=0
poweradd=20
juggle=1
facep2=1
sprpriority=1

[State 200,HitDef]
type=HitDef
trigger1=(AnimElem = 3)
attr=S, NA
hitflag=MA
guardflag=M
animtype=Light
air.animtype=Back
priority=5, Hit
damage =25
pausetime=12,12
guard.pausetime=10,10
sparkno=S8000+random%8
guard.sparkno= S7100
sparkxy=-10,-110
hitsound=S2,0
guardsound=S2,7
ground.type=High
air.type=Low
ground.slidetime= 10
ground.hittime= 12
air.hittime=9
yaccel=0.45
ground.velocity= -4.5
guard.velocity= -4.5
air.velocity= -4.5,-4.7
airguard.velocity= -4.5,-4.7
ground.cornerpush.veloff = -4.5
air.cornerpush.veloff = -6
id=200
getpower=20
givepower=30
envshake.time=12
envshake.ampl=3

[State 200,ChangeState]
type=ChangeState
trigger1=(!AnimTime)
value=0
ctrl=1
;---------------------------------------------------------------------------
;Stand Medium Punch
[Statedef 210]
type= S
movetype=A
physics=S
anim=210
velset=0,0
ctrl=0
poweradd=25
juggle=1
facep2=1
sprpriority=1

[State 0, VelSet]
type = VelSet
trigger1 =animelem=2
x = 4
[State 0, VelMul]
type = VelMul
trigger1 =animelem=3
x = .6
[State 0, VelSet]
type = VelSet
trigger1 =animelem=4||movecontact
x = 0
ignorehitpause=1
[State 215,HitDef]
type=HitDef
trigger1=(AnimElem = 3)
attr=S, NA
hitflag=MA
guardflag=H
animtype=Medium
air.animtype= Back
priority=5, Hit
damage =52
pausetime=15,15
guard.pausetime= 12,12
sparkno=S8000+random%8
guard.sparkno= S7100
sparkxy=-10,-90
hitsound=S2,1
guardsound=S2,7
ground.type=Low
air.type=Low
ground.slidetime= 15
ground.hittime= 15
air.hittime=15
yaccel=0.45
ground.velocity= -8
guard.velocity= -8
air.velocity= -6,-4.7
airguard.velocity= -6,-4.7
ground.cornerpush.veloff = -10
id=215
getpower=26
givepower=26
envshake.time=15
envshake.ampl=4

[State 215,ChangeState]
type=ChangeState
trigger1=(!AnimTime)
value=0
ctrl=1

;---------------------------------------------------------------------------
;Stand Strong Punch
[Statedef 220]
type= S
movetype=A
physics=S
anim=220
velset=0,0
ctrl=0
poweradd=30
juggle=1
facep2=1
sprpriority=1

[State 0, VelSet]
type = VelSet
trigger1 =animelem=2
x = 6
[State 0, VelMul]
type = VelMul
trigger1 =animelem=3
x = .75
[State 0, VelSet]
type = VelSet
trigger1 =animelem=4||movecontact
x = 0
ignorehitpause=1

[State 220,HitDef]
type=HitDef
trigger1=(AnimElem = 3)
attr=S, NA
hitflag=MA
guardflag=M
animtype=Hard
air.animtype= Back
priority=5, Hit
damage =72
pausetime=18,18
guard.pausetime= 14,14
sparkno=S8000+random%8
guard.sparkno= S7100
sparkxy=-10,-110
hitsound=S2,2
guardsound=S2,7
ground.type=High
air.type=Low
ground.slidetime= 16
ground.hittime= 16
air.hittime=18
yaccel=0.45
ground.velocity= -12
guard.velocity= -12
air.velocity= -7.5,-4.7
airguard.velocity= -7.5,-4.7
ground.cornerpush.veloff = -14
id=220
getpower=39
givepower=39
envshake.time=16
envshake.freq=120
envshake.ampl=6

[State 220,ChangeState]
type=ChangeState
trigger1=(!AnimTime)
value=0
ctrl=1
;---------------------------------------------------------------------------
;Launcher Strong Punch
[Statedef 225]
type= S
movetype=A
physics=S
anim=225
velset=0,0
ctrl=0
poweradd=30
juggle=1
facep2=1
sprpriority=1

[State 0, VelSet]
type = VelSet
trigger1 =animelem=2
x = 6
[State 0, VelMul]
type = VelMul
trigger1 =animelem=3
x = .75
[State 0, VelSet]
type = VelSet
trigger1 =animelem=4||movecontact
x = 0
ignorehitpause=1

[State 225, Launcher]
type = HitDef
trigger1 = time = 0
attr = S, NA
damage  = 25
pausetime=16,16
guard.pausetime=12,12
animtype = up
air.animtype = up
fall.animtype = Medium
hitflag = MAF
guardflag = MA
sparkno=S2220
guard.sparkno= S7100
sparkxy=-10,-110
hitsound=S2,2
guardsound=S2,7
ground.type = high
air.type = High
ground.slidetime = 20
ground.hittime = 30
air.hittime = 40
guard.ctrltime = 20
recovertime=10
ground.velocity = -1,-13
guard.velocity = -6
air.velocity = -1,-11
airguard.velocity = -6
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = -6
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
persistent = 0
fall = 0
air.fall = 0
fall.recover = 1
air.recover = 1
yaccel = .4
envshake.time = 18
envshake.ampl = 6
fall.envshake.time = 32
fall.envshake.ampl = 8
facing=p1

[State 225, jump combo]
type = Changestate
trigger1 = movehit ; when you hit the opponent
trigger1 = command = "holdup"
value = 123; the superjump state
ctrl = 1 ; these menas that you re-gain control

[State 225,ChangeState]
type=ChangeState
trigger1=(!AnimTime)
value=0
ctrl=1
;---------------------------------------------------------------------------
;Stand Weak Kick
[Statedef 230]
type= S
movetype=A
physics=S
anim=230
velset=0,0
ctrl=0
poweradd=20
juggle=1
facep2=1
sprpriority=1

[State 230,HitDef]
type=HitDef
trigger1=(AnimElem = 2)
attr=S, NA
hitflag=MA
guardflag=M
animtype=Light
air.animtype= Back
priority=5, Hit
damage =28
pausetime=12,12
guard.pausetime= 10,10
sparkno=S8000+random%8
guard.sparkno= S7100
sparkxy=-10,-22
hitsound=S2,3
guardsound=S2,7
ground.type=Low
air.type=Low
ground.slidetime= 10
ground.hittime= 10
air.hittime=10
yaccel=0.45
ground.velocity= -4.5
guard.velocity= -4.5
air.velocity= -4.5,-4.7
airguard.velocity= -4.5,-4.7
ground.cornerpush.veloff = -6.5
id=230
getpower=13
givepower=13
envshake.time=12
envshake.ampl=3

[State 230,ChangeState]
type=ChangeState
trigger1=(!AnimTime)
value=0
ctrl=1
;---------------------------------------------------------------------------
;Stand Medium Kick
[Statedef 240]
type= S
movetype=A
physics=S
anim=240
velset=0,0
ctrl=0
poweradd=25
juggle=1
facep2=1
sprpriority=1

[State 0, VelSet]
type = VelSet
trigger1 =animelem=1
x = 4
[State 0, VelMul]
type = VelMul
trigger1 =animelem=2
x = .75
[State 0, VelSet]
type = VelSet
trigger1 =animelem=3||movecontact
x = 0
ignorehitpause=1

[State 240,HitDef]
type=HitDef
trigger1=(AnimElem = 2)
attr=S, NA
hitflag=MA
guardflag=M
animtype=Medium
air.animtype= Back
priority=5, Hit
damage =50
pausetime=15,15
guard.pausetime= 12,12
sparkno=S8000+random%8
guard.sparkno= S7100
sparkxy=-10,-77
hitsound=S2,4
guardsound=S2,7
ground.type=Low
air.type=Low
ground.slidetime= 15
ground.hittime= 15
air.hittime=15
yaccel=0.45
ground.velocity= -7.5
guard.velocity= -7.5
air.velocity= -6,-4.7
airguard.velocity= -6,-4.7
ground.cornerpush.veloff = -12.5
id=240
getpower=26
givepower=26
envshake.time=15
envshake.ampl=4

[State 240,ChangeState]
type=ChangeState
trigger1=(!AnimTime)
value=0
ctrl=1

;---------------------------------------------------------------------------
;Stand Strong Kick
[Statedef 250]
type= S
movetype=A
physics=S
anim=250
velset=0,0
ctrl=0
poweradd=30
juggle=1
facep2=1
sprpriority=1

[State 0, VelSet]
type = VelSet
trigger1 =animelem=1
x = 6
[State 0, VelMul]
type = VelMul
trigger1 =animelem=2
x = .5
[State 0, VelSet]
type = VelSet
trigger1 =animelem=3||movecontact
x = 0
ignorehitpause=1

[State 250,HitDef]
type=HitDef
trigger1=(AnimElem = 2)
attr=S, NA
hitflag=MA
guardflag=M
animtype=Hard
air.animtype= Back
priority=5, Hit
damage =70
pausetime=18,18
guard.pausetime= 14,14
sparkno=S8000+random%8
guard.sparkno= S7100
sparkxy=-10,-110
hitsound=S2,5
guardsound=S2,7
ground.type=High
air.type=Low
ground.slidetime= 18
ground.hittime= 18
air.hittime=18
yaccel=0.45
ground.velocity= -12
guard.velocity= -12
air.velocity= -6,-5.7
airguard.velocity= -6,-5.7
ground.cornerpush.veloff = -14
id=250
getpower=30
givepower=30
envshake.time=18
envshake.ampl=5

[State 250,ChangeState]
type=ChangeState
trigger1=(!AnimTime)
value=0
ctrl=1
;---------------------------------------------------------------------------
;Crouch Weak Punch
[Statedef 400]
type= C
movetype=A
physics=C
anim=400
velset=0,0
ctrl=0
poweradd=20
juggle=1
facep2=1
sprpriority=1

[State 400,HitDef]
type=HitDef
trigger1=(AnimElem = 2)
attr=C, NA
hitflag=MAF
guardflag=L
animtype=Light
air.animtype= Back
priority=5, Hit
damage =28
pausetime=12,12
guard.pausetime= 10,10
sparkno=S8000+random%8
guard.sparkno= S7100
sparkxy=-10,-55
hitsound=S2,0
guardsound=S2,7
ground.type=Low
air.type=Low
ground.slidetime= 12
ground.hittime= 12
air.hittime=12
yaccel=0.45
ground.velocity= -4.7
guard.velocity= -4.7
air.velocity= -4.5,-4.7
airguard.velocity= -4.5,-4.7
ground.cornerpush.veloff = -4.7
id=400
getpower=13
givepower=13
envshake.time=12
envshake.ampl=3

[State 400,ChangeState]
type=ChangeState
trigger1=(!AnimTime)
value=11
;---------------------------------------------------------------------------
;Crouch Medium Punch
[Statedef 410]
type= C
movetype=A
physics=C
anim=410
velset=0,0
ctrl=0
poweradd=25
juggle=1
facep2=1
sprpriority=1

[State 410,HitDef]
type=HitDef
trigger1=(AnimElem = 2)
attr=C, NA
hitflag=MAF
guardflag=L
animtype=Medium
air.animtype= Back
priority=5, Hit
damage =45
pausetime=15,15
guard.pausetime= 12,12
sparkno=S8000+random%8
guard.sparkno= S7100
sparkxy=-10,-60
hitsound=S2,1
guardsound=S2,7
ground.type=Low
air.type=Low
ground.slidetime= 15
ground.hittime=15
air.hittime=15
yaccel=0.45
ground.velocity= -8.2
guard.velocity= -8.2
air.velocity= -6,-4.7
airguard.velocity= -6,-4.7
ground.cornerpush.veloff = -8.2
id=410
getpower=26
givepower=26
envshake.time=15
envshake.ampl=4

[State 410,ChangeState]
type=ChangeState
trigger1=(!AnimTime)
value=11
;---------------------------------------------------------------------------
;Crouch Strong Punch
[Statedef 420]
type= C
movetype=A
physics=C
anim=420
velset=0,0
ctrl=0
poweradd=30
juggle=1
facep2=1
sprpriority=1

[State 420,HitDef]
type=HitDef
trigger1=(AnimElem = 3)
attr=S, NA
hitflag=MAF
guardflag=L
animtype=Hard
air.animtype= Back
priority=5, Hit
damage =65
pausetime=18,18
guard.pausetime= 14,14
sparkno=S8000+random%8
guard.sparkno= S7100
sparkxy=-10,-70
hitsound=S2,2
guardsound=S2,7
ground.type=Low
air.type=Low
ground.slidetime= 18
ground.hittime= 18
air.hittime=18
yaccel=0.45
ground.velocity= -12
guard.velocity= -12
air.velocity= -1.3,-8
airguard.velocity= -1.3,-8
ground.cornerpush.veloff = -12
id=420
getpower=39
givepower=39
envshake.time=18
envshake.ampl=5

[State 420,ChangeState]
type=ChangeState
trigger1=(!AnimTime)
value=11
;---------------------------------------------------------------------------
;Crouch Launcher Punch
[Statedef 425]
type= C
movetype=A
physics=C
anim=425
velset=0,0
ctrl=0
poweradd=30
juggle=1
facep2=1
sprpriority=1

[State 0, VelSet]
type = VelSet
trigger1 =animelem=3
x = 6
[State 0, VelMul]
type = VelMul
trigger1 =animelem=4
x = .75
[State 0, VelSet]
type = VelSet
trigger1 =animelem=5||movecontact
x = 0
ignorehitpause=1

[State 425, Launcher]
type = HitDef
trigger1 = animelem=4
attr = S, NA
damage  = 25
pausetime=16,16
guard.pausetime=12,12
animtype = up
air.animtype = up
fall.animtype = Medium
hitflag = MAF
guardflag = MA
sparkno=S2220
guard.sparkno= S7100
sparkxy=-10,-110
hitsound=S2,2
guardsound=S2,7
ground.type = high
air.type = High
ground.slidetime = 20
ground.hittime = 30
air.hittime = 40
guard.ctrltime = 20
recovertime=10
ground.velocity = -1,-13
guard.velocity = -6
air.velocity = -1,-11
airguard.velocity = -6
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = -6
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
persistent = 0
fall = 0
air.fall = 0
fall.recover = 1
air.recover = 1
yaccel = .4
envshake.time = 18
envshake.ampl = 6
fall.envshake.time = 32
fall.envshake.ampl = 8
facing=p1

[State 225, jump combo]
type = Changestate
trigger1 = movehit ; when you hit the opponent
trigger1 = command = "holdup"
value = 123; the superjump state
ctrl = 1 ; these menas that you re-gain control


[State 425,ChangeState]
type=ChangeState
trigger1=(!AnimTime)
value=11
;---------------------------------------------------------------------------
;Crouch Weak Kick
[Statedef 430]
type= C
movetype=A
physics=C
anim=430
velset=0,0
ctrl=0
poweradd=20
juggle=1
facep2=1
sprpriority=1

[State 430,HitDef]
type=HitDef
trigger1=(AnimElem = 2)
attr=C, NA
hitflag=MA
guardflag=L
animtype=Light
air.animtype= Back
priority=5, Hit
damage =28
pausetime=12,12
guard.pausetime= 10,10
sparkno=S8000+random%8
guard.sparkno= S7100
sparkxy=-10,-5
hitsound=S2,3
guardsound=S2,7
ground.type=Low
air.type=Low
ground.slidetime=12
ground.hittime=12
air.hittime=12
yaccel=0.45
ground.velocity= -4.7
guard.velocity= -4.7
air.velocity= -4.5,-4.7
airguard.velocity= -4.5,-4.7
ground.cornerpush.veloff = -4.7
id=430
getpower=13
givepower=13
envshake.time=12
envshake.ampl=3

[State 430,ChangeState]
type=ChangeState
trigger1=(!AnimTime)
value=11

;---------------------------------------------------------------------------
;Crouch Medium Kick
[Statedef 440]
type= C
movetype=A
physics=C
anim=440
velset=0,0
ctrl=0
poweradd=25
juggle=1
facep2=1
sprpriority=1

[State 440,HitDef]
type=HitDef
trigger1=(AnimElem = 2)
attr=C, NA
hitflag=MA
guardflag=L
animtype=Medium
air.animtype= Back
priority=5, Hit
damage =50
pausetime=15,15
guard.pausetime= 12,12
sparkno=S8000+random%8
guard.sparkno= S7100
sparkxy=-10,-40
hitsound=S2,4
guardsound=S2,7
ground.type=Low
air.type=Low
ground.slidetime= 15
ground.hittime= 15
air.hittime=15
yaccel=0.45
ground.velocity= -8.2
guard.velocity= -8.2
air.velocity= -6,-4.7
airguard.velocity= -6,-4.7
ground.cornerpush.veloff = -8.7
id=440
getpower=26
givepower=26
envshake.time=15
envshake.ampl=4

[State 440,ChangeState]
type=ChangeState
trigger1=(!AnimTime)
value=11

;---------------------------------------------------------------------------
;Crouch Strong Kick
[Statedef 450]
type= C
movetype=A
physics=C
anim=450
velset=0,0
ctrl=0
poweradd=30
juggle=1
facep2=1
sprpriority=1

[State 0, VelSet]
type = VelSet
trigger1=!time
x = 8
[State 0, VelMul]
type = VelMul
trigger1=animelem=1,=8
x = .75
[State 0, VelSet]
type = VelSet
trigger1=animelem=2||movecontact
x = 0
ignorehitpause=1

[State 450,HitDef]
type=HitDef
trigger1=(AnimElem = 2) && (!MoveContact)
attr=C, NA
hitflag=MAF
guardflag=L
animtype=Hard
air.animtype= Back
priority=5, Hit
damage =75
pausetime=18,18
guard.pausetime= 14,14
sparkno=S8000+random%8
guard.sparkno= S7100
sparkxy=-10,-10
hitsound=S2,5
guardsound=S2,7
ground.type=Trip
air.type=Trip
ground.slidetime= 15
ground.hittime= 15
air.hittime=15
yaccel=0.45
ground.velocity= -1.5,-3
guard.velocity= -1.5
air.velocity= -1.5,-3
airguard.velocity= -1.5,-3
ground.cornerpush.veloff = -1.5
fall=1
fall.recover= 0
id=450
getpower=39
givepower=39
envshake.time=18
envshake.ampl=5
fall.envshake.time=12
fall.envshake.ampl=6
persistent=0

[State 450,ChangeState]
type=ChangeState
trigger1=(!AnimTime)
value=11
;---------------------------------------------------------------------------
;Jump Weak Punch
[Statedef 600]
type = A
movetype = A
physics = A
juggle = 1
anim = 600
poweradd =20
sprpriority = 1
ctrl = 0

[State 600,HitDef]
type=HitDef
trigger1=(AnimElem = 2)
attr=A,NA
hitflag=MAF
guardflag=HA
animtype=Light
air.animtype=Back
priority=5, Hit
damage =30
pausetime=15,15
sparkno=S8000+random%8
guard.sparkno= S7100
sparkxy=-10,-90
hitsound=S2,0
guardsound=S2,7
ground.type=High
air.type=Low
ground.slidetime=15
ground.hittime=15
air.hittime=15
ground.velocity= -3
guard.velocity= -3
air.velocity= -1,-7
airguard.velocity= -4.5,-1
ground.cornerpush.veloff = -4.5
getpower=20
givepower=25
envshake.time=15
envshake.ampl=3
;---------------------------------------------------------------------------
;Jump Medium Punch
[Statedef 610]
type = A
movetype = A
physics = A
juggle = 1
anim = 610
poweradd = 25
sprpriority = 1
ctrl = 0

[State 610,HitDef]
type=HitDef
trigger1=(AnimElem = 2)
attr=A,NA
hitflag=MAF
guardflag=HA
animtype=Light
air.animtype=Back
priority=5, Hit
damage =50
pausetime=15,15
sparkno=S8000+random%8
guard.sparkno= S7100
sparkxy=-10,-90
hitsound=S2,1
guardsound=S2,7
ground.type=High
air.type=Low
ground.slidetime=18
ground.hittime=18
air.hittime=18
ground.velocity= -5
guard.velocity= -5
air.velocity= -1,-7
airguard.velocity= -4.5,-1
ground.cornerpush.veloff = -4.5
getpower=20
givepower=25
envshake.time=15
envshake.ampl=4
;---------------------------------------------------------------------------
;Jump Strong Punch
[Statedef 620]
type = A
movetype = A
physics = A
juggle = 1
anim = 620
poweradd = 30
sprpriority = 1
ctrl = 0

[State 620,HitDef]
type=HitDef
trigger1=(AnimElem = 2)
attr=A,NA
hitflag=MAF
guardflag=HA
animtype=Light
air.animtype= Back
priority=5, Hit
damage =65
pausetime=18,18
sparkno=S8000+random%8
guard.sparkno= S7100
sparkxy=-10,-90
hitsound=S2,2
guardsound=S2,7
ground.type=High
air.type=Low
ground.slidetime=18
ground.hittime=18
air.hittime=18
ground.velocity= -8
guard.velocity= -8
air.velocity= -12,12
airguard.velocity= -4.5,-1
ground.cornerpush.veloff = -4.5
getpower=20
givepower=25
air.fall=1
fall.recover=0
air.recover=0
envshake.time=18
envshake.ampl=4
fall.envshake.time=15
fall.envshake.ampl=5
;---------------------------------------------------------------------------
;Jump Weak Kick
[Statedef 630]
type = A
movetype = A
physics = A
juggle = 1
anim = 630
poweradd = 20
sprpriority = 1
ctrl = 0

[State 630,HitDef]
type=HitDef
trigger1=(AnimElem = 2)
attr=A,NA
hitflag=MAF
guardflag=HA
animtype=Light
air.animtype=Back
priority=5, Hit
damage =30
pausetime=15,15
sparkno=S8000+random%8
guard.sparkno= S7100
sparkxy=-10,-35
hitsound=S2,3
guardsound=S2,7
ground.type=High
air.type=Low
ground.slidetime=15
ground.hittime=15
air.hittime=15
ground.velocity= -3
guard.velocity= -3
air.velocity= -1,-7
airguard.velocity= -4.5,-1
ground.cornerpush.veloff = -4.5
getpower=20
givepower=25
envshake.time=15
envshake.ampl=3
;---------------------------------------------------------------------------
;Jump Medium Kick
[Statedef 640]
type = A
movetype = A
physics = A
juggle = 1
anim = 640
poweradd = 25
sprpriority = 1
ctrl = 0

[State 640,HitDef]
type=HitDef
trigger1=(AnimElem = 2)
attr=A,NA
hitflag=MAF
guardflag=HA
animtype=Light
air.animtype=Back
priority=5, Hit
damage =50
pausetime=15,15
sparkno=S8000+random%8
guard.sparkno= S7100
sparkxy=-10,-60
hitsound=S2,4
guardsound=S2,7
ground.type=High
air.type=Low
ground.slidetime=18
ground.hittime=18
air.hittime=18
ground.velocity= -5
guard.velocity= -5
air.velocity= -1,-7
airguard.velocity= -4.5,-1
ground.cornerpush.veloff = -4.5
getpower=20
givepower=25
envshake.time=15
envshake.ampl=4
;---------------------------------------------------------------------------
;Jump Strong Kick
[Statedef 650]
type = A
movetype = A
physics = A
juggle = 1
anim = 650
poweradd = 30
sprpriority = 1
ctrl = 0

[State 650,HitDef]
type=HitDef
trigger1=(AnimElem = 2)
attr=A,NA
hitflag=MAF
guardflag=HA
animtype=Light
air.animtype= Back
priority=5, Hit
damage =70
pausetime=18,18
sparkno=S8000+random%8
guard.sparkno= S7100
sparkxy=-10,-40
hitsound=S2,5
guardsound=S2,7
ground.type=High
air.type=Low
ground.slidetime=18
ground.hittime=18
air.hittime=18
ground.velocity= -8
guard.velocity= -8
air.velocity= -15,15
airguard.velocity= -4.5,-1
ground.cornerpush.veloff = -4.5
getpower=20
givepower=25
air.fall=1
fall.recover=0
air.recover=0
envshake.time=18
envshake.ampl=4
fall.envshake.time=15
fall.envshake.ampl=5


;---------------------------------------------------------------------------
;Throw: Attempt
[Statedef 800]
type= S
movetype=A
physics=S
anim=800
velset=0,0
ctrl=0
juggle=15
facep2=1
sprpriority=1

[State 800,HitDef]
type=HitDef
trigger1=(AnimElem = 2)
attr=S, NT
hitflag=MAF
priority=1, Miss
sparkno=-1
hitsound=S1,25
guard.dist=0
snap=38,-50
p1facing = ifelse (command = "holdfwd", -1, 1)
p2facing = 1
p1stateno=801
p2stateno=802
forcestand=1
fall=1
id=800
getpower=0
givepower=0

[State 800,ChangeState]
type=ChangeState
trigger1=(!AnimTime)
value=0
ctrl=1

;---------------------------------------------------------------------------
;Throw: Success
[Statedef 801]
type= S
movetype=A
physics=S
anim=801
velset=0,0
ctrl=0
poweradd=40
sprpriority=-2

[State 801,Turn]
type=Turn
trigger1=(!AnimTime)
[State 0, Width]
type = Width
trigger1 =!time
edge =40,40
ignorehitpause =1

[State 801,PlayerPush]
type=PlayerPush
trigger1=1
value=0

[State 801,NotHitBy]
type=NotHitBy
trigger1=1
value =SCA

[State 801,SprPriority]
type=SprPriority
trigger1=(AnimElem = 3)
value=2

[State 801,PlaySnd]
type=PlaySnd
trigger1=(AnimElem = 4)
value=S0,0
channel=0
[State 801,PlaySnd]
type=PlaySnd
trigger1=(AnimElem = 4)
value=S0,0
channel=1
[State 801,PlaySnd]
type=PlaySnd
trigger1=(AnimElem = 4)
value=S1,23

[State 801,PlaySnd]
type=PlaySnd
trigger1=(AnimElem = 2)
value=S1,32

[State 801,PlaySnd]
type=PlaySnd
trigger1=(AnimElem = 4)
value=S2,6

[State 801,TargetBind]
type=TargetBind
trigger1=(AnimElem = 1)
time=-1
id=800
pos=38,-75

[State 801,TargetBind]
type=TargetBind
trigger1=(AnimElem = 2)
time=-1
id=800
pos=32,-82

[State 801,TargetBind]
type=TargetBind
trigger1=(AnimElem = 3)
time=-1
id=800
pos=-30,-64

[State 801,TargetBind]
type=TargetBind
trigger1=(AnimElem = 4)
time=10
id=800
pos=-60,0

[State 801,TargetLifeAdd]
type=TargetLifeAdd
trigger1 =p2stateno=803
value=-90
persistent=0
ignorehitpause= 1
[State 0, TargetDrop]
type = TargetDrop
trigger1 =animelem=5

[State 801,TargetState]
type=TargetState
trigger1=(AnimElem = 4)
value=803

[State 801,ChangeState]
type=ChangeState
trigger1=(!AnimTime)
value=0
ctrl= 1
;---------------------------------------------------------------------------
;Throw: Attempt
[Statedef 820]
type= S
movetype=A
physics=S
anim=800
velset=0,0
ctrl=0
juggle=15
facep2=1
sprpriority=1

[State 820,HitDef]
type=HitDef
trigger1=(AnimElem = 2)
attr=S, NT
hitflag=MAF
priority=1, Miss
sparkno=-1
hitsound=S1,25
guard.dist=0
snap=38,-50
p1facing = ifelse (command = "holdfwd", 1, -1)
p2facing = 1
p1stateno=821
forcestand=1
fall=1
id=820
getpower=0
givepower=0

[State 820,ChangeState]
type=ChangeState
trigger1=(!AnimTime)
value=0
ctrl=1

;---------------------------------------------------------------------------
;Throw: Success
[Statedef 821]
type= S
movetype=A
physics=S
anim=821
velset=0,0
ctrl=0
poweradd=40
sprpriority=-2

[State 821,TargetState]
type=TargetState
trigger1=!time
value=822
[State 0, Width]
type = Width
trigger1 =!time
edge =40,40
ignorehitpause =1
[State 821,NotHitBy]
type=NotHitBy
trigger1=1
value =SCA

[State 821,SprPriority]
type=SprPriority
trigger1=(AnimElem = 5)
value=2

[State 821,PlaySnd]
type=PlaySnd
trigger1=(AnimElem = 5)
value=S0,5
channel=0
[State 821,PlaySnd]
type=PlaySnd
trigger1=(AnimElem = 5)
value=S0,5
channel=1
[State 821,PlaySnd]
type=PlaySnd
trigger1=(AnimElem = 4)
value=S3,2

[State 821,TargetBind]
type=TargetBind
trigger1=(AnimElem = 1)
time=-1
id=820
pos=45,-105
[State 821,TargetBind]
type=TargetBind
trigger1=(AnimElem = 2)
time=-1
id=820
pos=52,-125
[State 821,TargetBind]
type=TargetBind
trigger1=(AnimElem = 3)
time=-1
id=820
pos=35,-125
[State 821,TargetBind]
type=TargetBind
trigger1=(AnimElem = 4)
time=10
id=800
pos=60,-125
[State 821,TargetBind]
type=TargetBind
trigger1=(AnimElem =5)
time=-1
id=820
pos=65,-125
[State 821,TargetBind]
type=TargetBind
trigger1=(AnimElem =6)
time=1
id=820
pos=95,-125

[State 0, EnvShake]
type = EnvShake
trigger1 = animelem=6
time = 32
ampl = 7
[State 821,PlaySnd]
type=PlaySnd
trigger1=(AnimElem = 6)
value=S2,2
[State 0, Explod]
type = Explod
trigger1 =animelem=6
anim =8000+random%8
ID =8000
pos = 95,-115
postype = p1
facing = 1
vfacing = 1
bindtime =1
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 3
ontop = 1
shadow = 0,0,0
ownpal = 1
ignorehitpause =1

[State 821,TargetLifeAdd]
type=TargetLifeAdd
trigger1 =(AnimElem = 6)
value=-120
persistent=0
ignorehitpause= 1
[State 821,TargetState]
type=TargetState
trigger1=(AnimElem =6)
value=823
[State 0, TargetDrop]
type = TargetDrop
trigger1=(AnimElem = 6)

[State 821,ChangeState]
type=ChangeState
trigger1=(!AnimTime)
value=0
ctrl= 1



;-------------- Generated by Fighter Factory -------------

;--------------------- Variable List ----------------------

; Var(0) - StateDef 9500, 9510, 9520, 9530, 9540, 9620, 11020, 11030
; Var(1) - StateDef 9500, 9510, 9520, 9530, 9540, 9620
; Var(2) - StateDef -2
; Var(3) - StateDef 1005
; Var(4) - StateDef 3050, 3055, 3005, 3015, 9631, 9632, 9932, 9935, 9936, 9937, 9938
; Var(5) - StateDef 1000, 1005, 1010, 1020, 1030, 1050, 1080, 1085, 1090, 1100, 1200, 1205, 1250, 1255, 9600, 9630
; Var(7) - StateDef 1000, 1080, 1100, 3020, 3300, 3350, 9632
; Var(8) - StateDef 1000, 3000, 3005, 9600, 9630
; Var(9) - StateDef 3200, 3300
; Var(10) - StateDef 3300
; Var(12) - StateDef 9505, 10000

;--------------------- Float Variable List ----------------------

; fVar(9) - StateDef -2
; fVar(10) - StateDef -2
; fVar(11) - StateDef -2
; fVar(12) - StateDef -2
; fVar(13) - StateDef -2
