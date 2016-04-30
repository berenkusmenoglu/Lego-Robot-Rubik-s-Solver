function [rotation] = MoveMotorA( myLego, speed ,rotationGoal)


%ideal speed for a = 35 and angles are 200 and 0

mymotor = motor(myLego ,'A');
margin = 5;

goalReached = false;

while ~goalReached
    
    rotation = mymotor.readRotation;
    
    if rotationGoal > rotation + margin
        mymotor.Speed = speed;
    elseif rotationGoal < rotation - margin
         mymotor.Speed = -speed;
    else
        goalReached = true;
    end
    
    start(mymotor)
    
    
end
stop(mymotor)
end

