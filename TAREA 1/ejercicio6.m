% Programa para calcular el factorial de un número entero positivo

% Captura del número
n = input('Ingrese un número entero positivo: ');

% Validación del dato de entrada
if n < 0 || floor(n) ~= n
    error('Debe ingresar un número entero positivo.');
end

% Inicialización del factorial
factorial_result = 1;

% Cálculo del factorial usando un bucle
for i = 1:n
    factorial_result = factorial_result * i;
end

% Mostrar el resultado
disp(['El factorial de ', num2str(n), ' es ', num2str(factorial_result)]);
