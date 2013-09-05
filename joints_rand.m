function [ q ] = joints_rand( num )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

q = [];

range = [pi; pi; pi; pi; pi; pi; pi];

for i=1:num
    rnd = rand(7,1) * 2 - 1;
    q0 = rnd.*range;
    q = [q; q0];
end

end

