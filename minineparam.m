function [ B0, X ] = minineparam( rob )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

    B0 = [];
    X = [];
    l = rob.links;
    i = rob.n;
    
    B = [ sym(0);
            l(i).I(1, 1);
            l(i).I(1, 2);
            l(i).I(1, 3);
            l(i).I(2, 2);
            l(i).I(2, 3);
            l(i).I(3, 3);
            l(i).r(1)*l(i).m;
            l(i).r(2)*l(i).m;
            l(i).r(3)*l(i).m;
            l(i).m];
    
    B0 = B([3 4 6 7 8 9]);

    X = [X;
         sym(['ixy', num2str(i)]);
         sym(['ixz', num2str(i)]);
         sym(['iyz', num2str(i)]);
         sym(['izz', num2str(i)]);
         sym(['m', num2str(i),'*mx', num2str(i)]);
         sym(['m', num2str(i),'*my', num2str(i)]); ];

    for d = 1:rob.n-1
        i = rob.n + 1 - d;

        B = [ B(2) - B(5);
            l(i-1).I(1, 1) + B(5) + 2*l(i).a*B(10) + l(i).a^2*B(11);
            l(i-1).I(1, 2) + l(i).d*sin(l(i).alpha)*B(10) + l(i).d*l(i).a*sin(l(i).alpha)*B(11);
            l(i-1).I(1, 3) - l(i).d*cos(l(i).alpha)*B(10) - l(i).d*l(i).a*cos(l(i).alpha)*B(11);
            l(i-1).I(2, 2) + cos(l(i).alpha)^2*B(5) + 2*l(i).a*cos(l(i).alpha)^2*B(10) + (l(i).d^2 + l(i).a^2*cos(l(i).alpha)^2)*B(11);
            l(i-1).I(2, 3) + cos(l(i).alpha)*sin(l(i).alpha)*B(5) + 2*l(i).a*cos(l(i).alpha)*sin(l(i).alpha)*B(10) + l(i).a^2*cos(l(i).alpha)*sin(l(i).alpha)*B(11);
            l(i-1).I(3, 3) + sin(l(i).alpha)^2*B(5) + 2*l(i).a*sin(l(i).alpha)^2*B(10) + (l(i).d^2 + l(i).a^2*sin(l(i).alpha)^2)*B(11);
            l(i-1).r(1)*l(i-1).m + l(i).a*B(11);
            l(i-1).r(2)*l(i-1).m - sin(l(i).alpha)*B(10) - l(i).d*sin(l(i).alpha)*B(11);
            l(i-1).r(3)*l(i-1).m + cos(l(i).alpha)*B(10) + l(i).d*cos(l(i).alpha)*B(11);
            l(i-1).m + B(11);];

        if(i ~= 2)
        B0 = [B0; B([1 3 4 6 7 8 9])];
        X = [X; sym(['ixx', num2str(i)]);
              sym(['ixy', num2str(i-1)]);
              sym(['ixz', num2str(i-1)]);
              sym(['iyz', num2str(i-1)]);
              sym(['izz', num2str(i-1)]);
              sym(['m', num2str(i-1),'*mx', num2str(i-1)]);
              sym(['m', num2str(i-1),'*my', num2str(i-1)]); ];
        else
            B0 = [B0; B([1 7 8 9])];
            X = [X; sym(['ixx', num2str(i)]);
                sym(['izz', num2str(i-1)]);
                sym(['m', num2str(i-1),'*mx', num2str(i-1)]);
                sym(['m', num2str(i-1),'*my', num2str(i-1)]); ];
        end
    end
    simplify(B0);
end