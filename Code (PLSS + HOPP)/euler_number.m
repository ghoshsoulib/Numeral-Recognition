function [ x ] = euler_number( img )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
img = im2bw(img);
x = bweuler(img);

end

