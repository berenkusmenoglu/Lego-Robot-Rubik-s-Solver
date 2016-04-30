function [ robotMove ] = TranslateMove( move, face, up )



moveset = {'R', 'F','L','B','D','U'};
moveset2 = {'R2', 'F2','L2','B2','D2', 'U2'};
moveset3 = {'R''', 'F''','L''','B''','D''','U'''};
moveset4 = {'R2''', 'F2''','L2''','B2''','D2''','U2'''};

if up == 5
    
    if strcmp(move, 'R')
        moveNo = 1;
        
        index = mod((moveNo + face-1), 4) ;
        if index == 0
            index = 4;
        end
        
        robotMove = moveset(index);
    elseif strcmp(move, 'R''')
        moveNo = 1;
        
        index = mod((moveNo + face-1), 4) ;
        if index == 0
            index = 4;
        end
        robotMove = moveset3(index);
    elseif strcmp(move, 'R2')
        moveNo = 1;
        
        index = mod((moveNo + face-1), 4) ;
        if index == 0
            index = 4;
        end
        robotMove = moveset2(index);
    elseif strcmp(move, 'R2''')
        moveNo = 1;
        
        index = mod((moveNo + face-1), 4) ;
        if index == 0
            index = 4;
        end
        robotMove = moveset4(index);
    elseif strcmp(move, 'F')
        moveNo = 2;
        
        index = mod((moveNo + face-1), 4)  ;
        if index == 0
            index = 4;
        end
        robotMove = moveset(index);
    elseif strcmp(move, 'F''')
        moveNo = 2;
        
        index = mod((moveNo + face-1), 4)  ;
        if index == 0
            index = 4;
        end
        robotMove = moveset3(index);
    elseif strcmp(move, 'F2')
        moveNo = 2;
        
        index = mod((moveNo + face-1), 4)  ;
        if index == 0
            index = 4;
        end
        robotMove = moveset2(index);
    elseif strcmp(move, 'F2''')
        moveNo = 2;
        
        index = mod((moveNo + face-1), 4)  ;
        if index == 0
            index = 4;
        end
        robotMove = moveset4(index);
    elseif strcmp(move, 'L')
        moveNo = 3;
        
        index = mod((moveNo + face-1), 4)  ;
        if index == 0
            index = 4;
        end
        robotMove = moveset(index);
    elseif strcmp(move, 'L''')
        moveNo = 3;
        
        index = mod((moveNo + face-1), 4)  ;
        if index == 0
            index = 4;
        end
        robotMove = moveset3(index);
    elseif strcmp(move, 'L2')
        moveNo = 3;
        
        index = mod((moveNo + face-1), 4)  ;
        if index == 0
            index = 4;
        end
        robotMove = moveset2(index);
    elseif strcmp(move, 'L2''')
        moveNo = 3;
        
        index = mod((moveNo + face-1), 4)  ;
        if index == 0
            index = 4;
        end
        robotMove = moveset4(index);
    elseif strcmp(move, 'B')
        moveNo = 4;
        
        index = mod((moveNo + face-1), 4) ;
        if index == 0
            index = 4;
        end
        robotMove = moveset(index);
    elseif strcmp(move, 'B''')
        moveNo = 4;
        
        index = mod((moveNo + face-1), 4) ;
        if index == 0
            index = 4;
        end
        robotMove = moveset3(index);
    elseif strcmp(move, 'B2')
        moveNo = 4;
        
        index = mod((moveNo + face-1), 4) ;
        if index == 0
            index = 4;
        end
        robotMove = moveset2(index);
    elseif strcmp(move, 'B2''')
        moveNo = 4;
        
        index = mod((moveNo + face-1), 4) ;
        if index == 0
            index = 4;
        end
        robotMove = moveset4(index);
    elseif strcmp(move, 'U')
        
        robotMove = moveset(6);
        
    elseif strcmp(move, 'U''')
        
        robotMove = moveset3(6);
    elseif strcmp(move, 'U2')
        
        robotMove = moveset2(6);
    elseif strcmp(move, 'U2''')
        
        robotMove = moveset4(6);
        
    elseif strcmp(move, 'D')
        
        robotMove = moveset(5);
        
    elseif strcmp(move, 'D''')
        
        robotMove = moveset3(5);
        
    elseif strcmp(move, 'D2')
        
        robotMove = moveset2(5);
        
    elseif strcmp(move, 'D2''')
        
        robotMove = moveset4(5);
        
    end
    
    
elseif up == 6
    
    
    if strcmp(move, 'R')
        moveNo = 1;
        
        index = mod((moveNo + face-1), 4) ;
        index = 4-index;
        if index == 0
            index = 4;
        end
        robotMove = moveset(index);
    elseif strcmp(move, 'R''')
        moveNo = 1;
        
        index = mod((moveNo + face-1), 4) ;
        index = 4-index;
        if index == 0
            index = 4;
        end
        robotMove = moveset3(index);
    elseif strcmp(move, 'R2')
        moveNo = 1;
        
        index = mod((moveNo + face-1), 4) ;
        index = 4-index;
        if index == 0
            index = 4;
        end
        robotMove = moveset2(index);
    elseif strcmp(move, 'R2''')
        moveNo = 1;
        
        index = mod((moveNo + face-1), 4) ;
        index = 4-index;
        if index == 0
            index = 4;
        end
        robotMove = moveset4(index);
    elseif strcmp(move, 'F')
        moveNo = 2;
        
        index = mod((moveNo + face-1), 4)  ;
        index = 4-index;
        if index == 0
            index = 4;
        end
        robotMove = moveset(index);
    elseif strcmp(move, 'F''')
        moveNo = 2;
        
        index = mod((moveNo + face-1), 4)  ;
        index = 4-index;
        if index == 0
            index = 4;
        end
        robotMove = moveset3(index);
    elseif strcmp(move, 'F2')
        moveNo = 2;
        
        index = mod((moveNo + face-1), 4)  ;
        index = 4-index;
        if index == 0
            index = 4;
        end
        robotMove = moveset2(index);
    elseif strcmp(move, 'L')
        moveNo = 3;
        
        index = mod((moveNo + face-1), 4)  ;
        index = 4-index;
        if index == 0
            index = 4;
        end
        robotMove = moveset(index);
    elseif strcmp(move, 'L''')
        moveNo = 3;
        
        index = mod((moveNo + face-1), 4)  ;
        index = 4-index;
        if index == 0
            index = 4;
        end
        robotMove = moveset3(index);
    elseif strcmp(move, 'L2')
        moveNo = 3;
        
        index = mod((moveNo + face-1), 4)  ;
        index = 4-index;
        if index == 0
            index = 4;
        end
        robotMove = moveset2(index);
    elseif strcmp(move, 'L2''')
        moveNo = 3;
        
        index = mod((moveNo + face-1), 4)  ;
        index = 4-index;
        if index == 0
            index = 4;
        end
        robotMove = moveset4(index);
    elseif strcmp(move, 'B')
        moveNo = 4;
        
        index = mod((moveNo + face-1), 4) ;
        index = 4-index;
        if index == 0
            index = 4;
        end
        robotMove = moveset(index);
    elseif strcmp(move, 'B''')
        moveNo = 4;
        
        index = mod((moveNo + face-1), 4) ;
        index = 4-index;
        if index == 0
            index = 4;
        end
        robotMove = moveset3(index);
    elseif strcmp(move, 'B2')
        moveNo = 4;
        
        index = mod((moveNo + face-1), 4) ;
        index = 4-index;
        if index == 0
            index = 4;
        end
        robotMove = moveset2(index);
    elseif strcmp(move, 'B2''')
        moveNo = 4;
        
        index = mod((moveNo + face-1), 4) ;
        index = 4-index;
        if index == 0
            index = 4;
        end
        robotMove = moveset4(index);
    elseif strcmp(move, 'U')
        
        robotMove = moveset(5);
        
    elseif strcmp(move, 'U''')
        
        robotMove = moveset3(5);
    elseif strcmp(move, 'U2')
        
        robotMove = moveset2(5);
    elseif strcmp(move, 'U2''')
        
        robotMove = moveset4(5);
        
    elseif strcmp(move, 'D')
        
        robotMove = moveset(6);
        
    elseif strcmp(move, 'D''')
        
        robotMove = moveset3(6);
        
    elseif strcmp(move, 'D2')
        
        robotMove = moveset2(6);
        
    elseif strcmp(move, 'D2''')
        
        robotMove = moveset4(6);
        
    end
    %%
elseif up == 2
    
    if strcmp(move, 'R')
        
        robotMove = moveset(6);
    elseif strcmp(move, 'R''')
        
        robotMove = moveset3(6);
        
    elseif strcmp(move, 'R2')
        
        robotMove = moveset2(6);
    elseif strcmp(move, 'R2''')
        
        robotMove = moveset4(6);
    elseif strcmp(move, 'F')
        moveNo = 2;
        
        index = mod((moveNo + face-1), 4)  ;
        if index == 0
            index = 4;
        end
        robotMove = moveset(index);
    elseif strcmp(move, 'F''')
        moveNo = 2;
        
        index = mod((moveNo + face-1), 4)  ;
        if index == 0
            index = 4;
        end
        robotMove = moveset3(index);
    elseif strcmp(move, 'F2')
        moveNo = 2;
        
        index = mod((moveNo + face-1), 4)  ;
        if index == 0
            index = 4;
        end
        robotMove = moveset2(index);
    elseif strcmp(move, 'F2''')
        moveNo = 2;
        
        index = mod((moveNo + face-1), 4)  ;
        if index == 0
            index = 4;
        end
        robotMove = moveset4(index);
    elseif strcmp(move, 'L')
        
        robotMove = moveset(5);
    elseif strcmp(move, 'L''')
        
        robotMove = moveset3(5);
    elseif strcmp(move, 'L2')
        
        robotMove = moveset2(5);
    elseif strcmp(move, 'L2''')
        
        robotMove = moveset4(5);
        
    elseif strcmp(move, 'B')
        moveNo = 4;
        
        index = mod((moveNo + face-1), 4);
        if index == 0
            index = 4;
        end
        robotMove = moveset(index);
        
    elseif strcmp(move, 'B''')
        moveNo = 4;
        
        index = mod((moveNo + face-1), 4);
        if index == 0
            index = 4;
        end
        robotMove = moveset3(index);
        
    elseif strcmp(move, 'B2')
        moveNo = 4;
        
        index = mod((moveNo + face-1), 4);
        if index == 0
            index = 4;
        end
        robotMove = moveset2(index);
    elseif strcmp(move, 'B2''')
        moveNo = 4;
        
        index = mod((moveNo + face-1), 4);
        if index == 0
            index = 4;
        end
        robotMove = moveset4(index);
    elseif strcmp(move, 'U')
        
        
        moveNo = 3;
        
        index = mod((moveNo + face-1), 4)  ;
        if index == 0
            index = 4;
        end
        robotMove = moveset(index);
    elseif strcmp(move, 'U''')
        
        
        moveNo = 3;
        
        index = mod((moveNo + face-1), 4)  ;
        if index == 0
            index = 4;
        end
        robotMove = moveset3(index);
    elseif strcmp(move, 'U2')
        
        
        moveNo = 3;
        
        index = mod((moveNo + face-1), 4)  ;
        if index == 0
            index = 4;
        end
        robotMove = moveset2(index);
    elseif strcmp(move, 'U2''')
        
        
        moveNo = 3;
        
        index = mod((moveNo + face-1), 4)  ;
        if index == 0
            index = 4;
        end
        robotMove = moveset4(index);
        
    elseif strcmp(move, 'D')
        
        moveNo = 1;
        
        index = mod((moveNo + face-1), 4)  ;
        if index == 0
            index = 4;
        end
        robotMove = moveset(index);
    elseif strcmp(move, 'D''')
        
        moveNo = 1;
        
        index = mod((moveNo + face-1), 4)  ;
        if index == 0
            index = 4;
        end
        robotMove = moveset3(index);
    elseif strcmp(move, 'D2')
        
        moveNo = 1;
        
        index = mod((moveNo + face-1), 4)  ;
        if index == 0
            index = 4;
        end
        robotMove = moveset2(index);
    elseif strcmp(move, 'D2''')
        
        moveNo = 1;
        
        index = mod((moveNo + face-1), 4)  ;
        if index == 0
            index = 4;
        end
        robotMove = moveset4(index);
        
    end
    %%
elseif up == 3
    
    
    if strcmp(move, 'R')
        moveNo = 1;
        
        index = mod((moveNo + face-1), 4);
        
        if index == 0
            index = 4;
        end
        
        if face == 6
            index = 3 ;
        end
        
        robotMove = moveset(index);
    elseif strcmp(move, 'R''')
        moveNo = 1;
        
        index = mod((moveNo + face-1), 4) ;
        if index == 0
            index = 4;
        end
        if face == 6
            index = 3 ;
        end
        robotMove = moveset3(index);
    elseif strcmp(move, 'R2')
        moveNo = 1;
        
        index = mod((moveNo + face-1), 4) ;
        if index == 0
            index = 4;
        end
        if face == 6
            index = 3 ;
        end
        robotMove = moveset2(index);
    elseif strcmp(move, 'R2''')
        moveNo = 1;
        
        index = mod((moveNo + face-1), 4) ;
        if index == 0
            index = 4;
        end
        if face == 6
            index = 3 ;
        end
        robotMove = moveset4(index);
    elseif strcmp(move, 'F')
        
        robotMove = moveset(5);
        
        
    elseif strcmp(move, 'F''')
        robotMove = moveset3(5);
        
    elseif strcmp(move, 'F2')
        
        robotMove = moveset2(5);
        
    elseif strcmp(move, 'F2''')
        robotMove = moveset4(5);
        
    elseif strcmp(move, 'L')
        moveNo = 3;
        
        index = mod((moveNo + face-1), 4)  ;
        if index == 0
            index = 4;
        end
        if face == 6
            index = 1;
        end
        robotMove = moveset(index);
    elseif strcmp(move, 'L''')
        moveNo = 3;
        
        index = mod((moveNo + face-1), 4)  ;
        if index == 0
            index = 4;
        end
        if face == 6
            index = 1;
        end
        robotMove = moveset3(index);
    elseif strcmp(move, 'L2')
        moveNo = 3;
        
        index = mod((moveNo + face-1), 4)  ;
        if index == 0
            index = 4;
        end
        robotMove = moveset2(index);
    elseif strcmp(move, 'L2''')
        moveNo = 3;
        
        index = mod((moveNo + face-1), 4)  ;
        if index == 0
            index = 4;
        end
        if face == 6
            index = 1;
        end
        robotMove = moveset4(index);
    elseif strcmp(move, 'U')
        moveNo = 4;
        
        index = mod((moveNo + face-1), 4) ;
        if index == 0
            index = 4;
        end
        if face == 6
            index = 4;
        end
        robotMove = moveset(index);
    elseif strcmp(move, 'U''')
        moveNo = 4;
        
        index = mod((moveNo + face-1), 4) ;
        if index == 0
            index = 4;
        end
        
        if face == 6
            index = 2;
        end
        robotMove = moveset3(index);
    elseif strcmp(move, 'U2')
        moveNo = 4;
        
        index = mod((moveNo + face-1), 4) ;
        if index == 0
            index = 4;
        end
        robotMove = moveset2(index);
    elseif strcmp(move, 'U2''')
        moveNo = 4;
        
        index = mod((moveNo + face-1), 4) ;
        if index == 0
            index = 4;
        end
        robotMove = moveset4(index);
    elseif strcmp(move, 'B')
        
        robotMove = moveset(6);
        
    elseif strcmp(move, 'B''')
        
        robotMove = moveset3(6);
    elseif strcmp(move, 'B2')
        
        robotMove = moveset2(6);
    elseif strcmp(move, 'B2''')
        
        robotMove = moveset4(6);
        
    elseif strcmp(move, 'D')
        moveNo = 2;
        
        index = mod((moveNo + face-1), 4)  ;
        if index == 0
            index = 4;
        end
        
        if face == 6
            index = 2 ;
        end
        
        robotMove = moveset(index);
        
        
    elseif strcmp(move, 'D''')
        
        
        moveNo = 2;
        
        index = mod((moveNo + face-1), 4)  ;
        if index == 0
            index = 4;
        end
        robotMove = moveset3(index);
        
    elseif strcmp(move, 'D2')
        
        moveNo = 2;
        
        index = mod((moveNo + face-1), 4)  ;
        if index == 0
            index = 4;
        end
        robotMove = moveset2(index);
        
    elseif strcmp(move, 'D2''')
        moveNo = 2;
        
        index = mod((moveNo + face-1), 4)  ;
        if index == 0
            index = 4;
        end
        robotMove = moveset4(index);
        
    end
    
    %%
elseif up == 4
    
    if strcmp(move, 'R')
        
        
        robotMove = moveset(5);
        
    elseif strcmp(move, 'R''')
        robotMove = moveset3(5);
        
    elseif strcmp(move, 'R2')
        robotMove = moveset2(5);
        
    elseif strcmp(move, 'R2''')
        robotMove = moveset4(5);
        
    elseif strcmp(move, 'F')
        
        moveNo = 2;
        
        index = mod((moveNo + face-1), 4)  ;
        index = 4 - index;
        if index == 0
            index = 4;
        end
        
        if face == 5
            index = 3;
        end
        
        robotMove = moveset(index);
        
    elseif strcmp(move, 'F''')
        moveNo = 2;
        
        index = mod((moveNo + face-1), 4)  ;
         index = 4 - index;
        if index == 0
            index = 4;
        end
        if face == 5
            index = 3;
        end
        robotMove = moveset3(index);
        
    elseif strcmp(move, 'F2')
        
        moveNo = 2;
        
        index = mod((moveNo + face-1), 4)  ;
         index = 4 - index;
        if index == 0
            index = 4;
        end
        if face == 5
            index = 3;
        end
        robotMove = moveset2(index);
    elseif strcmp(move, 'F2''')
        moveNo = 2;
        
        index = mod((moveNo + face-1), 4)  ;
         index = 4 - index;
        if index == 0
            index = 4;
        end
        if face == 5
            index = 3;
        end
        robotMove = moveset4(index);
        
    elseif strcmp(move, 'L')
        robotMove = moveset(6);
        
    elseif strcmp(move, 'L''')
        robotMove = moveset3(6);
        
    elseif strcmp(move, 'L2')
        robotMove = moveset2(6);
        
    elseif strcmp(move, 'L2''')
        robotMove = moveset4(6);
        
    elseif strcmp(move, 'U')
        moveNo = 1;
        
        index = mod((moveNo + face-1), 4) ;
        if index == 0
            index = 4;
        end
        if face == 6
            index = 4;
        end
        robotMove = moveset(index);
    elseif strcmp(move, 'U''')
        moveNo = 1;
        index = mod((moveNo + face-1), 4) ;
        if index == 0
            index = 4;
        end
        
        if face == 6
            index = 2;
        end
        robotMove = moveset3(index);
    elseif strcmp(move, 'U2')
        moveNo = 1;
        index = mod((moveNo + face-1), 4) ;
        if index == 0
            index = 4;
        end
        if face == 6
            index = 2;
        end
        robotMove = moveset2(index);
    elseif strcmp(move, 'U2''')
        moveNo = 1;
        index = mod((moveNo + face-1), 4) ;
        if index == 0
            index = 4;
        end
        if face == 6
            index = 2;
        end
        robotMove = moveset4(index);
    elseif strcmp(move, 'B')
        
        moveNo = 4;
        
        index = mod((moveNo + face-1), 4)  ;
         index = 4 - index;
        
        if index == 0
            index = 4;
        end
        if face == 5
            index = 1;
        end
        robotMove = moveset(index);
        
    elseif strcmp(move, 'B''')
        
        moveNo = 4;
        
        index = mod((moveNo + face-1), 4)  ;
         index = 4 - index;
        if index == 0
            index = 4;
        end
        if face == 5
            index = 1;
        end
        robotMove = moveset3(index);
    elseif strcmp(move, 'B2')
        
        moveNo = 4;
        
        index = mod((moveNo + face-1), 4)  ;
         index = 4 - index;
        if index == 0
            index = 4;
        end
        if face == 5
            index = 1;
        end
        robotMove = moveset2(index);
    elseif strcmp(move, 'B2''')
        
        moveNo = 4;
        
        index = mod((moveNo + face-1), 4)  ;
         index = 4 - index;
        if index == 0
            index = 4;
        end
        if face == 5
            index = 1;
        end
        robotMove = moveset4(index);
        
    elseif strcmp(move, 'D')
        moveNo = 3;
        
        index = mod((moveNo + face-1), 4)  ;
        if index == 0
            index = 4;
        end
        
        if face == 6
            index = 2 ;
        end
        
        robotMove = moveset(index);
        
        
    elseif strcmp(move, 'D''')
        
        
        moveNo = 3;
        
        index = mod((moveNo + face-1), 4)  ;
        if index == 0
            index = 4;
        end
        
        if face == 6
            index = 2 ;
        end
        
        robotMove = moveset3(index);
    elseif strcmp(move, 'D2')
        
        moveNo = 3;
        
        index = mod((moveNo + face-1), 4)  ;
        if index == 0
            index = 4;
        end
        
        if face == 6
            index = 2 ;
        end
        
        robotMove = moveset2(index);
        
    elseif strcmp(move, 'D2''')
        moveNo = 3;
        
        index = mod((moveNo + face-1), 4)  ;
        if index == 0
            index = 4;
        end
        
        if face == 6
            index = 2 ;
        end
        
        robotMove = moveset4(index);
        
    end
    
    %%
elseif up == 1
    
    if strcmp(move, 'R')
        moveNo = 1;
        
        index = mod((moveNo + face-1), 4);
        index = 4-index;
        if index == 0
            index = 4;
        end
        
        if face == 6
            index = 3 ;
        end
        
        robotMove = moveset(index);
    elseif strcmp(move, 'R''')
        moveNo = 1;
        
        index = mod((moveNo + face-1), 4) ;
         index = 4-index;
        if index == 0
            index = 4;
        end
        if face == 6
            index = 3 ;
        end
        robotMove = moveset3(index);
    elseif strcmp(move, 'R2')
        moveNo = 1;
        
        index = mod((moveNo + face-1), 4) ;
         index = 4-index;
        if index == 0
            index = 4;
        end
        if face == 6
            index = 3 ;
        end
        robotMove = moveset2(index);
    elseif strcmp(move, 'R2''')
        moveNo = 1;
        
        index = mod((moveNo + face-1), 4) ;
         index = 4-index;
        if index == 0
            index = 4;
        end
        if face == 6
            index = 3 ;
        end
        robotMove = moveset4(index);
    elseif strcmp(move, 'F')
        
        robotMove = moveset(6);
        
        
    elseif strcmp(move, 'F''')
        robotMove = moveset3(6);
        
    elseif strcmp(move, 'F2')
        
        robotMove = moveset2(6);
        
    elseif strcmp(move, 'F2''')
        robotMove = moveset4(6);
        
    elseif strcmp(move, 'L')
        moveNo = 3;
        
        index = mod((moveNo + face-1), 4)  ;
         index = 4-index;
        if index == 0
            index = 4;
        end
        if face == 6
            index = 1;
        end
        robotMove = moveset(index);
    elseif strcmp(move, 'L''')
        moveNo = 3;
        
        index = mod((moveNo + face-1), 4)  ;
         index = 4-index;
        if index == 0
            index = 4;
        end
        if face == 6
            index = 1;
        end
        robotMove = moveset3(index);
    elseif strcmp(move, 'L2')
        moveNo = 3;
        
        index = mod((moveNo + face-1), 4)  ;
         index = 4-index;
        if index == 0
            index = 4;
        end
        robotMove = moveset2(index);
    elseif strcmp(move, 'L2''')
        moveNo = 3;
        
        index = mod((moveNo + face-1), 4)  ;
         index = 4-index;
        if index == 0
            index = 4;
        end
        if face == 6
            index = 1;
        end
        robotMove = moveset4(index);
    elseif strcmp(move, 'U')
        moveNo = 4;
        
        index = mod((moveNo + face-1), 4) ;
        
        if index == 0
            index = 4;
        end
        if face == 6
            index = 4;
        elseif face == 5
            index = 2;
        end
        robotMove = moveset(index);
    elseif strcmp(move, 'U''')
        moveNo = 4;
        
        index = mod((moveNo + face-1), 4) ;
       
        if index == 0
            index = 4;
        end
        
        if face == 6
            index = 4;
        elseif face == 5
            index = 2;
        end
        robotMove = moveset3(index);
    elseif strcmp(move, 'U2')
        moveNo = 4;
        
        index = mod((moveNo + face-1), 4) ;
        
        if index == 0
            index = 4;
        end
        if face == 6
            index = 4;
        elseif face == 5
            index = 2;
        end
        robotMove = moveset2(index);
    elseif strcmp(move, 'U2''')
        moveNo = 4;
        
        index = mod((moveNo + face-1), 4) ;
       
        if index == 0
            index = 4;
        end
         if face == 6
            index = 4;
        elseif face == 5
            index = 2;
        end
        robotMove = moveset4(index);
    elseif strcmp(move, 'B')
        
        robotMove = moveset(5);
        
    elseif strcmp(move, 'B''')
        
        robotMove = moveset3(5);
    elseif strcmp(move, 'B2')
        
        robotMove = moveset2(5);
    elseif strcmp(move, 'B2''')
        
        robotMove = moveset4(5);
        
    elseif strcmp(move, 'D')
        moveNo = 2;
        
        index = mod((moveNo + face-1), 4)  ;
        if index == 0
            index = 4;
        end
        
        if face == 6
            index = 2;
        elseif face == 5
            index = 4;
        end
        
        robotMove = moveset(index);
        
        
    elseif strcmp(move, 'D''')
        
        
        moveNo = 2;
        
        index = mod((moveNo + face-1), 4)  ;
        if index == 0
            index = 4;
        end
        if face == 6
            index = 2;
        elseif face == 5
            index = 4;
        end
        robotMove = moveset3(index);
        
    elseif strcmp(move, 'D2')
        
        moveNo = 2;
        
        index = mod((moveNo + face-1), 4)  ;
        if index == 0
            index = 4;
        end
        if face == 6
            index = 2;
        elseif face == 5
            index = 4;
        end
        robotMove = moveset2(index);
        
    elseif strcmp(move, 'D2''')
        moveNo = 2;
        
        index = mod((moveNo + face-1), 4)  ;
        if index == 0
            index = 4;
        end
        
        if face == 6
            index = 2;
        elseif face == 5
            index = 4;
        end
        robotMove = moveset4(index);
        
    end
    
    
    
end


end

