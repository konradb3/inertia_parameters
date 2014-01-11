
Kfun = matlabFunction(K);

W = H(joints_rand(20, lwr), Kfun);
[u, s, v] = svd(W);
b = rank(W);
c = size(v,2);

v2 = v(:, (b+1):size(v,2));

u = [];

for i = 1:c
  if(abs(sum(v2(i, :))) < eps*10)
    u = [u, i];
  end
end

z = setdiff(nchoosek(1:c, c), u);

u
z

I = eye(c);
while 1
    P = I([u, z(randperm(size(z, 2)))],:);
    %z = nextperm(z);
    m = P*v2;
    %det(m((b+1):c,:))
    if abs(det(m((b+1):c,:))) > eps
        break
    end
end

vv2 = P * v2;
v21 = vv2(1:b, :);
v22 = vv2((b+1):c, :);

B = v21 / v22;

B1 = round(B*10000)/10000;

fi = P * B0';
fi1 = fi(1:b);
fi2 = fi((b+1):c);

fib = fi1 - B1 * fi2

K1 = P*K';
K11 = K1(1:b,:);
K12 = K1((b+1):c, :);

K2 = K11 - B1 * K12;

%tmp = K*B0' - K11'*fib;

tmp = grav_sym - K11'*fib;

z = zeros(1, 7);
z = sym(z);

parfor i = 1:size(tmp, 2)
    z(i) = simplify(tmp(i));
end

%simplify(K*B0 == K11'*fib)

z

K11fun = matlabFunction(K11', 'file', 'K11fun');

cost2 = @(q)cost(q, K11fun);

opt = optimset(optimset('fmincon'), 'MaxFunEvals', 100000, 'MaxIter', 1000);
[x, fval] = fmincon(cost2, joints_rand(5, lwr),[], [], [], [], repmat(lwr.qlim(:,1), 5, 1), repmat(lwr.qlim(:,2), 5, 1), [], opt);
