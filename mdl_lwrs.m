function mdl = mdl_lwrs()

L(1) = Link([  0      0.31     0      sym('pi/2')   0], 'standard');
L(2) = Link([  0      0        0      sym('-pi/2')  0], 'standard');
L(3) = Link([  0      0.4      0      sym('-pi/2')  0], 'standard');
L(4) = Link([  0      0        0      sym('pi/2')   0], 'standard');
L(5) = Link([  0      0.39     0      sym('pi/2')   0], 'standard');
L(6) = Link([  0      0        0      sym('-pi/2')  0], 'standard');
L(7) = Link([  0      0.078    0      0             0], 'standard');

L(1).m = sym('m1', 'real');
L(2).m = sym('m2', 'real');
L(3).m = sym('m3', 'real');
L(4).m = sym('m4', 'real');
L(5).m = sym('m5', 'real');
L(6).m = sym('m6', 'real');
L(7).m = sym('m7', 'real');

%         rx      ry      rz
L(1).r = [sym('mx1', 'real'); sym('my1', 'real'); sym('mz1', 'real')];
L(2).r = [sym('mx2', 'real'); sym('my2', 'real'); sym('mz2', 'real')];
L(3).r = [sym('mx3', 'real'); sym('my3', 'real'); sym('mz3', 'real')];
L(4).r = [sym('mx4', 'real'); sym('my4', 'real'); sym('mz4', 'real')];
L(5).r = [sym('mx5', 'real'); sym('my5', 'real'); sym('mz5', 'real')];
L(6).r = [sym('mx6', 'real'); sym('my6', 'real'); sym('mz6', 'real')];
L(7).r = [sym('mx7', 'real'); sym('my7', 'real'); sym('mz7', 'real')];

%        Ixx     Iyy      Izz    Ixy     Iyz     Ixz
L(1).I = [0; 0; 0; 0; 0; 0];
L(2).I = [0; 0; 0; 0; 0; 0];
L(3).I = [0; 0; 0; 0; 0; 0];
L(4).I = [0; 0; 0; 0; 0; 0];
L(5).I = [0; 0; 0; 0; 0; 0];
L(6).I = [0; 0; 0; 0; 0; 0];
L(7).I = [0; 0; 0; 0; 0; 0];

L(1).Jm =  0;
L(2).Jm =  0;
L(3).Jm =  0;
L(4).Jm =  0;
L(5).Jm =  0;
L(6).Jm =  0;
L(7).Jm =  0;

L(1).G =  1;
L(2).G =  1;
L(3).G =  1;
L(4).G =  1;
L(5).G =  1;
L(6).G =  1;
L(7).G =  1;

deg = pi/180;

L(1).qlim = [-170 170] * deg;
L(2).qlim = [-120 120] * deg;
L(3).qlim = [-170 170] * deg;
L(4).qlim = [-120 120] * deg;
L(5).qlim = [-170 170] * deg;
L(6).qlim = [-120 120] * deg;
L(7).qlim = [-170 170] * deg;

% viscous friction (motor referenced)
% unknown

% Coulomb friction (motor referenced)
% unknown

mdl = SerialLink(L, 'name', 'LWR', 'manufacturer', 'KUKA', 'comment', 'AK&B');

mdl.base = r2t(rotx(pi/3));
