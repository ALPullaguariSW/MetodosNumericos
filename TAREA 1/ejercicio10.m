% Evaluar la expresión S = x - x^2/2 + x^3/3 - ... hasta n términos

function sum_series = evaluar_serie(x, n)
    % Validar que n sea un número entero positivo
    if n < 1 || floor(n) ~= n
        error('n debe ser un entero positivo.');
    end
    
    % Inicializar la suma
    sum_series = 0;
    
    % Calcular la suma de la serie hasta n términos
    for i = 1:n
        sum_series = sum_series + ((-1)^(i+1) * x^i / i);
    end
end

% Captura de datos del usuario
x = input('Ingrese el valor de x: ');
n = input('Ingrese el número de términos n: ');
disp(['El valor de la serie es ', num2str(evaluar_serie(x, n))]);
