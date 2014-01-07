function [K, B0] = decompose(eq, sym_params)

A = cell(length(eq));
B = cell(length(eq));

for i=1:length(eq)
    [A{i}, B{i}] = coeffs(eq(i), sym_params);
end

B0 = [];
for i=1:length(eq)
    B0 = union(B0, B{i});
end

K = zeros(length(eq), length(B0));
K = sym(K);

for i=1:length(eq)
    if (~isempty(A{i}))
        for j=1:length(B0)
            tmp = A{i}(B{i}==B0(j));
            if (length(tmp) == 1)
                K(i, j) = tmp;
            end
        end
    end
end
