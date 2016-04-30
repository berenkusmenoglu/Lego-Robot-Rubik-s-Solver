Cube(1) = Cube(1)' ;
Cube(2) = Cube(2)' ;
Cube(3) = Cube(3)' ;
Cube(4) = Cube(4)' ;
Cube(5) = Cube(5)' ;
Cube(6) = Cube(6)' ;

Cube(1) = rot90(Cube(1),-1);
Cube(2) = rot90(Cube(2),-1);
Cube(3) = rot90(Cube(3),-1);
Cube(4) = rot90(Cube(4),-1);
Cube(5) = rot90(Cube(5),-1);
Cube(6) = rot90(Cube(6),-1);

R(:,:,1) = Cube{1};
R(:,:,2) = Cube{2};
R(:,:,3) = Cube{3};
R(:,:,4) = Cube{4};
R(:,:,5) = Cube{5};
R(:,:,6) = Cube{6};