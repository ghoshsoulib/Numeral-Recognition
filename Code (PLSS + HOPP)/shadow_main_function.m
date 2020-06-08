function [ s ] = shadow_main_function( img )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here


%img = imresize(img, [64 64]);

[ img1, img2, img3, img4 ] = four_parts( img );
dp1 = return_data_pixel( img1 );
dp2 = return_data_pixel( img2 );
dp3 = return_data_pixel( img3 );
dp4 = return_data_pixel( img4 );
dp = return_data_pixel(img);

[ f1 ] = length_from_four_corner( img1, dp1 );
[ f2 ] = length_from_four_corner( img2, dp2 );
[ f3 ] = length_from_four_corner( img3, dp3 );
[ f4 ] = length_from_four_corner( img4, dp4 );
[f5] = length_from_four_corner(img,dp);


s = [f1 f2 f3 f4 f5];

end

