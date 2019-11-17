function t = backtracking_armijo_qp(P, q, x0, d, alpha, beta)
% d: search direction
t = 1;
delta_x = t .* d;
x = x0 + delta_x;
fval_x0 = compute_value_qp(P, q, x0);
grad_x0 = compute_grad_qp(P, q, x0);
fval_x = compute_value_qp(P, q, x);
while (fval_x > fval_x0 + alpha * t * grad_x0' * delta_x)
   t = beta * t; 
end
end