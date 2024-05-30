% Programa para ordenar n números de mayor a menor
function ejercicio14()
    % Ingresar los números
    numeros = input('Ingrese los números a ordenar (por ejemplo, [4, 1, 3, 2]): ');
    
    % Ordenar los números de mayor a menor
    numeros_ordenados = sort(numeros, 'descend');
    
    % Mostrar los números ordenados
    disp('Los números ordenados de mayor a menor son: ');
    disp(numeros_ordenados);
end
