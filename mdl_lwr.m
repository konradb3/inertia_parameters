function mdl = mdl_lwr()

% L(1) = Link([  sym('0')      sym('0.31')     sym('0')      sym('pi/2')   0], 'standard');
% L(2) = Link([  sym('0')      sym('0')        sym('0')      sym('-pi/2')  0], 'standard');
% L(3) = Link([  sym('0')      sym('0.4')      sym('0')      sym('-pi/2')  0], 'standard');
% L(4) = Link([  sym('0')      sym('0')        sym('0')      sym('pi/2')   0], 'standard');
% L(5) = Link([  sym('0')      sym('0.39')     sym('0')      sym('pi/2')   0], 'standard');
% L(6) = Link([  sym('0')      sym('0')        sym('0')      sym('-pi/2')  0], 'standard');
% L(7) = Link([  sym('0')      sym('0')        sym('0')      sym('0')      0], 'standard');

L(1) = Link([  0      0.31     0      -pi/3   0], 'modified');
L(2) = Link([  0      0        0      -pi/2  0], 'modified');
L(3) = Link([  0      0.4      0      pi/2  0], 'modified');
L(4) = Link([  0      0        0      pi/2   0], 'modified');
L(5) = Link([  0      0.39     0      -pi/2   0], 'modified');
L(6) = Link([  0      0        0      -pi/2  0], 'modified');
L(7) = Link([  0      0.078    0      pi/2      0], 'modified');


L(1).m = 1;
L(2).m = 1;
L(3).m = 1;
L(4).m = 1;
L(5).m = 1;
L(6).m = 1;
L(7).m = 1;

%         rx      ry      rz
L(1).r = [    0.0;    0.1187;    0.0484];
L(2).r = [    0.0;    0.1170;    0.1301];
L(3).r = [    0.0;    0.1335;    0.1715];
L(4).r = [    0.0;    0.1296;    0.0169];
L(5).r = [    0.0;    0.0867;    0.1944];
L(6).r = [    0.0;    0.0280;    0.0063];
L(7).r = [    0.0;    0.1504;    0.1671];

%        Ixx     Iyy      Izz    Ixy     Iyz     Ixz
L(1).I = [    0.0836;    0.0790;    0.0748;     0.0010;    0.0018;    0.0064];
L(2).I = [    0.0050;    0.0799;    0.0568;     0.0086;    0.0071;    0.0034];
L(3).I = [    0.0546;    0.0050;    0.0299;     0.0003;    0.0083;    0.0022];
L(4).I = [    0.0943;    0.0283;    0.0256;     0.0090;    0.0003;    0.0079];
L(5).I = [    0.0321;    0.0653;    0.0887;     0.0090;    0.0076;    0.0072];
L(6).I = [    0.0806;    0.0490;    0.0447;     0.0052;    0.0096;    0.0028];
L(7).I = [    0.0601;    0.0973;    0.0816;     0.0012;    0.0034;    0.0058];

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

mdl.base = r2t(rotx(-pi/3));
