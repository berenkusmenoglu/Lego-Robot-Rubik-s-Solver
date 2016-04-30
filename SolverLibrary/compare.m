rd = sqrt(sum((RGB(1,3,1) - RGB(1,2,1)) .^ 2))
gd = sqrt(sum((RGB(1,3,2) - RGB(1,2,2)) .^ 2))
bd = sqrt(sum((RGB(1,3,3) - RGB(1,2,3)) .^ 2))

rd + gd + bd