A = [4 -1 0; -1 4 -1; 0 -1 4];
b = [1; 2; 3];
x0 = [0; 0; 0];

% Gauss-Seidel Method
x_gs = gauss_seidel(A, b, x0, 1e-6, 100);
disp('Gauss-Seidel Method:');
disp(x_gs);

%Successive Over Relaxation (SOR) Method
w = 1.5;  % relaxation factor
x_sor = sor(A, b, x0, w, 1e-6, 100);
disp('Successive Over Relaxation (SOR) Method:');
disp(x_sor);

