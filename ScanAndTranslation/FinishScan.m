[cubeValues(1,:,:),~] = SaveColorsWithDifference(rgb1);
[cubeValues(2,:,:),~] = SaveColorsWithDifference(rgb2);
[cubeValues(3,:,:),~] = SaveColorsWithDifference(rgb3);
[cubeValues(4,:,:),~] = SaveColorsWithDifference(rgb4);
[cubeValues(5,:,:),~] = SaveColorsWithDifference(rgb5);
[cubeValues(6,:,:),~] = SaveColorsWithDifference(rgb6);

Cube = getColors(cubeValues);

R = TranslateCube(Cube);
R(:,:,6) = rot90(R(:,:,6),-1);
if rubcheck(R)
    rubplot(R);
    solution = Solve45(R);
end