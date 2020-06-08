function [ area_array ] = return_area_arr( img, n )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here


cen = centroid( img );

area_array = zeros([1,(n+1)]);


[r,c] = size(img);
%cen = [r/2 c/2];

for i=1:r
    for j=1:c
        if img(i,j) == 0
            k = i-cen(1);
            l = j-cen(2);
            angle = getAngle([0 0],[k l]);
            index = get_index( angle, n );
            area_array(index) = area_array(index)+1;
        end
    end
end

            

end

