function [ R ] = TranslateCube( Cube )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

[S,P] = size(Cube);
% 
% temp = Cube(1,:);
% Cube(1,:) = Cube(2,:);
% Cube(2,:) = temp;
% 
% temp = Cube(2,:);
% Cube(2,:) = Cube(3,:);
% Cube(3,:) = temp;
% 
% temp = Cube(3,:);
% Cube(3,:) = Cube(4,:);
% Cube(4,:) = temp;


R = zeros(3,3,6);

for s = 1:S
i = 1;
j = 1;
    for p = 1:P

        R(i,j,s) = Cube(s,p);


        if j < 3
            j= j+1;
        else
            j = 1;
            if i < 3
               i = i + 1;
            end
        end
        
    end
end

R(:,:,1) = rot90(R(:,:,1),2);
R(:,:,2) = rot90(R(:,:,2),2);
R(:,:,3) = rot90(R(:,:,3),2);
R(:,:,4) = rot90(R(:,:,4),2);
R(:,:,5) = rot90(R(:,:,5),2);
R(:,:,6) = rot90(R(:,:,6),3);

end

