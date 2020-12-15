function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).
%k=1./(1+e.^(-1	z));
%k    = 1 ./ (1 + e.^-z);
%g = 1/(1+e^(-1*z))
%printf('k1:\n');
%fprintf('%f\n', k);

z=(-1)*z;
%fprintf('Z1:\n');
%fprintf('%f\n', z);
z=e.^z;
%fprintf('Z2:\n');
%fprintf('%f\n', z);
z=1+z;
%fprintf('Z3:\n');
%fprintf('%f\n', z);

g=1 ./ z;
%fprintf('Z4:\n');
%fprintf('%f\n', g);
% =============================================================

end
