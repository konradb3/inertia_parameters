lwr_inertia;

[par, X, Z] = minineparam(lwrs);
 
K123(size(X, 1), size(K, 1)) = sym();
for i = 1:size(K,1)
    K123(:, i) = subs(X, B0(end:-1:1), K(i,size(K,2):-1:1), 0);
end

M = K123'*Z;

K11fun = matlabFunction(K123', 'file', 'K123fun'); 

%TODO generate ccode for M

tu = itriu(7);
tl = itril(7);

V = sym(zeros(7));

for i = 1:28
  V(tu(i)) = M(i);
end

Vt = V';

V = V + tril(Vt, -1);

ccode(V, 'file', 'inertia.c');

ccode(M((end-7):end), 'file', 'gravload.c');
