function[newFace, newUp] =  UpdateFaces (moves, face, up)
%
%newFace = face;
%newUp = up;



diagonal1 = [5,2,6,4];
diagonal2 = [5,3,6,1];
diagonal3 = [5,4,6,2];
diagonal4 = [5,1,6,3];
diagonal5 = [1,2,3,4];

diagonals(1,:) = diagonal1;
diagonals(2,:) = diagonal2;
diagonals(3,:) = diagonal3;
diagonals(4,:) = diagonal4;
diagonals(5,:) = diagonal5;

for i=1:length(moves)

    if up == 5 || up == 6
        middle = [1,2,3,4];
        if up == 6
            diagonal5 = [4,3,2,1];
            diagonals(5,:) = diagonal5;
        end
     elseif up == 1 || up == 3
         middle = [5,4,6,2];
             
        diagonal1 = [4,3,2,1];
        diagonal2 = [6,3,5,1];
        diagonal3 = [2,3,4,1];
        diagonal4 = [5,3,6,1];
        diagonal5 = [2,5,4,6];
        
        if up == 3
            diagonal5 = [6,4,5,2];
        end
        
        diagonals(1,:) = diagonal1;
        diagonals(2,:) = diagonal2;
        diagonals(3,:) = diagonal3;
        diagonals(4,:) = diagonal4;
        diagonals(5,:) = diagonal5;
        
     elseif up == 2 || up == 4
         middle = [5,1,6,3];
         
        diagonal1 = [1,4,3,2];
        diagonal2 = [6,4,5,2];
        diagonal3 = [3,4,1,2];
        diagonal4 = [5,4,6,2];
        diagonal5 = [6,3,5,1] ;
        
          if up == 4
            diagonal5 = [1,5,3,6];
          end
        
        diagonals(1,:) = diagonal1;
        diagonals(2,:) = diagonal2;
        diagonals(3,:) = diagonal3;
        diagonals(4,:) = diagonal4;
        diagonals(5,:) = diagonal5;
    end
    
 
    diagno = find(middle == face,1);
    index = find(diagonals(diagno,:) == up,1);
    
    if ismember(' Tumble ', moves(i))
        
        index = index + 1;
        
        if index > 4
            index = 1;
        end

        
        up = diagonals(diagno,index);
        
    elseif ismember(' Tumble2 ', moves(i))
      
        index = index + 2;
        
        if index > 4
            index = index - 4 ;
        end
        
        up = diagonals(diagno,index);
        
    elseif ismember(' Tumble3 ', moves(i))
        
        index = index + 3;
        
        if index > 4
             index = index - 4 ;
        end

        up = diagonals(diagno,index);
        
    end
    
    %%
    if  ismember(' FreeRotateB ', moves(i))

        index = find(diagonals(5,:) == face,1);
        index = index + 1;
        
        if index > 4
            index = 1;
        end
        
        face = diagonals(5,index);
    elseif ismember(' FreeRotateB'' ', moves(i))
        temp = fliplr(diagonal5);
        index = find(temp == face,1);
        index = index + 1;
        
        if index > 4
            index = 1;
        end
        
        
        face = temp(index);
    elseif ismember(' FreeRotateB2 ', moves(i))
        index = find(diagonals(5,:) == face,1);
        index = index + 2;
        
        if index > 4
            index = 1;
        end
        
        face = diagonals(5,index);
    elseif ismember(' FreeRotateB2'' ', moves(i))
        temp = fliplr(diagonal5);
        index = find(temp == face,1);
        index = index + 2;
        
        if index > 4
            index = 1;
        end
        
        
        face = temp(index);
    end
    
    
    newUp = up;
    newFace = face;

end

end