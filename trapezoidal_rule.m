function I = trapezoidal_rule(f, a, b, n)
    % Calculate the width of each trapezoid
    h = (b - a) / n;
    
    % Initialize the sum to zero
    sum = 0;
    
    % Calculate the sum of the areas of the trapezoids
    for i = 1:n
        x = a + (i - 1) * h;
        sum = sum + 0.5 * h * (f(x) + f(x + h));
    end
    
    % Return the integral estimate
    I = sum;
end