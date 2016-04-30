function [ calibColors ] = calibration( cam )

calibColors = zeros(1,1,3);


r = 0;
g = 0;
b = 0;

photo = snapshot(cam);
x_start = 35;
y_start = 32;

gap = 0;
wh = 140;

photo = imcrop(photo, [x_start,y_start,490,490]);

photo = im2double(photo);

imshow(photo);
i =2;
j =2;
hold on
for k =  x_start+(gap*(i-1))+(wh*(i-1)):  ((wh*i) + x_start + gap*(i-1))
    for l =  y_start+(gap*(j-1))+(wh*(j-1)): ((wh*j) + y_start + gap*(j-1))
        
        r = r + photo(k,l,1);
        g = g + photo(k,l,2);
        b = b + photo(k,l,3);
        rectangle('Position',[x_start+(gap*(i-1))+(wh*(i-1)) y_start+(gap*(j-1)+(wh*(j-1))) wh wh],'Curvature',[0.1],'EdgeColor','c')

    end
end

calibColors(1,1,1) = r/(wh*wh);
calibColors(1,1,2) =  g/(wh*wh);
calibColors(1,1,3) =  b/(wh*wh);

end

