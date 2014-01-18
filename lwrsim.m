function [ Y ] = lwrsim(q0)

lwr = mdl_lwr();

n = size(q0, 1)/7;

Y = [];

for i = 1:n
    I = lwr.inertia(q0(((i-1)*7+1):(i*7))');
    Y = [Y; I(itriu(7)); lwr.gravload(q0(((i-1)*7+1):(i*7))')'];
end

end