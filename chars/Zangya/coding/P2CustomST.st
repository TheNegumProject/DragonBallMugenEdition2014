;===========================================================================
;Player 2 Custom States
;===========================================================================
; Wall Bounce : Used in State 1300
; Part 1 : P2 Fly Back
[Statedef 95000]
type    = A
movetype= H
physics = N
velset = 0,0

[State 95000, P2Anim]
type = ChangeAnim2
trigger1 = Time >= 0
value = 95000

[State 95000, State]
type = ChangeState
trigger1 = HitShakeOver = 1
value = 95001

;---------------------------------------------------------------------------
; Wall Bounce : Used in State 1300
; Part 2 : P2 Hit Wall
[Statedef 95001]
type    = A
movetype= H
physics = N

[State 95001, Velocity]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 95001, Gravity]
type = VelAdd
trigger1 = Time >= 0
y = .45

[State 95001, No scroll]
type = ScreenBound
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist < 65
trigger2 = FrontEdgeBodyDist < 65
value = 1
movecamera = 0,1

[State 95001, Hit wall]
type = ChangeState
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist <= 0
trigger2 = FrontEdgeBodyDist <= 0
value = 95002

[State 95001, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100
;---------------------------------------------------------------------------
; Wall Bounce : Used in State 1300
; Part 3 : P2 Pre-Fall from Wall
[Statedef 95002]
type    = A
movetype= H
physics = N

[State 95002, P2Anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 95002

[State 95002, Stop moving]
type = PosFreeze
trigger1 = 1
x = 1
y = 1

[State 95002, No scroll]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,1

[State 95002, Spark]
type = Explod
trigger1 = Time = 0
anim = F72
pos = -24, -50
postype = p1
sprpriority = 3

[State 95002, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = F7,0

[State 95002, Next]
type = ChangeState
trigger1 = AnimTime = 0
value = 95003
;---------------------------------------------------------------------------
; Wall Bounce : Used in State 1300
; Part 4 : P2 Falling from Wall
[Statedef 95003]
type    = A
movetype= H
physics = N

[State 95003, P2Anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 95003

[State 95003, VelSet]
type = VelSet
trigger1 = Time = 0
x = 1.6
y = -4

[State 95003, Next]
type = ChangeState
trigger1 = AnimTime = 0
value = 95004

;---------------------------------------------------------------------------
; Wall Bounce : Used in State 1300
; Part 5 : P2 Fall into Ground
[Statedef 95004]
type    = A
movetype= H
physics = N

[State 95004, VelSet]
type = VelSet
trigger1 = Time = 0
x = 1.6
y = -4

[State 95004, VelAdd]
type = VelAdd
trigger1 = Time >= 0
y = .35

[State 95004, ChangeAnim 5050]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = !SelfAnimExist(5052)
value = 5050

[State 95004, ChangeAnim 5052]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5052)
value = 5052

[State 95004, ChangeAnim 5060]
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5050
trigger1 = SelfAnimExist(5060)
persistent = 0
value = 5060

[State 95004, ChangeAnim 5062]
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5052
trigger1 = SelfAnimExist(5062)
persistent = 0
value = 5062

[State 95004, ChangeAnim 5050]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = !SelfAnimExist(5052)
value = 5050

[State 95004, ChangeAnim 5052]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5052)
value = 5052

[State 95004, ChangeAnim 5060]
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5050
trigger1 = SelfAnimExist(5060)
persistent = 0
value = 5060

[State 95004, ChangeAnim 5062]
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5052
trigger1 = SelfAnimExist(5062)
persistent = 0
value = 5062

[State 95004, HitGround]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100
;---------------------------------------------------------------------------
; Throw Toss Player 2 State
[Statedef 95020]
type    = A
movetype= H
physics = N
velset = 1,0
ctrl = 0
sprpriority = 2

[State 95020, Animation]
type = ChangeAnim2
trigger1 = time = 0
value = 95020

;BLARGH!
[State 95020, HitBy]
type = HitBy
Trigger1 = Time >= 0
value = SCA
time = 1

[State 95010, End]
type = SelfState
trigger1 = Time >= 40
value = 50
ctrl = 1

;-------------------------------------------------------------------------
; Throw Toss Player 2 State
[Statedef 95021]
type    = A
movetype= H 
physics = N
velset = 6,-8.6
ctrl = 0
sprpriority = 2

[State 95021, Animation]
type = ChangeAnim2
trigger1 = !time
value = 95021

[State 95021, PosAdd]
type = PosAdd
Trigger1 = !Time
x =  22
y = 0

[State 95021, 2] ;Gravity
type = VelAdd
Trigger1 = Time > 0
y = 0.44

[State 95021, Damage]
type = LifeAdd
Trigger1 = Time = 0
value = -70

[State 95021, SelfState]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 10
value = 5100 ;Hit ground
;---------------------------------------------------------------------------
; Ki Strings Hold
[Statedef 95028]
type    = A
movetype= H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 2

[State 95028, Animation]
type = ChangeAnim2
trigger1 = !time
value = 95028

[State 95028, HitBy]
type = NotHitBy
Trigger1 = 1
value = SCA
time = 1

[State 95028, End]
type = SelfState
trigger1 = Time >= 200
value = 50
ctrl = 1
;---------------------------------------------------------------------------
; Ki Strings Kill
[Statedef 95029]
type    = A
movetype= H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 2

[State 95029, Animation]
type = ChangeAnim2
trigger1 = !time
value = 95029

[State 95029, HitBy]
type = NotHitBy
Trigger1 = 1
value = SCA
time = 1

[State 95029, Damage]
type = LifeAdd
Trigger1 = !Time
value = -250

[State 95029, End]
type = ChangeState
trigger1 = Time = 12
value = 95050
ctrl = 1
;---------------------------------------------------------------------------
; Ki Strings Kill
[Statedef 95050]
type    = A
movetype= H
physics = N
velset = -1,-4
ctrl = 0
sprpriority = 2

[State 95050, Animation]
type = ChangeAnim2
trigger1 = !time
value = 5050

[State 95050, HitBy]
type = HitBy
Trigger1 = 1
value = SCA
time = 1

[State 95050, PosSet]
type = PosSet
Trigger1 = pos y > 0 && vel y > 0
y = 0

[State 95050, Gravity]
type = Gravity
trigger1 = time

[State 95050, SelfState]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100