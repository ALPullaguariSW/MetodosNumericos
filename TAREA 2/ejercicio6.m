% Definir la función y su derivada
f = @(x) (4*x - 7) ./ (x - 2);
df = @(x) (4 * (x - 2) - (4 * x - 7)) ./ ((x - 2).^2);

% Parámetros
tol = 1e-3; % tolerancia
max_iter = 100; % número máximo de iteraciones

% Aproximaciones iniciales
x0_values = [1.6, 1.5, 3];
roots = [1.75, 1.75, 1.75];

% Crear la gráfica de la función
x_vals = linspace(1, 4, 400);
y_vals = f(x_vals);

figure;
plot(x_vals, y_vals, 'b', 'LineWidth', 2);
hold on;
yline(0, 'k--');
xline(1.75, 'r--');
xlabel('x');
ylabel('f(x)');
title('Método de Newton para f(x) = (4x-7)/(x-2)');
legend('f(x) = (4x-7)/(x-2)', 'y = 0', 'Raíz x = 1.75', 'Location', 'Best');
grid on;

for j = 1:length(x0_values)
    x0 = x0_values(j);
    x = x0;
    error = Inf;
    iter = 0;
    history = x;
    
    while error > tol && iter < max_iter
        iter = iter + 1;
        x_new = x - f(x)/df(x);
        error = abs(x_new - x);
        x = x_new;
        history(end+1) = x;
    end
    
    % Mostrar resultados
    fprintf('Para x0 = %.1f\n', x0_values(j));
    fprintf('Raíz aproximada: %.3f\n', x);
    fprintf('Número de iteraciones: %d\n\n', iter);
    
    % Graficar las iteraciones
    plot(history, f(history), 'o-', 'LineWidth', 2, 'MarkerSize', 6, 'DisplayName', sprintf('Iteraciones x0 = %.1f', x0_values(j)));
    plot(x, f(x), 'gx', 'LineWidth', 2, 'MarkerSize', 10, 'DisplayName', sprintf('Raíz aproximada x0 = %.1f', x0_values(j)));
    
    % Mostrar valores de iteración
    fprintf('Iteración\t x\t\t f(x)\n');
    for i = 1:length(history)
        fprintf('%d\t\t %.3f\t %.3f\n', i-1, history(i), f(history(i)));
    end
    fprintf('\n');
end

hold off;
