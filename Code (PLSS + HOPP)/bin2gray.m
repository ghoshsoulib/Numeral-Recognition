function [img] = bin2gray(imgbin)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

[r,c] = size(imgbin);

for i = 1:r
    for j = 1:c
        if(imgbin(i,j) == 0)
            img(i,j) = 0;
        end
        
        if(imgbin(i,j) == 1)
            img(i,j) = 255;
        end
    end
end

end

