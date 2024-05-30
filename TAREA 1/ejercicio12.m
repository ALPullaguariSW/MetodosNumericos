% Programa para calcular la media aritmética de un vector
function ejercicio12()
    % Ingresar el vector
    vector = input('Ingrese un vector de números (por ejemplo, [1, 2, 3, 4]): ');
    
    % Calcular la media aritmética
    media = mean(vector);
    
    % Mostrar el resultado
    fprintf('La media aritmética del vector es: %.2f\n', media);
end
