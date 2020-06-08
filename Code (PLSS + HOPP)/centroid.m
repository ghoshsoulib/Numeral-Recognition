function [a] = centroid( img )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

img = imcomplement(img);
[r,c] = size(img);
count = 0;
for i = 1:r
    for j=1:c
        if img(i,j) == 1
            count = count + 1;
        end
    end
end

x = 0;
y = 0;

for i =1:r
    for j=1:c
        x = x+img(i,j)*i;
        
    end
end

x = x/count;

for i =1:r
    for j=1:c
        y = y+img(i,j)*j;
    end
end

y = y/count;

x = ceil(x);
y = ceil(y);

a = [x y];

end

