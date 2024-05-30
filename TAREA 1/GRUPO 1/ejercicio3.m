function determinar_paridad()
    % Solicitar al usuario que ingrese un número
    numero = input('Ingrese un número: ');

    % Verificar si el número es par o impar
    if mod(numero, 2) == 0
        fprintf('El número %d es par.\n', numero);
    else
        fprintf('El número %d es impar.\n', numero);
    end
end

determinar_paridad();
