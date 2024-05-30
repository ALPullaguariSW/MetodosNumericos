% Determinar si un número entero es primo

function es_primo = determinar_primo(n)
    % Validar que la entrada sea un número entero positivo mayor que 1
    if n <= 1 || floor(n) ~= n
        error('El número debe ser un entero positivo mayor que 1.');
    end
    
    % Inicializar la variable de resultado
    es_primo = true;
    
    % Verificar si el número es primo
    for i = 2:sqrt(n)
        if mod(n, i) == 0
            es_primo = false;
            break;
        end
    end
end

% Captura de datos del usuario
n = input('Ingrese un número entero positivo mayor que 1: ');
if determinar_primo(n)
    disp(['El número ', num2str(n), ' es primo.']);
else
    disp(['El número ', num2str(n), ' no es primo.']);
end
