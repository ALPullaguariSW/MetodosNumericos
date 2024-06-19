% Definir la función y su derivada
f = @(x) x - 2.^(-x);
df = @(x) 1 + log(2) * 2.^(-x);

% Parámetros del método de Newton modificado
x0 = 0; % aproximación inicial
tol = 1e-3; % tolerancia
max_iter = 100; % número máximo de iteraciones

% Inicializar las variables
x = x0;
error = Inf;
iter = 0;
history = x;

% Método de Newton modificado
while error > tol && iter < max_iter
    iter = iter + 1;
    x_new = x - f(x)/df(x);
    error = abs(x_new - x);
    x = x_new;
    history(end+1) = x;
end

% Mostrar resultados
fprintf('Raíz aproximada: %.3f\n', x);
fprintf('Número de iteraciones: %d\n', iter);

% Crear la gráfica
x_vals = linspace(-1, 2, 400);
y_vals = f(x_vals);

figure;
plot(x_vals, y_vals, 'b', 'LineWidth', 2);
hold on;
plot(history, f(history), 'ro-', 'LineWidth', 2, 'MarkerSize', 6);
plot(x, f(x), 'gx', 'LineWidth', 2, 'MarkerSize', 10);
yline(0, 'k--');
xline(0, 'k--');
xlabel('x');
ylabel('f(x)');
title('Método de Newton Modificado');
legend('f(x) = x - 2^{-x}', 'Iteraciones de Newton', 'Raíz aproximada', 'Location', 'Best');
grid on;

% Mostrar valores de iteración
fprintf('Iteración\t x\t\t f(x)\n');
for i = 1:length(history)
    fprintf('%d\t\t %.3f\t %.3f\n', i-1, history(i), f(history(i)));
end
