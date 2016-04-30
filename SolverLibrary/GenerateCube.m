function [ R ] = GenerateCube( d )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

cubePieces = cell(d,d,6);

for s = 1: 6
    for x =1:d
        for y =1:d
           piece = CubePiece(x,y,s);
           cubePieces{x,y,s} = piece;
        end
    end
end

R = cubePieces;

end

