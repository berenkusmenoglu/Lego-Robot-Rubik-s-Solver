function[robotSeq] =  GetRobotMove (move)
%

i = 1;

%% R

if strcmp(move, 'R')
    robotSeq{i} = ' Tumble3 ';
    i = i + 1;
    robotSeq{i} = ' RotateB'' ';
    i = i + 1;
    
elseif strcmp(move, 'R''')
    robotSeq{i} = ' Tumble3 ';
    i = i + 1;
    robotSeq{i} = ' RotateB ';
    i = i + 1;
elseif strcmp(move, 'R2''')
    robotSeq{i} = ' Tumble3 ';
    i = i + 1;
    robotSeq{i} = ' RotateB2 ';
    i = i + 1;
elseif strcmp(move, 'R2')
    robotSeq{i} = ' Tumble3 ';
    i = i + 1;
    robotSeq{i} = ' RotateB2'' ';
    i = i + 1;
    
    %% L
elseif  strcmp(move, 'L')
    robotSeq{i} = ' Tumble ';
    i = i + 1;
    robotSeq{i} = ' RotateB'' ';
    i = i + 1;
elseif  strcmp(move, 'L''')
    robotSeq{i} = ' Tumble ';
    i = i + 1;
    robotSeq{i} = ' RotateB'' ';
    i = i + 1;
elseif  strcmp(move, 'L2')
    robotSeq{i} = ' Tumble ';
    i = i + 1;
    robotSeq{i} = ' RotateB2'' ';
    i = i + 1;
elseif  strcmp(move, 'L2''')
    robotSeq{i} = ' Tumble ';
    i = i + 1;
    robotSeq{i} = ' RotateB2 ';
    i = i + 1;
       
        
    
    
    %% B
    
elseif  strcmp(move, 'B')
    robotSeq{i} = ' FreeRotateB'' ';
    i = i + 1;
    robotSeq{i} = ' Tumble ';
    i = i + 1;
    robotSeq{i} = ' RotateB'' ';
    i = i + 1;
elseif  strcmp(move, 'B''')
    robotSeq{i} = ' FreeRotateB'' '
    i = i + 1;
    robotSeq{i} = ' Tumble ';
    i = i + 1;
    robotSeq{i} = ' RotateB ';
    i = i + 1;
elseif  strcmp(move, 'B2')
    robotSeq{i} = ' FreeRotateB'' ';
    i = i + 1;
    robotSeq{i} = ' Tumble ';
    i = i + 1;
    robotSeq{i} = ' RotateB2'' ';
    i = i + 1;
elseif  strcmp(move, 'B2''')
    robotSeq{i} = ' FreeRotateB'' ';
    i = i + 1;
    robotSeq{i} = ' Tumble ';
    i = i + 1;
    robotSeq{i} = ' RotateB2 ';
    i = i + 1;
        
    %% D
elseif  strcmp(move, 'D')
    robotSeq{i} = ' RotateB'' ';
    i = i + 1;
elseif  strcmp(move, 'D''')
    robotSeq{i} = ' RotateB ';
    i = i + 1;
elseif  strcmp(move, 'D2')
    robotSeq{i} = ' RotateB2'' ';
    i = i + 1;
 elseif  strcmp(move, 'D2''')
    robotSeq{i} = ' RotateB2 ';
    i = i + 1;
              
    
    %% F
elseif  strcmp(move, 'F')
    robotSeq{i} = ' FreeRotateB ';
    i = i + 1;
    robotSeq{i} = ' Tumble ';
    i = i + 1;
    robotSeq{i} = ' RotateB'' ';
    i = i + 1;
 elseif  strcmp(move, 'F''')
    robotSeq{i} = ' FreeRotateB ';
    i = i + 1;
    robotSeq{i} = ' Tumble ';
    i = i + 1;
    robotSeq{i} = ' RotateB ';
    i = i + 1;
elseif  strcmp(move, 'F2')
    robotSeq{i} = ' FreeRotateB ';
    i = i + 1;
    robotSeq{i} = ' Tumble ';
    i = i + 1;
    robotSeq{i} = ' RotateB2'' ';
    i = i + 1;
elseif  strcmp(move, 'F2''')
    robotSeq{i} = ' FreeRotateB ';
    i = i + 1;
    robotSeq{i} = ' Tumble ';
    i = i + 1;
    robotSeq{i} = ' RotateB2 ';
    i = i + 1;
               
elseif  strcmp(move, 'U')
    %% U
    
    robotSeq{i} = ' Tumble2 ';
    i = i + 1;
    robotSeq{i} = ' RotateB'' ';
    i = i + 1;
elseif  strcmp(move, 'U''')
    %% U
    
    robotSeq{i} = ' Tumble2 ';
    i = i + 1;
    robotSeq{i} = ' RotateB ';
    i = i + 1;
elseif  strcmp(move, 'U2')
    %% U
    
    robotSeq{i} = ' Tumble2 ';
    i = i + 1;
    robotSeq{i} = ' RotateB2'' ';
    i = i + 1;
 elseif  strcmp(move, 'U2''')
    %% U
    
    robotSeq{i} = ' Tumble2 ';
    i = i + 1;
    robotSeq{i} = ' RotateB2 ';
    i = i + 1;
              
end

end
