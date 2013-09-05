

lwr_grav;
cg = CodeGenerator(lwr, 'workspace');

grav_sym = cg.gengravload;


sym_params = [sym('m1'); sym('mx1'); sym('my1'); sym('mz1'); sym('m2'); sym('mx2'); sym('my2'); sym('mz2'); sym('m3'); sym('mx3'); sym('my3'); sym('mz3'); sym('m4'); sym('mx4'); sym('my4'); sym('mz4'); sym('m5'); sym('mx5'); sym('my5'); sym('mz5'); sym('m6'); sym('mx6'); sym('my6'); sym('mz6'); sym('conj(m7)'); sym('mx7'); sym('my7'); sym('mz7');];

A = cell(7);
B = cell(7);

for i=1:7
    [A{i} B{i}] = coeffs(grav_sym(i), sym_params);
end

B0 = [];
for i=1:7
    B0 = union(B0, B{i});
end

K = zeros(7, length(B0));
K = sym(K);

for i=1:7
    if (length(A{i}) > 0)
        for j=1:length(B0)
            tmp = A{i}(B{i}==B0(j));
            if (length(tmp) == 1)
                K(i, j) = tmp;
            end
        end
    end
end

matlabFunction(K, 'file', 'zxc');
