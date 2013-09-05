function [ Y ] = H( q )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

r = length(q)/7;
Y = [];
for i=1:r
    j = (i-1)*7;
    x = zxc(q(j+2), q(j+3), q(j+4), q(j+5), q(j+6), q(j+7));
    Y = [Y; x];
end

end

