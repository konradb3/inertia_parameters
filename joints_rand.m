function [ q ] = joints_rand( num, mdl )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

q = [];

range = mdl.qlim(:, 2) - mdl.qlim(:, 1);

for i=1:num
    rnd = rand(size(range, 1),1) - 0.5;
    q0 = rnd.*range;
    q = [q; q0];
end

end

