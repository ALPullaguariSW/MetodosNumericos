% Evaluar la suma total de los N primeros términos de varias series

function series_sums()
    % Captura de datos del usuario
    N = input('Ingrese el número de términos N: ');
    
    % Validar que N sea un número entero positivo
    if N < 1 || floor(N) ~= N
        error('N debe ser un entero positivo.');
    end
    
    % Evaluar y mostrar la suma de cada serie
    disp(['Suma de la serie a: ', num2str(suma_serie_a(N))]);
    disp(['Suma de la serie b: ', num2str(suma_serie_b(N))]);
    disp(['Suma de la serie c: ', num2str(suma_serie_c(N))]);
    disp(['Suma de la serie d: ', num2str(suma_serie_d(N))]);
end

function sum_series = suma_serie_a(N)
    % Inicializar la suma
    sum_series = 0;
    
    % Calcular la suma de los N primeros términos
    for i = 0:N-1
        sum_series = sum_series + (2*i + 1);
    end
end

function sum_series = suma_serie_b(N)
    % Inicializar la suma
    sum_series = 0;
    
    % Calcular la suma de los N primeros términos
    for i = 1:N
        sum_series = sum_series + ((-1)^(i+1) * 1/i);
    end
end

function sum_series = suma_serie_c(N)
    % Inicializar los primeros términos de la serie de Fibonacci
    fib = [1, 1];
    
    % Generar la serie de Fibonacci hasta el término N
    for i = 3:N
        fib(i) = fib(i-1) + fib(i-2);
    end
    
    % Inicializar la suma
    sum_series = 0;
    
    % Calcular la suma alternando los signos
    for i = 1:N
        if mod(i, 2) == 0
            sum_series = sum_series - fib(i);
        else
            sum_series = sum_series + fib(i);
        end
    end
end

function sum_series = suma_serie_d(N)
    % Inicializar la suma
    sum_series = 1;
    
    % Calcular la suma de los N primeros términos
    for i = 1:N-1
        factorial_val = factorial(2*i + 1);
        sum_series = sum_series + ((-1)^i / factorial_val);
    end
end

% Ejecutar la función principal
series_sums();
