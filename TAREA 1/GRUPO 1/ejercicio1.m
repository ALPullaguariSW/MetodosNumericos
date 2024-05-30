function sum_impares = sumatoria_impares(n)
    
    sum_impares = 0;
    
    contador = 1;
    
    % Sumar los n primeros números impares
    for i = 1:n
        sum_impares = sum_impares + contador;
       
        contador = contador + 2;
    end
end

% Solicitar al usuario que ingrese el valor de n
n = input('Ingrese el valor de n: ');

resultado = sumatoria_impares(n);

% Mostrar el resultado
fprintf('La sumatoria de los %d primeros números impares es: %d\n', n, resultado);
