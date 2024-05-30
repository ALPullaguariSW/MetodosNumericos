function determinar_mayor()
    % Solicitar al usuario que ingrese el primer número
    numero1 = input('Ingrese el primer número: ');
    
    % Solicitar al usuario que ingrese el segundo número
    numero2 = input('Ingrese el segundo número: ');
    
    % Determinar cuál número es mayor
    if numero1 > numero2
        fprintf('El número mayor es: %d\n', numero1);
    elseif numero2 > numero1
        fprintf('El número mayor es: %d\n', numero2);
    else
        fprintf('Ambos números son iguales: %d\n', numero1);
    end
end

determinar_mayor();
