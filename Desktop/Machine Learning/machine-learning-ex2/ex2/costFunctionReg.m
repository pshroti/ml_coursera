function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

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
printf('theta size:\n');
disp(size(theta));
printf('X size:\n');
disp(size(X));
pause;
%printf('y:\n');
%disp(y);

fun = sigmoid(X * theta);
%printf('fun is :\n');
%disp(fun);
m = length(X);
J = costFunction(theta, X, y);
theta=theta.^2;
%printf('theta squared is :\n');
%disp(theta);
theta(1,1)=0;
%printf('theta after setting first element zero:\n');
%disp(theta);
regFactor=sum(theta);
regFactor= regFactor*lambda*(1/(2*m));
J= J + regFactor;
grad= (fun-y);
printf('grad size:\n');
disp(size(grad));
pause;
grad= X'*grad;
factor= ones(columns(X),1)*(lambda/m);
printf('factor size:\n');

disp(size(factor));
pause;
factor(1,1)=1;
grad=grad+factor;


%printf('current cost without regularization: \n');
disp(J);


grad = X' * (fun - y) / m;





% =============================================================

end
