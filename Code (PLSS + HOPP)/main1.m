img = imread('E:\collage_research_work\feature\shadow\test\bn00009.bmp');
[ s ] = shadow_main_function( img );

% img = im2bw(img);
% img = imresize(img, [64 64]);
% 
% [ img1, img2, img3, img4 ] = four_parts( img );
% dp1 = return_data_pixel( img1 );
% dp2 = return_data_pixel( img2 );
% dp3 = return_data_pixel( img3 );
% dp4 = return_data_pixel( img4 );
% 
% [ LT1, RT1, RB1, LB1 ] = length_from_four_corner( img1, dp1 );
% [ LT2, RT2, RB2, LB2 ] = length_from_four_corner( img2, dp2 );
% [ LT3, RT3, RB3, LB3 ] = length_from_four_corner( img3, dp3 );
% [ LT4, RT4, RB4, LB4 ] = length_from_four_corner( img4, dp4 );
% 
% s1 = [ LT1 RT1 RB1 LB1 ];
% s2 = [ LT2 RT2 RB2 LB2 ];
% s3 = [ LT3 RT3 RB3 LB3 ];
% s4 = [ LT4 RT4 RB4 LB4 ];
% 
% s = [s1 s2 s3 s4];