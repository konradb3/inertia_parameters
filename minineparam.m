function [ B0, X, u, o ] = minineparam( rob )
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
         sym(['XYR', num2str(i)]);
         sym(['XZR', num2str(i)]);
         sym(['YZR', num2str(i)]);
         sym(['ZZR', num2str(i)]);
         sym(['MXR', num2str(i)]);
         sym(['MYR', num2str(i)]); ];
    
    for d = 1:rob.n-1
        i = rob.n + 1 - d;

        B = [ B(2) - B(5);
            l(i-1).I(1, 1) + B(5) + 2*l(i).a*B(10) + l(i).a^2*B(11);
            l(i-1).I(1, 2) + l(i).d*sin(-l(i-1).alpha)*B(10) + l(i).d*l(i).a*sin(-l(i-1).alpha)*B(11);
            l(i-1).I(1, 3) - l(i).d*cos(-l(i-1).alpha)*B(10) - l(i).d*l(i).a*cos(-l(i-1).alpha)*B(11);
            l(i-1).I(2, 2) + cos(-l(i-1).alpha)^2*B(5) + 2*l(i).a*cos(-l(i-1).alpha)^2*B(10) + (l(i).d^2 + l(i).a^2*cos(-l(i-1).alpha)^2)*B(11);
            l(i-1).I(2, 3) + cos(-l(i-1).alpha)*sin(-l(i-1).alpha)*B(5) + 2*l(i).a*cos(-l(i-1).alpha)*sin(-l(i-1).alpha)*B(10) + l(i).a^2*cos(-l(i-1).alpha)*sin(-l(i-1).alpha)*B(11);
            l(i-1).I(3, 3) + sin(-l(i-1).alpha)^2*B(5) + 2*l(i).a*sin(-l(i-1).alpha)^2*B(10) + (l(i).d^2 + l(i).a^2*sin(-l(i-1).alpha)^2)*B(11);
            l(i-1).r(1)*l(i-1).m + l(i).d*B(11);
            l(i-1).r(2)*l(i-1).m - sin(-l(i-1).alpha)*B(10) - l(i).a*sin(-l(i-1).alpha)*B(11);
            l(i-1).r(3)*l(i-1).m + cos(-l(i-1).alpha)*B(10) + l(i).a*cos(-l(i-1).alpha)*B(11);
            l(i-1).m + B(11);];


        B0 = [B0; B([1 3 4 6 7 8 9])];
        X = [X; sym(['XXR', num2str(i)]);
              sym(['XYR', num2str(i-1)]);
              sym(['XZR', num2str(i-1)]);
              sym(['YZR', num2str(i-1)]);
              sym(['ZZR', num2str(i-1)]);
              sym(['MXR', num2str(i-1)]);
              sym(['MYR', num2str(i-1)]); ];
    end
    simplify(B0);

    u = [];
    o = [];
    
    for 1:rob.n
        u = [u; 
            sym(['m', num2str(i), '+mx', num2str(i)]);
            sym(['m', num2str(i), '+my', num2str(i)]);
            sym(['m', num2str(i), '+mz', num2str(i)]);
            ];
        
        o = [o; 
            sym(['mxr', num2str(i)]);
            sym(['myr', num2str(i)]);
            sym(['mzr', num2str(i)]);
            ];
    end
    
end