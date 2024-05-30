function determinar_signo()
    % Solicitar al usuario que ingrese un número entero
    numero = input('Ingrese un número entero: ');
    % Determinar si el número es positivo, negativo o nulo
    if numero > 0
        fprintf('El número %d es positivo.\n', numero);
    elseif numero < 0
        fprintf('El número %d es negativo.\n', numero);
    else
        fprintf('El número es nulo (cero).\n');
    end
end

determinar_signo();
