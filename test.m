%q = [sym('q1', 'real') sym('q2', 'real') sym('q3', 'real') sym('q4', 'real') sym('q5', 'real') sym('q6', 'real') sym('q7', 'real')];
%sym_params = [sym('m1', 'real'); sym('mx1', 'real'); sym('my1', 'real'); sym('mz1', 'real'); sym('m2', 'real'); sym('mx2', 'real'); sym('my2', 'real'); sym('mz2', 'real'); sym('m3', 'real'); sym('mx3', 'real'); sym('my3', 'real'); sym('mz3', 'real'); sym('m4', 'real'); sym('mx4', 'real'); sym('my4', 'real'); sym('mz4', 'real'); sym('m5', 'real'); sym('mx5', 'real'); sym('my5', 'real'); sym('mz5', 'real'); sym('m6', 'real'); sym('mx6', 'real'); sym('my6', 'real'); sym('mz6', 'real'); sym('m7', 'real'); sym('mx7', 'real'); sym('my7', 'real'); sym('mz7', 'real'); sym('ixx1', 'real'); sym('iyy1', 'real'); sym('izz1', 'real'); sym('ixy1', 'real'); sym('iyz1', 'real'); sym('ixz1', 'real'); sym('ixx2', 'real'); sym('iyy2', 'real'); sym('izz2', 'real'); sym('ixy2', 'real'); sym('iyz2', 'real'); sym('ixz2', 'real');sym('ixx3', 'real'); sym('iyy3', 'real'); sym('izz3', 'real'); sym('ixy3', 'real'); sym('iyz3', 'real'); sym('ixz3', 'real');sym('ixx4', 'real'); sym('iyy4', 'real'); sym('izz4', 'real'); sym('ixy4', 'real'); sym('iyz4', 'real'); sym('ixz4', 'real');sym('ixx5', 'real'); sym('iyy5', 'real'); sym('izz5', 'real'); sym('ixy5', 'real'); sym('iyz5', 'real'); sym('ixz5', 'real');sym('ixx6', 'real'); sym('iyy6', 'real'); sym('izz6', 'real'); sym('ixy6', 'real'); sym('iyz6', 'real'); sym('ixz6', 'real'); sym('ixx7', 'real'); sym('iyy7', 'real'); sym('izz7', 'real'); sym('ixy7', 'real'); sym('iyz7', 'real'); sym('ixz7', 'real')];

%lwr = mdl_lwrs;
%load('KB0.mat')

lwr_iniertia;

[par, X] = minineparam(lwr);

K123(size(X, 1), size(K, 1)) = sym();
for i = 1:size(K,1)
    K123(:, i) = subs(X, B0(end:-1:1), K(i,size(K,2):-1:1), 0);
end

%g = K123'*par;

% K11fun = matlabFunction(K123', 'file', 'K123fun');
% 
% 
% K11fun2 = @(q1, q2, q3 ,q4, q5, q6, q7)K123fun(0.4, 0.39, 9.81, q1, q2, q3 ,q4, q5, q6, q7);
% cost2 = @(q)cost(q, K11fun2);
% 
% opt = optimset(optimset('fmincon'), 'MaxFunEvals', 100000, 'MaxIter', 1000);
% opt.Algorithm = 'interior-point';
% [x, fval] = fmincon(cost2, joints_rand(10, lwr),[], [], [], [], repmat(lwr.qlim(:,1), 10, 1), repmat(lwr.qlim(:,2), 10, 1), [], opt);