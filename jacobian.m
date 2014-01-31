
lwr = mdl_lwrs();

q = [sym('q0', 'real') sym('q1', 'real') sym('q2', 'real') sym('q3', 'real') sym('q4', 'real') sym('q5', 'real') sym('q6', 'real')];


J = lwr.jacobn(q);

ccode(J, 'file', 'jacobian.c');

T = lwr.fkine(q);

ccode(T, 'file', 'fkin.c');