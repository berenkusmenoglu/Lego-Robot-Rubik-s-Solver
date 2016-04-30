function [] = Tumble(myLego, num)

for i =1:num
  
    MoveMotorA(myLego, 50, 100);
    MoveMotorA(myLego, 50, 200);
    MoveMotorA(myLego, 50, 0);
end

end