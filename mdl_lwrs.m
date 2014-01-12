function mdl = mdl_lwrs()

L(1) = Link([  sym('0')      sym('0.31')     sym('0')      sym('pi/2')   0], 'standard');
L(2) = Link([  sym('0')      sym('0')        sym('0')      sym('-pi/2')  0], 'standard');
L(3) = Link([  sym('0')      sym('0.4')      sym('0')      sym('-pi/2')  0], 'standard');
L(4) = Link([  sym('0')      sym('0')        sym('0')      sym('pi/2')   0], 'standard');
L(5) = Link([  sym('0')      sym('0.39')     sym('0')      sym('pi/2')   0], 'standard');
L(6) = Link([  sym('0')      sym('0')        sym('0')      sym('-pi/2')  0], 'standard');
L(7) = Link([  sym('0')      sym('0')        sym('0')      sym('0')             0], 'standard');

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
L(1).I = [sym('ixx1', 'real'); sym('iyy1', 'real'); sym('izz1', 'real'); sym('ixy1', 'real'); sym('iyz1', 'real'); sym('ixz1', 'real')];
L(2).I = [sym('ixx2', 'real'); sym('iyy2', 'real'); sym('izz2', 'real'); sym('ixy2', 'real'); sym('iyz2', 'real'); sym('ixz2', 'real')];
L(3).I = [sym('ixx3', 'real'); sym('iyy3', 'real'); sym('izz3', 'real'); sym('ixy3', 'real'); sym('iyz3', 'real'); sym('ixz3', 'real')];
L(4).I = [sym('ixx4', 'real'); sym('iyy4', 'real'); sym('izz4', 'real'); sym('ixy4', 'real'); sym('iyz4', 'real'); sym('ixz4', 'real')];
L(5).I = [sym('ixx5', 'real'); sym('iyy5', 'real'); sym('izz5', 'real'); sym('ixy5', 'real'); sym('iyz5', 'real'); sym('ixz5', 'real')];
L(6).I = [sym('ixx6', 'real'); sym('iyy6', 'real'); sym('izz6', 'real'); sym('ixy6', 'real'); sym('iyz6', 'real'); sym('ixz6', 'real')];
L(7).I = [sym('ixx7', 'real'); sym('iyy7', 'real'); sym('izz7', 'real'); sym('ixy7', 'real'); sym('iyz7', 'real'); sym('ixz7', 'real')];

%        Ixx     Iyy      Izz    Ixy     Iyz     Ixz
%L(1).I = [0; 0; sym('izz1', 'real'); 0; 0; 0];
%L(2).I = [sym('ixx2', 'real'); 0; sym('izz2', 'real'); 0; sym('iyz2', 'real'); 0];
%L(3).I = [sym('ixx3', 'real'); 0; sym('izz3', 'real'); 0; sym('iyz3', 'real'); 0];
%L(4).I = [sym('ixx4', 'real'); 0; sym('izz4', 'real'); 0; sym('iyz4', 'real'); 0];
%L(5).I = [sym('ixx5', 'real'); 0; sym('izz5', 'real'); 0; sym('iyz5', 'real'); 0];
%L(6).I = [sym('ixx6', 'real'); 0; sym('izz6', 'real'); 0; 0; 0];
%L(7).I = [0; 0; sym('izz7', 'real'); 0; 0; 0];

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

%mdl.base = r2t(rotx(sym('pi/3')));
