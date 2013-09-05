function K = K(q2,q3,q4,q5,q6,q7)
%K
%    K = K(Q2,Q3,Q4,Q5,Q6,Q7)

%    This function was generated by the Symbolic Math Toolbox version 5.9.
%    04-Sep-2013 14:12:44

t2 = sin(q2);
t3 = cos(q4);
t4 = cos(q2);
t5 = cos(q3);
t6 = sin(q4);
t7 = t4.*t5.*t6.*3.8259;
t9 = t2.*(9.81e2./2.5e2);
t10 = t2.*t3.*3.8259;
t8 = t7-t9-t10;
t11 = cos(q5);
t12 = sin(q6);
t13 = sin(q3);
t14 = sin(q5);
t15 = cos(q6);
t16 = sin(q7);
t17 = cos(q7);
t18 = t2.*(9.81e2./1.0e2);
t19 = t4.*t5.*t6.*(9.81e2./1.0e2);
t20 = t19-t2.*t3.*(9.81e2./1.0e2);
t21 = t4.*t5.*t6.*t15.*(9.81e2./1.0e2);
t22 = t4.*t12.*t13.*t14.*(9.81e2./1.0e2);
t23 = t21+t22-t2.*t3.*t15.*(9.81e2./1.0e2)-t2.*t6.*t11.*t12.*(9.81e2./1.0e2)-t3.*t4.*t5.*t11.*t12.*(9.81e2./1.0e2);
t24 = t5.*t11.*1.0e2;
t25 = t24-t3.*t13.*t14.*1.0e2;
t26 = t5.*t12.*t14.*1.0e2;
t27 = t3.*t11.*t12.*t13.*1.0e2;
t28 = t26+t27-t6.*t13.*t15.*1.0e2;
t29 = t2.*t28.*9.81e-2;
t30 = t2.*t3.*t5.*3.8259;
t32 = t4.*t6.*3.8259;
t31 = t30-t32;
t33 = t2.*t3.*t5.*(9.81e2./1.0e2);
t46 = t4.*t6.*(9.81e2./1.0e2);
t34 = t33-t46;
t35 = t3.*t4.*t14.*(9.81e2./1.0e2);
t36 = t2.*t5.*t6.*t14.*(9.81e2./1.0e2);
t37 = t2.*t3.*t5.*t15.*(9.81e2./1.0e2);
t38 = t3.*t4.*t11.*t12.*(9.81e2./1.0e2);
t39 = t2.*t5.*t6.*t11.*t12.*(9.81e2./1.0e2);
t40 = t37+t38+t39-t4.*t6.*t15.*(9.81e2./1.0e2);
t41 = t2.*t13.*t14.*(9.81e2./1.0e2);
t42 = t4.*t6.*t11.*(9.81e2./1.0e2);
t43 = t2.*t11.*t12.*t13.*(9.81e2./1.0e2);
t44 = t2.*t3.*t5.*t12.*t14.*(9.81e2./1.0e2);
t45 = t43+t44-t4.*t6.*t12.*t14.*(9.81e2./1.0e2);
t54 = t11.*t34;
t47 = t41-t54;
t48 = t12.*t47;
t49 = t3.*t4.*(9.81e2./1.0e2);
t50 = t2.*t5.*t6.*(9.81e2./1.0e2);
t51 = t49+t50;
t52 = t15.*t51;
t53 = t48+t52;
t55 = t15.*t47;
t60 = t12.*t51;
t56 = t55-t60;
t57 = t14.*t34;
t58 = t2.*t11.*t13.*(9.81e2./1.0e2);
t59 = t57+t58;
t61 = t16.*t56;
t62 = t61-t17.*t59;
t63 = t17.*t56;
K = reshape([0.0,t2.*(-9.81e2./2.5e2),0.0,0.0,0.0,0.0,0.0,0.0,t2.*(-9.81e2./2.5e2),0.0,0.0,0.0,0.0,0.0,0.0,t8,t2.*t6.*t13.*(-3.8259),t31,0.0,0.0,0.0,0.0,t8,t2.*t6.*t13.*(-3.8259),t31,0.0,0.0,0.0,0.0,t8,t2.*t6.*t13.*(-3.8259),t31,0.0,0.0,0.0,0.0,t4.*(9.81e2./1.0e2),0.0,0.0,0.0,0.0,0.0,0.0,t4.*t5.*(9.81e2./1.0e2),t2.*t13.*(-9.81e2./1.0e2),0.0,0.0,0.0,0.0,0.0,t2.*t6.*(9.81e2./1.0e2)+t3.*t4.*t5.*(9.81e2./1.0e2),t2.*t3.*t13.*(-9.81e2./1.0e2),t3.*t4.*(-9.81e2./1.0e2)-t2.*t5.*t6.*(9.81e2./1.0e2),0.0,0.0,0.0,0.0,t2.*t6.*t11.*(9.81e2./1.0e2)-t4.*t13.*t14.*(9.81e2./1.0e2)+t3.*t4.*t5.*t11.*(9.81e2./1.0e2),t2.*(t5.*t14.*1.0e2+t3.*t11.*t13.*1.0e2).*(-9.81e-2),t3.*t4.*t11.*(-9.81e2./1.0e2)-t2.*t5.*t6.*t11.*(9.81e2./1.0e2),t4.*t6.*t14.*(9.81e2./1.0e2)-t2.*t11.*t13.*(9.81e2./1.0e2)-t2.*t3.*t5.*t14.*(9.81e2./1.0e2),0.0,0.0,0.0,t2.*t3.*t12.*(-9.81e2./1.0e2)+t4.*t5.*t6.*t12.*(9.81e2./1.0e2)+t2.*t6.*t11.*t15.*(9.81e2./1.0e2)-t4.*t13.*t14.*t15.*(9.81e2./1.0e2)+t3.*t4.*t5.*t11.*t15.*(9.81e2./1.0e2),t2.*(t6.*t12.*t13.*1.0e2+t5.*t14.*t15.*1.0e2+t3.*t11.*t13.*t15.*1.0e2).*(-9.81e-2),t4.*t6.*t12.*(-9.81e2./1.0e2)+t2.*t3.*t5.*t12.*(9.81e2./1.0e2)-t3.*t4.*t11.*t15.*(9.81e2./1.0e2)-t2.*t5.*t6.*t11.*t15.*(9.81e2./1.0e2),t4.*t6.*t14.*t15.*(9.81e2./1.0e2)-t2.*t11.*t13.*t15.*(9.81e2./1.0e2)-t2.*t3.*t5.*t14.*t15.*(9.81e2./1.0e2),t53,0.0,0.0,t2.*t3.*t12.*t17.*(-9.81e2./1.0e2)-t2.*t6.*t14.*t16.*(9.81e2./1.0e2)-t4.*t11.*t13.*t16.*(9.81e2./1.0e2)-t3.*t4.*t5.*t14.*t16.*(9.81e2./1.0e2)+t4.*t5.*t6.*t12.*t17.*(9.81e2./1.0e2)+t2.*t6.*t11.*t15.*t17.*(9.81e2./1.0e2)-t4.*t13.*t14.*t15.*t17.*(9.81e2./1.0e2)+t3.*t4.*t5.*t11.*t15.*t17.*(9.81e2./1.0e2),t2.*(t5.*t11.*t16.*1.0e2-t3.*t13.*t14.*t16.*1.0e2+t6.*t12.*t13.*t17.*1.0e2+t5.*t14.*t15.*t17.*1.0e2+t3.*t11.*t13.*t15.*t17.*1.0e2).*(-9.81e-2),t3.*t4.*t14.*t16.*(9.81e2./1.0e2)-t4.*t6.*t12.*t17.*(9.81e2./1.0e2)+t2.*t3.*t5.*t12.*t17.*(9.81e2./1.0e2)+t2.*t5.*t6.*t14.*t16.*(9.81e2./1.0e2)-t3.*t4.*t11.*t15.*t17.*(9.81e2./1.0e2)-t2.*t5.*t6.*t11.*t15.*t17.*(9.81e2./1.0e2),t4.*t6.*t11.*t16.*(9.81e2./1.0e2)+t2.*t13.*t14.*t16.*(9.81e2./1.0e2)-t2.*t3.*t5.*t11.*t16.*(9.81e2./1.0e2)+t4.*t6.*t14.*t15.*t17.*(9.81e2./1.0e2)-t2.*t11.*t13.*t15.*t17.*(9.81e2./1.0e2)-t2.*t3.*t5.*t14.*t15.*t17.*(9.81e2./1.0e2),t17.*t53,t62,0.0,t18,0.0,0.0,0.0,0.0,0.0,0.0,t4.*t13.*(-9.81e2./1.0e2),t2.*t5.*(-9.81e2./1.0e2),0.0,0.0,0.0,0.0,0.0,t20,t2.*t6.*t13.*(-9.81e2./1.0e2),t34,0.0,0.0,0.0,0.0,t2.*t6.*t14.*(-9.81e2./1.0e2)-t4.*t11.*t13.*(9.81e2./1.0e2)-t3.*t4.*t5.*t14.*(9.81e2./1.0e2),t2.*t25.*(-9.81e-2),t35+t36,t41+t42-t2.*t3.*t5.*t11.*(9.81e2./1.0e2),0.0,0.0,0.0,t2.*t3.*t12.*t16.*(9.81e2./1.0e2)-t2.*t6.*t14.*t17.*(9.81e2./1.0e2)-t4.*t11.*t13.*t17.*(9.81e2./1.0e2)-t3.*t4.*t5.*t14.*t17.*(9.81e2./1.0e2)-t4.*t5.*t6.*t12.*t16.*(9.81e2./1.0e2)-t2.*t6.*t11.*t15.*t16.*(9.81e2./1.0e2)+t4.*t13.*t14.*t15.*t16.*(9.81e2./1.0e2)-t3.*t4.*t5.*t11.*t15.*t16.*(9.81e2./1.0e2),t2.*(t5.*t11.*t17.*-1.0e2+t3.*t13.*t14.*t17.*1.0e2+t6.*t12.*t13.*t16.*1.0e2+t5.*t14.*t15.*t16.*1.0e2+t3.*t11.*t13.*t15.*t16.*1.0e2).*9.81e-2,t3.*t4.*t14.*t17.*(9.81e2./1.0e2)+t4.*t6.*t12.*t16.*(9.81e2./1.0e2)-t2.*t3.*t5.*t12.*t16.*(9.81e2./1.0e2)+t2.*t5.*t6.*t14.*t17.*(9.81e2./1.0e2)+t3.*t4.*t11.*t15.*t16.*(9.81e2./1.0e2)+t2.*t5.*t6.*t11.*t15.*t16.*(9.81e2./1.0e2),t4.*t6.*t11.*t17.*(9.81e2./1.0e2)+t2.*t13.*t14.*t17.*(9.81e2./1.0e2)-t2.*t3.*t5.*t11.*t17.*(9.81e2./1.0e2)-t4.*t6.*t14.*t15.*t16.*(9.81e2./1.0e2)+t2.*t11.*t13.*t15.*t16.*(9.81e2./1.0e2)+t2.*t3.*t5.*t14.*t15.*t16.*(9.81e2./1.0e2),-t16.*t53,t63+t16.*(t57+t58),0.0,-t18,0.0,0.0,0.0,0.0,0.0,0.0,t4.*t13.*(-9.81e2./1.0e2),t2.*t5.*(-9.81e2./1.0e2),0.0,0.0,0.0,0.0,0.0,t20,t2.*t6.*t13.*(-9.81e2./1.0e2),t34,0.0,0.0,0.0,0.0,t2.*t6.*t14.*(9.81e2./1.0e2)+t4.*t11.*t13.*(9.81e2./1.0e2)+t3.*t4.*t5.*t14.*(9.81e2./1.0e2),t2.*t25.*9.81e-2,-t35-t36,-t41-t42+t2.*t3.*t5.*t11.*(9.81e2./1.0e2),0.0,0.0,0.0,t23,t29,t40,t45,t56,0.0,0.0,t23,t29,t40,t45,t16.*t62+t17.*(t63+t16.*t59),0.0],[7, 22]);