lwr = mdl_lwrs();

q = [sym('q1', 'real') sym('q2', 'real') sym('q3', 'real') sym('q4', 'real') sym('q5', 'real') sym('q6', 'real') sym('q7', 'real')];

inertia_sym = lwr.inertia(q);
grav_sym = lwr.gravload(q);

mdl_sym = [inertia_sym(itriu(size(inertia_sym)))', grav_sym];

sym_params = [sym('m1'); sym('mx1'); sym('my1'); sym('mz1'); sym('m2'); sym('mx2'); sym('my2'); sym('mz2'); sym('m3'); sym('mx3'); sym('my3'); sym('mz3'); sym('m4'); sym('mx4'); sym('my4'); sym('mz4'); sym('m5'); sym('mx5'); sym('my5'); sym('mz5'); sym('m6'); sym('mx6'); sym('my6'); sym('mz6'); sym('conj(m7)'); sym('mx7'); sym('my7'); sym('mz7'); sym('ixx1', 'real'); sym('iyy1', 'real'); sym('izz1', 'real'); sym('ixy1', 'real'); sym('iyz1', 'real'); sym('ixz1', 'real'); sym('ixx2', 'real'); sym('iyy2', 'real'); sym('izz2', 'real'); sym('ixy2', 'real'); sym('iyz2', 'real'); sym('ixz2', 'real');sym('ixx3', 'real'); sym('iyy3', 'real'); sym('izz3', 'real'); sym('ixy3', 'real'); sym('iyz3', 'real'); sym('ixz3', 'real');sym('ixx4', 'real'); sym('iyy4', 'real'); sym('izz4', 'real'); sym('ixy4', 'real'); sym('iyz4', 'real'); sym('ixz4', 'real');sym('ixx5', 'real'); sym('iyy5', 'real'); sym('izz5', 'real'); sym('ixy5', 'real'); sym('iyz5', 'real'); sym('ixz5', 'real');sym('ixx6', 'real'); sym('iyy6', 'real'); sym('izz6', 'real'); sym('ixy6', 'real'); sym('iyz6', 'real'); sym('ixz6', 'real'); sym('ixx7', 'real'); sym('iyy7', 'real'); sym('izz7', 'real'); sym('ixy7', 'real'); sym('iyz7', 'real'); sym('ixz7', 'real')];

[K, B0] = decompose(mdl_sym, sym_params);

%dupa;

