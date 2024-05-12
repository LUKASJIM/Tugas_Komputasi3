f = @(x) x.^2;  % Definisikan fungsi f(x) = x^2
x = 2;          % Titik di mana turunan akan dihitung
h = 0.001;      % Besarnya langkah h (semakin kecil nilainya, semakin akurat hasilnya)

% Hitung turunan pertama di titik x
df = Turunan_Pertama(f, x, h);
disp(['Turunan pertama di x = 2 adalah ', num2str(df)]);
