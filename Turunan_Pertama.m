function df = Turunan_Pertama(f, x, h)
    % Hitung turunan pertama fungsi f di titik x menggunakan metode beda hingga
    df = (f(x + h) - f(x)) / h;
end
