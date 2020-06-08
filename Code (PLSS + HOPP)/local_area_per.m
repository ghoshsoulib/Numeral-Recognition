function [ fin ] = local_area_per( img,n )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

% img = im2bw(img);
% img = imresize(img,[64 64]);
[ img1, img2, img3, img4 ] = four_parts( img );

area_array = return_perimetre_arr( img, n );
area_array1 = return_perimetre_arr( img1, n );
area_array2 = return_perimetre_arr( img2, n );
area_array3 = return_perimetre_arr( img3, n );
area_array4 = return_perimetre_arr( img4, n );

fin = [area_array area_array1 area_array2 area_array3 area_array4];


end

