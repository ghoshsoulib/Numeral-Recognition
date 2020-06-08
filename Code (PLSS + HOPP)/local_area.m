function [ fin ] = local_area( img,n )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here


[ img1, img2, img3, img4 ] = four_parts( img );

area_array = return_area_arr( img, n );
area_array1 = return_area_arr( img1, n );
area_array2 = return_area_arr( img2, n );
area_array3 = return_area_arr( img3, n );
area_array4 = return_area_arr( img4, n );

fin = [area_array area_array1 area_array2 area_array3 area_array4];


end

