function [rotation] = MoveMotorB( myLego, speed ,rotationGoal)

% without lock MoveMotorB(myLego, 30, 245)
% with lock  MoveMotorB(myLego, 60, 345)

% MoveMotorB(myLego, 40, -175)
% MoveMotorB(myLego, 40, 60)

% ideal speed for a = 35 and angles are 200 and 0
% ideal speed for b = 10 maybe 20 angles are 245 for a 90 degree turn


myMotor = motor(myLego ,'B');
myMotor.resetRotation;
margin =3;

goalReached = false;

while ~goalReached
    
    rotation = myMotor.readRotation;
    
    if rotationGoal > rotation + margin
        myMotor.Speed = speed;
    elseif rotationGoal < rotation - margin
         myMotor.Speed = -speed;
    else
        goalReached = true;
    end
    
    start(myMotor)
  
    
end
stop(myMotor)
end

