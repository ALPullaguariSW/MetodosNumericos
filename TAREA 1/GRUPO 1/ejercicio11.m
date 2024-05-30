% Programa para evaluar la expresión S
function main_ejercicio11()
    % Solicitar el valor de x
    x = input('Ingrese el valor de x: ');
    
    % Solicitar el número de términos n
    n = input('Ingrese el número de términos n: ');
    
    % Calcular la serie
    S = calcular_serie(x, n);
    
    % Mostrar el resultado
    disp(['El valor de la serie S es: ', num2str(S)]);
end

% Función para calcular la serie
function S = calcular_serie(x, n)
    % Inicializar la suma S
    S = 0;
    
    % Bucle para sumar n términos de la serie
    for k = 1:n
        % Calcular el coeficiente del término
        coeficiente = (-1)^(k+1) * factorial(2*k-1) / (2 * prod(2:2:2*k));
        
        % Calcular el término de la serie
        termino = coeficiente * x^(2*k-1);
        
        % Sumar el término a S
        S = S + termino;
    end
end

% Llamar a la función principal para ejecutar el código
main_ejercicio11;
