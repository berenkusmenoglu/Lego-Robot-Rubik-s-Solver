function [ pieceValues, uniqueColors] = SaveColorsWithDifference( RGB )

index = 1;
pieceValues = zeros(9,3);
pieceValues(index,:) = RGB(1,1,:);

loop = true;
a = 1;
b = 1;


while loop
    
    index = 1;
    if a == 3 && b == 3
        loop = false;
    end
    
    for i = 1:3
        for j = 1:3
            
            diff = compare(RGB(b,a,:),RGB(j,i,:));
            
            if diff <= 0.1
                pieceValues(index,:) = RGB(b,a,:);
                RGB(j,i,:) = RGB(b,a,:);
            else
                pieceValues(index,:) = RGB(j,i,:);
            end
         
                index = index + 1;
           
            
        end
        
    end
    
    if b < 3
        b = b+1;
    elseif a < 3
        a=a+1;
        b = 1;
    end
    
end
uniqueColors = unique(pieceValues,'rows');
end
%[cubeValues(1,:,:),~] = SaveColorsWithDifference(rgb);

