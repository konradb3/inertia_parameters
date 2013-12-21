function [ y ] = cost( q )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

%x0 = [ 2, 2, 2, 1, 0.5, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1];

y = cond(H(q));

end

