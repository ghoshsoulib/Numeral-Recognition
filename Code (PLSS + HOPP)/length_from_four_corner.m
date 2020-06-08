function [ final ] = length_from_four_corner( img, data_list )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

LT = left_top_length(img, data_list);
RT = right_top_length(img, data_list);
RB = right_bottom_length(img, data_list);
LB = left_bottom_length(img, data_list);

final = [LT RT RB LB];


end

