function [modulo, angulo_inclinacion] = calcular_vector(a, b)
    % Calcular el módulo del vector
    modulo = sqrt(a^2 + b^2);
    % Calcular el ángulo de inclinación con el eje X en grados
    angulo_inclinacion = atan2(b, a) * (180 / pi);
end
% Solicitar al usuario que ingrese los componentes del vector
a = input('Ingrese el componente a del vector: ');
b = input('Ingrese el componente b del vector: ');

% Calcular el módulo y el ángulo de inclinación
[modulo, angulo_inclinacion] = calcular_vector(a, b);

fprintf('El módulo del vector [%d, %d] es: %.2f\n', a, b, modulo);
fprintf('El ángulo de inclinación con el eje X es: %.2f grados\n', angulo_inclinacion);
