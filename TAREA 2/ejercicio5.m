% Función f(x)
f = @(x) 3*x + sin(x) - exp(x);

% Derivada de f(x)
df = @(x) 3 + cos(x) - exp(x);

% Valor inicial
x0 = 0;

% Tolerancia
tolerancia = 0.001;

% Máximo número de iteraciones
max_iter = 50;

% Inicialización de variables
iter = 0;
x = x0;
error = inf;

% Iteración del método de Newton
while abs(error) > tolerancia && iter < max_iter
    x_prev = x;
    x = x - f(x) / df(x);
    error = x - x_prev;
    iter = iter + 1;
    
    fprintf('Iteración %d: x = %.5f, error = %.5f\n', iter, x, error);
end

% Mostrar resultado
fprintf('La raíz aproximada es x = %.5f con error de %.5f\n', x, error);

% Gráfica de la función f(x)
figure;
x_vals = linspace(-2, 2, 100);
y_vals = f(x_vals);
plot(x_vals, y_vals, 'LineWidth', 1.5);
hold on;

% Graficar la raíz encontrada
plot(x, f(x), 'ro', 'MarkerFaceColor', 'r');
text(x, f(x), sprintf('(%.4f, %.4f)', x, f(x)), 'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'right');

% Detalles de la gráfica
title('Gráfica de f(x) = 3x + sin(x) - exp(x)');
xlabel('x');
ylabel('f(x)');
grid on;

% Mostrar leyenda
legend('f(x)', 'Raíz encontrada', 'Location', 'Best');

% Mostrar iteraciones en la consola
fprintf('Iteraciones necesarias: %d\n', iter);
