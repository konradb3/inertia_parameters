function out1 = zxc(q2,q3,q4,q5,q6,q7)
%ZXC
%    OUT1 = ZXC(Q2,Q3,Q4,Q5,Q6,Q7)

%    This function was generated by the Symbolic Math Toolbox version 5.9.
%    10-Sep-2013 12:48:50

t2 = sin(q6);
t3 = cos(q2);
t4 = cos(q6);
t5 = sin(q2);
t6 = sin(q4);
t7 = cos(q3);
t8 = cos(q4);
t9 = cos(q5);
t10 = sin(q3);
t11 = sin(q5);
t12 = sin(q7);
t13 = cos(q7);
t14 = t5.*t7.*t8.*(9.81e2./1.0e2);
t16 = t3.*t6.*(9.81e2./1.0e2);
t15 = t14-t16;
t17 = t9.*t15;
t25 = t5.*t10.*t11.*(9.81e2./1.0e2);
t18 = t17-t25;
t19 = t3.*t8.*(9.81e2./1.0e2);
t20 = t5.*t6.*t7.*(9.81e2./1.0e2);
t21 = t19+t20;
t22 = t11.*t15;
t23 = t5.*t9.*t10.*(9.81e2./1.0e2);
t24 = t22+t23;
t26 = t4.*t18;
t27 = t2.*t21;
t28 = t26+t27;
t29 = t4.*t21;
t31 = t2.*t18;
t30 = t29-t31;
t32 = t13.*t24;
t33 = t12.*t28;
out1 = reshape([0.0,t2.*t5.*t8.*(-9.81e2./1.0e2)+t2.*t3.*t6.*t7.*(9.81e2./1.0e2)+t4.*t5.*t6.*t9.*(9.81e2./1.0e2)-t3.*t4.*t10.*t11.*(9.81e2./1.0e2)+t3.*t4.*t7.*t8.*t9.*(9.81e2./1.0e2),t5.*(t2.*t6.*t10.*5.0e2+t4.*t7.*t11.*5.0e2+t4.*t8.*t9.*t10.*5.0e2).*(-1.962e-2),t2.*t3.*t6.*(-9.81e2./1.0e2)+t2.*t5.*t7.*t8.*(9.81e2./1.0e2)-t3.*t4.*t8.*t9.*(9.81e2./1.0e2)-t4.*t5.*t6.*t7.*t9.*(9.81e2./1.0e2),t3.*t4.*t6.*t11.*(9.81e2./1.0e2)-t4.*t5.*t9.*t10.*(9.81e2./1.0e2)-t4.*t5.*t7.*t8.*t11.*(9.81e2./1.0e2),t30,0.0,0.0,t4.*t5.*t8.*(-9.81e2./1.0e2)+t3.*t4.*t6.*t7.*(9.81e2./1.0e2)-t2.*t5.*t6.*t9.*(9.81e2./1.0e2)+t2.*t3.*t10.*t11.*(9.81e2./1.0e2)-t2.*t3.*t7.*t8.*t9.*(9.81e2./1.0e2),t5.*(t2.*t7.*t11.*5.0e2-t4.*t6.*t10.*5.0e2+t2.*t8.*t9.*t10.*5.0e2).*1.962e-2,t3.*t4.*t6.*(-9.81e2./1.0e2)+t2.*t3.*t8.*t9.*(9.81e2./1.0e2)+t4.*t5.*t7.*t8.*(9.81e2./1.0e2)+t2.*t5.*t6.*t7.*t9.*(9.81e2./1.0e2),t2.*t3.*t6.*t11.*(-9.81e2./1.0e2)+t2.*t5.*t9.*t10.*(9.81e2./1.0e2)+t2.*t5.*t7.*t8.*t11.*(9.81e2./1.0e2),-t12.*(t32+t33)+t13.*(t12.*t24-t13.*t28),0.0,0.0,t3.*(9.81e2./1.0e2),0.0,0.0,0.0,0.0,0.0,0.0,t3.*t7.*(9.81e2./1.0e2),t5.*t10.*(-9.81e2./1.0e2),0.0,0.0,0.0,0.0,0.0,t5.*t6.*(9.81e2./1.0e2)+t3.*t7.*t8.*(9.81e2./1.0e2),t5.*t8.*t10.*(-9.81e2./1.0e2),t3.*t8.*(-9.81e2./1.0e2)-t5.*t6.*t7.*(9.81e2./1.0e2),0.0,0.0,0.0,0.0,t3.*t10.*(-9.81e2./1.0e2),t5.*t7.*(-9.81e2./1.0e2),0.0,0.0,0.0,0.0,0.0,t2.*t5.*t8.*t13.*(-9.81e2./1.0e2)-t3.*t9.*t10.*t12.*(9.81e2./1.0e2)-t5.*t6.*t11.*t12.*(9.81e2./1.0e2)+t2.*t3.*t6.*t7.*t13.*(9.81e2./1.0e2)+t4.*t5.*t6.*t9.*t13.*(9.81e2./1.0e2)-t3.*t4.*t10.*t11.*t13.*(9.81e2./1.0e2)-t3.*t7.*t8.*t11.*t12.*(9.81e2./1.0e2)+t3.*t4.*t7.*t8.*t9.*t13.*(9.81e2./1.0e2),t5.*(t7.*t9.*t12.*5.0e2+t2.*t6.*t10.*t13.*5.0e2+t4.*t7.*t11.*t13.*5.0e2-t8.*t10.*t11.*t12.*5.0e2+t4.*t8.*t9.*t10.*t13.*5.0e2).*(-1.962e-2),t2.*t3.*t6.*t13.*(-9.81e2./1.0e2)+t3.*t8.*t11.*t12.*(9.81e2./1.0e2)+t2.*t5.*t7.*t8.*t13.*(9.81e2./1.0e2)-t3.*t4.*t8.*t9.*t13.*(9.81e2./1.0e2)+t5.*t6.*t7.*t11.*t12.*(9.81e2./1.0e2)-t4.*t5.*t6.*t7.*t9.*t13.*(9.81e2./1.0e2),t3.*t6.*t9.*t12.*(9.81e2./1.0e2)+t5.*t10.*t11.*t12.*(9.81e2./1.0e2)+t3.*t4.*t6.*t11.*t13.*(9.81e2./1.0e2)-t4.*t5.*t9.*t10.*t13.*(9.81e2./1.0e2)-t5.*t7.*t8.*t9.*t12.*(9.81e2./1.0e2)-t4.*t5.*t7.*t8.*t11.*t13.*(9.81e2./1.0e2),t13.*t30,-t32-t33,0.0,t5.*t8.*(-9.81e2./1.0e2)+t3.*t6.*t7.*(9.81e2./1.0e2),t5.*t6.*t10.*(-9.81e2./1.0e2),t15,0.0,0.0,0.0,0.0,t3.*t9.*t10.*(9.81e2./1.0e2)+t5.*t6.*t11.*(9.81e2./1.0e2)+t3.*t7.*t8.*t11.*(9.81e2./1.0e2),t5.*(t7.*t9.*5.0e2-t8.*t10.*t11.*5.0e2).*1.962e-2,t3.*t8.*t11.*(-9.81e2./1.0e2)-t5.*t6.*t7.*t11.*(9.81e2./1.0e2),t3.*t6.*t9.*(-9.81e2./1.0e2)-t5.*t10.*t11.*(9.81e2./1.0e2)+t5.*t7.*t8.*t9.*(9.81e2./1.0e2),0.0,0.0,0.0,t2.*t5.*t8.*t12.*(9.81e2./1.0e2)-t3.*t9.*t10.*t13.*(9.81e2./1.0e2)-t5.*t6.*t11.*t13.*(9.81e2./1.0e2)-t2.*t3.*t6.*t7.*t12.*(9.81e2./1.0e2)-t4.*t5.*t6.*t9.*t12.*(9.81e2./1.0e2)+t3.*t4.*t10.*t11.*t12.*(9.81e2./1.0e2)-t3.*t7.*t8.*t11.*t13.*(9.81e2./1.0e2)-t3.*t4.*t7.*t8.*t9.*t12.*(9.81e2./1.0e2),t5.*(t7.*t9.*t13.*-5.0e2+t2.*t6.*t10.*t12.*5.0e2+t4.*t7.*t11.*t12.*5.0e2+t8.*t10.*t11.*t13.*5.0e2+t4.*t8.*t9.*t10.*t12.*5.0e2).*1.962e-2,t2.*t3.*t6.*t12.*(9.81e2./1.0e2)+t3.*t8.*t11.*t13.*(9.81e2./1.0e2)-t2.*t5.*t7.*t8.*t12.*(9.81e2./1.0e2)+t3.*t4.*t8.*t9.*t12.*(9.81e2./1.0e2)+t5.*t6.*t7.*t11.*t13.*(9.81e2./1.0e2)+t4.*t5.*t6.*t7.*t9.*t12.*(9.81e2./1.0e2),t3.*t6.*t9.*t13.*(9.81e2./1.0e2)+t5.*t10.*t11.*t13.*(9.81e2./1.0e2)-t3.*t4.*t6.*t11.*t12.*(9.81e2./1.0e2)+t4.*t5.*t9.*t10.*t12.*(9.81e2./1.0e2)-t5.*t7.*t8.*t9.*t13.*(9.81e2./1.0e2)+t4.*t5.*t7.*t8.*t11.*t12.*(9.81e2./1.0e2),-t12.*t30,t12.*(t22+t23)-t13.*t28,0.0,t5.*(-9.81e2./2.5e2),0.0,0.0,0.0,0.0,0.0,0.0,t5.*t6.*t9.*(9.81e2./1.0e2)-t3.*t10.*t11.*(9.81e2./1.0e2)+t3.*t7.*t8.*t9.*(9.81e2./1.0e2),t5.*(t7.*t11.*5.0e2+t8.*t9.*t10.*5.0e2).*(-1.962e-2),t3.*t8.*t9.*(-9.81e2./1.0e2)-t5.*t6.*t7.*t9.*(9.81e2./1.0e2),t3.*t6.*t11.*(9.81e2./1.0e2)-t5.*t9.*t10.*(9.81e2./1.0e2)-t5.*t7.*t8.*t11.*(9.81e2./1.0e2),0.0,0.0],[7, 12]);
