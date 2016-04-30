function [] = LockRotateB(myLego, num)

if num < 0
    num = -1 * num;
    
    for i =1:num
        
        MoveMotorB(myLego, 50, -320);
        
     
        pause(0.5);
    end
     for i =1:num
        MoveMotorB(myLego, 50, 58);
        
        
     end
  
else
    
    for i =1:num
        
        MoveMotorB(myLego, 50, 330);

        pause(0.5);
    end
    for i =1:num
        MoveMotorB(myLego, 50, -60);
        
        
    end
 
end

end