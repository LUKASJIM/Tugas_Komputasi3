%Gauss_Seidel
function x = gauss_seidel(A, b, x0, tol, max_iter)
    n = size(A, 1);
    x = x0;
    for k = 1:max_iter
        for i = 1:n
            sigma = 0;
            for j = 1:i-1
                sigma = sigma + A(i, j) * x(j);
            end
            for j = i+1:n
                sigma = sigma + A(i, j) * x(j);
            end
            x(i) = (b(i) - sigma) / A(i, i);
        end
        if norm(A*x - b) < tol
            break
        end
    end
end
