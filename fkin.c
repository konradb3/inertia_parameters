  t2 = cos(q0);
  t3 = cos(q3);
  t4 = sin(q0);
  t5 = sin(q2);
  t6 = t4*t5;
  t7 = cos(q1);
  t8 = cos(q2);
  t13 = t2*t7*t8;
  t9 = t6-t13;
  t10 = sin(q1);
  t11 = sin(q3);
  t12 = sin(q4);
  t14 = t3*t9;
  t25 = t2*t10*t11;
  t15 = t14-t25;
  t16 = cos(q4);
  t17 = t4*t8;
  t18 = t2*t5*t7;
  t19 = t17+t18;
  t20 = cos(q5);
  t21 = t9*t11;
  t22 = t2*t3*t10;
  t23 = t21+t22;
  t24 = sin(q5);
  t26 = t15*t16;
  t27 = t12*t19;
  t28 = t26+t27;
  t29 = sin(q6);
  t30 = t23*t24;
  t31 = t20*t28;
  t32 = t30+t31;
  t33 = cos(q6);
  t34 = t12*t15;
  t37 = t16*t19;
  t35 = t34-t37;
  t36 = t29*t32;
  t38 = t33*t35;
  t39 = t36+t38;
  t40 = tool16*tool16;
  t41 = t40*2.0;
  t42 = t20*t23;
  t48 = t24*t28;
  t43 = t42-t48;
  t44 = t29*t35;
  t45 = tool13*tool16*2.0;
  t46 = tool14*tool15*2.0;
  t55 = t32*t33;
  t47 = t44-t55;
  t49 = tool14*tool14;
  t50 = t49*2.0;
  t51 = tool15*tool15;
  t52 = t51*2.0;
  t53 = tool13*tool14*2.0;
  t54 = tool15*tool16*2.0;
  t56 = tool13*tool15*2.0;
  t57 = sin(C);
  t58 = cos(C);
  t59 = t7*t57;
  t68 = t4*t10*t58;
  t60 = t59-t68;
  t61 = t10*t57;
  t62 = t4*t7*t58;
  t63 = t61+t62;
  t64 = t8*t63;
  t65 = t2*t5*t58;
  t66 = t64+t65;
  t67 = tool14*tool16*2.0;
  t69 = t3*t60;
  t70 = t11*t66;
  t71 = t69+t70;
  t72 = t3*t66;
  t78 = t11*t60;
  t73 = t72-t78;
  t74 = t5*t63;
  t79 = t2*t8*t58;
  t75 = t74-t79;
  t76 = t12*t75;
  t82 = t16*t73;
  t77 = t76-t82;
  t80 = t41+t52-1.0;
  t81 = t24*t71;
  t92 = t20*t77;
  t83 = t81-t92;
  t84 = t12*t73;
  t85 = t16*t75;
  t86 = t45+t46;
  t87 = t84+t85;
  t88 = t20*t71;
  t89 = t24*t77;
  t90 = t88+t89;
  t91 = t53+t54;
  t93 = t29*t83;
  t94 = t41+t50-1.0;
  t95 = t29*t87;
  t96 = t45-t46;
  t97 = t56+t67;
  t103 = t33*t83;
  t98 = t95-t103;
  t99 = t33*(t84+t85);
  t100 = t93+t99;
  t101 = t53-t54;
  t102 = t50+t52-1.0;
  t104 = t56-t67;
  t105 = t7*t58;
  t106 = t4*t10*t57;
  t107 = t105+t106;
  t108 = t10*t58;
  t112 = t4*t7*t57;
  t109 = t108-t112;
  t110 = t8*t109;
  t114 = t2*t5*t57;
  t111 = t110-t114;
  t113 = t3*t107;
  t115 = t11*t111;
  t116 = t113+t115;
  t117 = t3*t111;
  t124 = t11*t107;
  t118 = t117-t124;
  t119 = t5*t109;
  t120 = t2*t8*t57;
  t121 = t119+t120;
  t122 = t12*t121;
  t126 = t16*t118;
  t123 = t122-t126;
  t125 = t24*t116;
  t133 = t20*t123;
  t127 = t125-t133;
  t128 = t12*t118;
  t129 = t16*t121;
  t130 = t20*t116;
  t131 = t24*t123;
  t132 = t130+t131;
  t134 = t29*t127;
  t137 = t128+t129;
  t135 = t33*t137;
  t136 = t134+t135;
  t138 = t33*t127;
  t140 = t29*t137;
  t139 = t138-t140;
  A0[0][0] = t39*t86-t47*t80-t43*(t56-tool14*tool16*2.0);
  A0[0][1] = -t39*t94+t43*t91-t47*t96;
  A0[0][2] = -t39*t101-t43*t102+t97*(t44-t55);
  A0[0][3] = D5*t23+D7*t43+t39*tool11+t43*tool12+tool10*(t44-t55)+D3*t2*t10;
  A0[1][0] = t80*t98+t90*t104-t86*(t93+t33*t87);
  A0[1][1] = -t90*t91+t94*t100+t96*t98;
  A0[1][2] = t90*t102-t97*t98+t100*t101;
  A0[1][3] = -D1*t57-D3*t60-D5*t71-D7*t90-t90*tool12-t98*tool10-t100*tool11;
  A0[2][0] = t86*t136-t104*t132-t80*(t29*(t128+t129)-t33*t127);
  A0[2][1] = t91*t132-t94*t136+t96*t139;
  A0[2][2] = -t102*t132-t97*t139-t101*t136;
  A0[2][3] = D1*t58+D3*t107+D5*t116+D7*t132+t132*tool12-t139*tool10+tool11*(t134+t33*(t128+t129));
  A0[3][3] = 1.0;
