load('X.mat');

%Y = X; % lwrsim(q(1:(5*7)));

W = H(qm, K11fun2);
fi = (W'*W)\W'*Y;

Y - W*fi
