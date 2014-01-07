W = H(joints_rand(30));
[u s v] = svd(W);
b = rank(W);
c = size(v,2);

v2 = v(:, (b+1):size(v,2));


z = c + 1 - nchoosek(1:c, c);
I = eye(c);
while 1
    P = I(randperm(c),:);
    m = P*v2;
    if det(m((b+1):c,:)) > eps
        break
    end
end

vv2 = P * v2;
v21 = vv2(1:b, :);
v22 = vv2((b+1):c, :);

B = v21 / v22;

B1 = round(B*1000)/1000;

fi = P * B0;
fi1 = fi(1:b);
fi2 = fi((b+1):c);

fib = fi1 - B1 * fi2

K1 = P*K';
K11 = K1(1:b,:);
K12 = K1((b+1):c, :);

K2 = K11 - B1 * K12;

tmp = K*B0 - K11'*fib;

z = zeros(1, 7);
z = sym(z);

parfor i = 1:size(tmp, 2)
    z(i) = simplify(tmp(i));
end

%simplify(K*B0 == K11'*fib)

matlabFunction(K11', 'file', 'zxc');


