% Programa para encontrar los números primos menores que n
function ejercicio15()
    % Ingresar el número n
    n = input('Ingrese un número positivo y entero: ');
    
    % Encontrar los números primos menores que n
    primos = primes(n-1);
    
    % Mostrar los números primos
    disp('Los números primos menores que n son: ');
    disp(primos);
end
D