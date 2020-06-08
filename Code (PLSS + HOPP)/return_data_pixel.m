function [ data_list ] = return_data_pixel( img )
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here

data_list = [];
[r,c] = size(img);
for i=1:r
    for j=1:c
        if img(i,j) == 0
            data_list = [data_list; [i,j]];
        end
    end
end

end

