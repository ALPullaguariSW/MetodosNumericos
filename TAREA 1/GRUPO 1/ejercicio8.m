% Ordenar n números de acuerdo a las opciones: de menor a mayor o de mayor a menor

function sorted_numbers = ordenar_numeros(numeros, opcion)
    % Validar la opción de ordenamiento
    if ~(strcmp(opcion, 'ascendente') || strcmp(opcion, 'descendente'))
        error('La opción debe ser "ascendente" o "descendente".');
    end
    
    % Ordenar los números
    if strcmp(opcion, 'ascendente')
        sorted_numbers = sort(numeros);
    else
        sorted_numbers = sort(numeros, 'descend');
    end
end

% Captura de datos del usuario
numeros = input('Ingrese los números a ordenar (como un vector, ej: [3, 1, 4, 1, 5]): ');
opcion = input('Ingrese la opción de ordenamiento ("ascendente" o "descendente"): ', 's');
disp(['Los números ordenados son: ', num2str(ordenar_numeros(numeros, opcion))]);
