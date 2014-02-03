load('X.mat');

%Y = X; % lwrsim(q(1:(5*7)));

W = H(qm, K11fun2);
fi = (W'*W)\W'*Y;

Y - W*fi

% open a file for writing
fid = fopen('params.inc', 'w');
 
% print values in column order
% two values appear on each row of the file
for i = 1:size(fi, 1)
  fprintf(fid, '#define %s %s\n', char(Z(i)), num2str(fi(i), 20));
end
fclose(fid);
% display the file created
type params.inc