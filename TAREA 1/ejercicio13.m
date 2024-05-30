% Programa para calcular la transpuesta de una matriz ingresando el tamaño y los elementos
function ejercicio13()
    % Ingresar el tamaño de la matriz
    filas = input('Ingrese el número de filas de la matriz: ');
    columnas = input('Ingrese el número de columnas de la matriz: ');
    
    % Inicializar la matriz
    matriz = zeros(filas, columnas);
    
    % Llenar la matriz con los elementos ingresados por el usuario
    disp('Ingrese los elementos de la matriz:');
    for i = 1:filas
        for j = 1:columnas
            matriz(i, j) = input(sprintf('Elemento (%d, %d): ', i, j));
        end
    end
    
    % Mostrar la matriz ingresada
    disp('La matriz ingresada es: ');
    disp(matriz);
    
    % Calcular la transpuesta
    matriz_transpuesta = matriz';
    
    % Mostrar la matriz transpuesta
    disp('La transpuesta de la matriz es: ');
    disp(matriz_transpuesta);
end
