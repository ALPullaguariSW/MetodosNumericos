% Programa para realizar rotaciones de una cadena de caracteres
function ejercicio16()
    % Ingresar la cadena
    cadena = input('Ingrese una cadena de caracteres: ', 's');
    
    % Longitud de la cadena
    n = length(cadena);
    
    % Mostrar las rotaciones
    disp('Las rotaciones de la cadena son: ');
    for i = 1:n
        cadena = [cadena(end), cadena(1:end-1)];
        disp(cadena);
    end
end
