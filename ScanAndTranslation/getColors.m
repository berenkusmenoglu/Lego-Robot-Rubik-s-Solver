function [ colors ] = getColors( cubeValues )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

[~,N,~] = size(cubeValues);
colors = zeros(6,9);

for i = 1:6
    middleColor = cubeValues(i,5,:);
    
    for n = 1:N
        if  compare( cubeValues(i,n,:), middleColor ) < 0.2
            colors(i,n) = i;
        else
            a = 1;
            while a<=6
                if compare( cubeValues(i,n,:), cubeValues(a,5,:) ) < 0.22
                    colors(i,n) = a;
                    break;
                else
                    a = a+1;
                end
            end
        end
    end
end

for i = 1:6
     for n = 1:N
        if colors(i,n,:) == 0
           colors(i,n,:) = 5; 
        end
     end
end


