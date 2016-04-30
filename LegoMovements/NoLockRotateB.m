function [] = NoLockRotateB(myLego, num)

if num < 0

    for i =1:num*-1
    
        MoveMotorB(myLego, 50, -178);
        pause(0.2);
    end
   
else
    for i =1:num
        MoveMotorB(myLego, 50, 178);
         pause(0.2);
    end
end


end