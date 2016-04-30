function [ RGB ] = ReadValues( cam )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
photo = snapshot(cam);

photo = im2double(photo);

photo = imcrop(photo, [448,219,294,294]);
imshow(photo);

hold on

wh = 68;

gapx = 30;
gapy = 32;


x_start = 10;
y_start = 10;


r = 0;
g = 0;
b = 0;

RGB = zeros(3,3,3);

for i=1:3
    for j=1:3
        
        for k =  x_start+(gapx*(i-1))+(wh*(i-1)):  ((wh*i) + x_start + gapx*(i-1))
            for l =  y_start+(gapy*(j-1))+(wh*(j-1)): ((wh*j) + y_start + gapy*(j-1))

                r = r + photo(k,l,1);
                g = g + photo(k,l,2);
                b = b + photo(k,l,3);
                
            end
        end
        
        RGB(j,i,1) = r/(wh*wh);
        RGB(j,i,2) =  g/(wh*wh);
        RGB(j,i,3) =  b/(wh*wh);
        
        rectangle('Position',[x_start+(gapx*(i-1))+(wh*(i-1)) y_start+(gapy*(j-1)+(wh*(j-1))) wh wh],'Curvature',[0.1],'EdgeColor','c')
        r=0;
        g=0;
        b=0;
        
    end
    
end

%plotColors = rot90(colors,-1);
%rubplot(plotColors);
%[cubeValues(1,:,:),~] = SaveColorsWithDifference(rgb1);
end

