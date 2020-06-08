function [ index ] = get_index( angle, n )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

for i=1:(n+1)
    arr(i) = (i-1)*(360/n);
end

diff = abs(arr-angle);

[~,index] = min(diff);

end

