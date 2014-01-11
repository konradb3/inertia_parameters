lwr = mdl_lwrs();

q = [sym('q1', 'real') sym('q2', 'real') sym('q3', 'real') sym('q4', 'real') sym('q5', 'real') sym('q6', 'real') sym('q7', 'real')];

grav_sym = lwr.gravload(q);

sym_params = [sym('m1'); sym('mx1'); sym('my1'); sym('mz1'); sym('m2'); sym('mx2'); sym('my2'); sym('mz2'); sym('m3'); sym('mx3'); sym('my3'); sym('mz3'); sym('m4'); sym('mx4'); sym('my4'); sym('mz4'); sym('m5'); sym('mx5'); sym('my5'); sym('mz5'); sym('m6'); sym('mx6'); sym('my6'); sym('mz6'); sym('conj(m7)'); sym('mx7'); sym('my7'); sym('mz7');];

[K, B0] = decompose(grav_sym, sym_params);

%dupa;

