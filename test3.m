lwrs = mdl_lwr;
%load('KB0.mat')
% 
%lwr_inertia;

%[par, X] = minineparam(lwrs);

%K123(size(X, 1), size(K, 1)) = sym();
%for i = 1:size(K,1)
%    K123(:, i) = subs(X, B0(end:-1:1), K(i,size(K,2):-1:1)', 0);
%end

%g = K123'*par;

%K11fun = matlabFunction(K123', 'file', 'K123fun');
K11fun2 = @(q1, q2, q3 ,q4, q5, q6, q7)K123fun( pi/3, 0.4, 0.39, 0.078, 9.81, q1, q2, q3 ,q4, q5, q6, q7);
cost2 = @(q)cost(q, K11fun2);

opt = optimset(optimset('fmincon'), 'MaxFunEvals', 10000000, 'MaxIter', 30000);
%opt.Algorithm = 'interior-point';
[q0, fval] = fmincon(cost2, joints_rand(10, lwrs),[], [], [], [], repmat(lwrs.qlim(:,1), 10, 1), repmat(lwrs.qlim(:,2), 10, 1), [], opt);

q0 = [q0; q0((end-7):end)];
save('q.mat', 'q0', '-v4');
