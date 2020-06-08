function [ flag ] = is_present_on_line( start, final, target )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here

slope1 = (final(2) - start(2)) / (final(1) - start(1));
slope2 = (final(2) - target(2)) / (final(1) - target(1));

flag = 0;

if abs(slope1-slope2) < 0.1
    flag = 1;
end


end

