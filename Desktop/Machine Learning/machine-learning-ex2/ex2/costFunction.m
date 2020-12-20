function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%
%z=theta'*X;
%h=sigmoid(z);
%m=length
%J= -y*(log(h))-(1.-y)*log(1.-h);
%grad=(1/(rows(X)).(h-y)*X;

fun = sigmoid(X * theta);
m = length(X);
J = (-y' * log(fun) - (1 - y')*log(1 - fun)) / m;
grad = X' * (fun - y) / m;
%[m, n] = size(X);
%%printf('theta:\n');
% disp(theta); % if you want to display an array in a proper format
% =============================================================
end