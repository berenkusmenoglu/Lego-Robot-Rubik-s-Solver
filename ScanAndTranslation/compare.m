
function [ diff ] = compare( colorOne, colorTwo )

rd = sqrt(sum((colorOne(1) - colorTwo(1)) .^ 2));
gd = sqrt(sum((colorOne(2) - colorTwo(2)) .^ 2));
bd = sqrt(sum((colorOne(3) - colorTwo(3)) .^ 2));

diff = rd + gd + bd;

end