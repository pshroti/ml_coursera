function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y
%fprintf('X:\n');
%fprintf('%f\n', X);
%fprintf('y:\n');
%fprintf('%f\n', y);
%fprintf('theta:\n');
%fprintf('%f\n', theta);
% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.
fprintf('In PS Code\n');
vect= X*theta;
summation=sum((vect-y).^2);

J=summation/(2*m);
fprintf('End PS Code\n');

% =========================================================================
end