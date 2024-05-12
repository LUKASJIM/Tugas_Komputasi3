%SOR
function x = sor(A, b, x0, w, tol, max_iter)
    n = size(A, 1);
    x = x0;
    for k = 1:max_iter
        for i = 1:n
            sigma1 = 0;
            for j = 1:i-1
                sigma1 = sigma1 + A(i, j) * x(j);
            end
            sigma2 = 0;
            for j = i+1:n
                sigma2 = sigma2 + A(i, j) * x(j);
            end
            x(i) = (1 - w) * x(i) + w * (b(i) - sigma1 - sigma2) / A(i, i);
        end
        if norm(A*x - b) < tol
            break
        end
    end
end
