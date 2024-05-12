f = @(x) sin(x); % define the function
a = 0; % choose the left endpoint
b = pi; % choose the right endpoint
n = 100; % choose the number of trapezoids
I = trapezoidal_rule(f, a, b, n); % calculate the numerical integral
disp(['Metode_Trapesium di n = 100 adalah ', num2str(I)]);