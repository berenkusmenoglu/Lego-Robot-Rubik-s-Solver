function [ colors ] = gridPlacer( cam )

photo = snapshot(cam);

x_start = 1;
y_start = 1;

gap = 20;
wh = 150;

photo = imcrop(photo, [310,150,500,500]);

photo = im2double(photo);

imshow(photo);


hold on
% diff_im = imsubtract(photo(:,:,2), rgb2gray(photo));

r = 0;
g = 0;
b = 0;

RGB = zeros(3,3,3);

for i=1:3
    for j=1:3

        for k =  x_start+(gap*(i-1))+(wh*(i-1)):  ((wh*i) + x_start + gap*(i-1))
            for l =  y_start+(gap*(j-1))+(wh*(j-1)): ((wh*j) + y_start + gap*(j-1))
                
                r = r + photo(k,l,1);
                g = g + photo(k,l,2);
                b = b + photo(k,l,3);
                
            end
        end
        
        RGB(j,i,1) = r/(wh*wh);
        RGB(j,i,2) =  g/(wh*wh);
        RGB(j,i,3) =  b/(wh*wh);
        
        rectangle('Position',[x_start+(gap*(i-1))+(wh*(i-1)) y_start+(gap*(j-1)+(wh*(j-1))) wh wh],'Curvature',[0.1],'EdgeColor','c')
        r=0;
        g=0;
        b=0;
        
    end
    
end

colors = getColorsFromNumbers(RGB);
colors = colors';
%plotColors = rot90(colors,-1);

%rubplot(plotColors);
end
