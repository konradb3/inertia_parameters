W = H(joints_rand(30));
[u s v] = svd(W);
b = rank(W);

v2 = v(:, (b+1):size(v,2));


z = 23 - nchoosek(1:22, 22);
I = eye(22);
while 1
    P = I(randperm(22),:);
    m = P*v2;
    if det(m(13:22,:)) > eps
        break
    end
end

vv2 = P * v2;
v21 = vv2(1:12, :);
v22 = vv2(13:22, :);

B = v21 / v22;

B1 = round(B*1000)/1000;

fi = P * B0';
fi1 = fi(1:12);
fi2 = fi(13:22);

fib = fi1 - B1 * fi2

K1 = P*K';
K11 = K1(1:12,:);
K12 = K1(13:22, :);

K2 = K11 - B1 * K12;

simplify(K*B0' == K11'*fib)

matlabFunction(K11', 'file', 'zxc');


