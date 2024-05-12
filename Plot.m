% x = -2:.2:2;
% y = -2:.25:2;
% z = -2:.16:2;
% 
% [x,y,z] = meshgrid(x,y,z);
% v = x.*exp(-x.^2-y.^2-z.^2);
% 
% xslice = [-1.2,.8,2];    % lokasi bidang y-z 
% yslice = 2;              % lokasi bidang x-z 
% zslice = [-2,0];         % lokasi bidang x-y 
% 
% slice(x,y,z,v,xslice,yslice,zslice)
% xlabel('x')
% ylabel('y')
% zlabel('z')


% % Membuat grid x dan y
% [x, y] = meshgrid(-2*pi:0.1:2*pi);
% 
% % Menghitung nilai fungsi z = sin(x) * cos(y)
% z = sin(x) .* cos(y);
% 
% % Membuat plot 3D
% figure(1)
% meshc(x,y,z);
% figure (2)
% surfc(x,y,z);
% figure (3)
% contour(x,y,z);
% xlabel('X');
% ylabel('Y');
% zlabel('Z');
% title('Plot 3D dari sin(x) * cos(y)');

% Parameter
% R = 1; % Radius besar
% r = 0.3; % Radius kecil
% theta = linspace(0, 2*pi, 100);
% phi = linspace(0, 2*pi, 100);
% [theta, phi] = meshgrid(theta, phi);
% 
% % Koordinat X, Y, dan Z untuk torus
% x = (R + r*cos(theta)) .* cos(phi);
% y = (R + r*cos(theta)) .* sin(phi);
% z = r * sin(theta);
% 
% % Plot 3D
% figure(1)
% surf(x, y, z);
% figure (2)
% meshc(x, y, z);
% axis equal;
% xlabel('X');
% ylabel('Y');
% zlabel('Z');
% title('Torus');

% Parameter
% u = linspace(0, 2*pi, 100);
% v = linspace(0, 2*pi, 100);
% [u, v] = meshgrid(u, v);
% 
% % Koordinat X, Y, dan Z untuk Klein Bottle
% x = (2 + cos(u/2) .* sin(v) - sin(u/2) .* sin(2*v)) .* cos(u);
% y = (2 + cos(u/2) .* sin(v) - sin(u/2) .* sin(2*v)) .* sin(u);
% z = sin(u/2) .* sin(v) + cos(u/2) .* sin(2*v);
% 
% % Plot 3D
% figure(1)
% surf(x, y, z);
% figure(2)
% meshc(x, y, z);
% figure (3)
% contour(x, y, z);
% axis equal;
% xlabel('X');
% ylabel('Y');
% zlabel('Z');
% title('Klein Bottle');

% Parameter
% [x, y] = meshgrid(-10:0.1:10); % Grid untuk x dan y
% z = 1 + sin(sqrt(x.^2 + y.^2)); % Fungsi elevasi (bukit pasir)
% 
% % Plot pulau
% figure(1)
% surf(x, y, z);
% figure (2)
% meshc(x, y, z)
% figure (3)
% contour(x, y, z)
% figure(4)
% plot3(x, y, z)
% axis([-10 10 -10 10 0 5]); % Batasan sumbu
% xlabel('X');
% ylabel('Y');
% zlabel('Elevasi');
% title('Pulau di Tengah Samudera');
% 
% % Tambahkan warna untuk menampilkan air di sekeliling pulau
% hold on;
% water_level = zeros(size(z)); % Tinggi air
% water_level(z < 1) = 0.5; % Atur tinggi air di bawah elevasi pulau
% water_level(z >= 1) = NaN; % Tinggi air di atas pulau
% surf(x, y, water_level, 'FaceColor', 'b', 'EdgeColor', 'none', 'FaceAlpha', 0.5); % Plot air
% hold off;

% % Parameter
% t = linspace(0, 2*pi, 1000);
% 
% % Persamaan parametrik untuk heart
% x = 16 * sin(t).^3;
% y = 13 * cos(t) - 5 * cos(2*t) - 2 * cos(3*t) - cos(4*t);
% z = zeros(size(t));
% 
% % Plot 3D
% figure;
% plot3(x, y, z, 'r', 'LineWidth', 2);
% xlabel('X');
% ylabel('Y');
% zlabel('Z');
% title('Plot 3D Heart');
% grid on;
% axis equal;

% Parameter
% [u, v] = meshgrid(linspace(0, 2*pi, 100), linspace(0, 2*pi, 100));
% 
% % Persamaan untuk torus
% R = 3; % Radius besar
% r = 1; % Radius kecil
% x = (R + r*cos(v)).*cos(u);
% y = (R + r*cos(v)).*sin(u);
% z = r*sin(v);
% 
% % Modifikasi bentuk
% x = x .* cos(v); % Transformasi terhadap koordinat x
% y = y .* cos(v); % Transformasi terhadap koordinat y
% z = z .* sin(v); % Transformasi terhadap koordinat z
% 
% % Plot 3D
% figure(1)
% surf(x, y, z);
% figure(2)
% meshc(x, y, z);
% figure (3)
% contour(x, y, z);
% xlabel('X');
% ylabel('Y');
% zlabel('Z');
% title('Plot 3D dari Torus Abstrak');
% axis equal;


% Membuat susunan bola untuk merepresentasikan atom dalam kristal
% num_atoms = 100;
% atom_positions = randn(3, num_atoms); % Koordinat acak untuk atom
% atom_radii = 0.1; % Radius bola untuk setiap atom
% 
% % Membuat plot 3D
% figure;
% hold on;
% for i = 1:num_atoms
%     [x, y, z] = sphere(20);
%     x = x * atom_radii + atom_positions(1, i);
%     y = y * atom_radii + atom_positions(2, i);
%     z = z * atom_radii + atom_positions(3, i);
%     surf(x, y, z, 'FaceColor', 'b', 'EdgeColor', 'none');
% end
% 
% % Menghubungkan atom-atom yang terikat secara kimia dengan garis
% for i = 1:num_atoms
%     for j = i+1:num_atoms
%         if norm(atom_positions(:, i) - atom_positions(:, j)) < 1.5 % Jarak antar atom yang terikat
%             plot3([atom_positions(1, i), atom_positions(1, j)], ...
%                   [atom_positions(2, i), atom_positions(2, j)], ...
%                   [atom_positions(3, i), atom_positions(3, j)], ...
%                   'k-', 'LineWidth', 1);
%         end
%     end
% end
% 
% hold off;
% axis equal;
% xlabel('X');
% ylabel('Y');
% zlabel('Z');
% title('Plot 3D Menyerupai Bentuk Kristal');

% Membuat data
% theta = linspace(0, 2*pi, 100);  % Membuat array 100 angka dari 0 sampai 2*pi
% r = sin(3*theta);  % Menghitung nilai r = sin(3*theta)
% 
% % Konversi dari koordinat polar ke kartesian
% x = r .* cos(theta);
% y = r .* sin(theta);


% % Plot data
% plot(x, y, 'b');  % Plot kurva dalam warna biru
% title('Plot Spiral Sinusoidal');  % Menambahkan judul plot
% xlabel('x');  % Menambahkan label sumbu x
% ylabel('y');  % Menambahkan label sumbu y
% axis equal;  % Mengatur skala sumbu x dan y menjadi sama
% grid on;  % Menampilkan grid pada plot

% Membuat data
% theta = linspace(0, 8*pi, 1000);  % Membuat array 1000 angka dari 0 sampai 8*pi
% r = cos(5*theta);  % Menghitung nilai r menggunakan fungsi kosinus
% 
% % Konversi dari koordinat polar ke kartesian
% x = r .* cos(theta);
% y = r .* sin(theta);
% 
% % Plot data
% plot(x, y, 'b', 'LineWidth', 2);  % Plot kurva dalam warna biru dengan ketebalan garis 2
% title('Bentuk bunga');  % Menambahkan judul plot
% xlabel('x');  % Menambahkan label sumbu x
% ylabel('y');  % Menambahkan label sumbu y
% axis equal;  % Mengatur skala sumbu x dan y menjadi sama
% grid on;  % Menampilkan grid pada plot

