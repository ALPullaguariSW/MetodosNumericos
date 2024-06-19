% Definir la función
F = @(x) x.^3 - 17;

% Intervalo inicial
a = 2;
b = 3;

% Error deseado
error_deseado = 0.125;

% Aplicar el Método de Bisección
iteraciones = 0;
while (b - a) >= error_deseado
    iteraciones = iteraciones + 1;
    c = (a + b) / 2;
    
    % Almacenar los puntos para graficar
    intervalo_x(iteraciones, :) = [a, b, c];
    intervalo_y(iteraciones, :) = [F(a), F(b), F(c)];
    
    if F(c) == 0
        break;
    elseif F(c) * F(a) < 0
        b = c;
    else
        a = c;
    end
end

% La raíz aproximada
raiz = (a + b) / 2;

fprintf('La raíz cúbica de 17 con error < 0.125 es aproximadamente: %.8f\n', raiz);

% Graficar la función y el método de bisección
x = linspace(1.5, 3.5, 100);
y = F(x);

figure;
plot(x, y, 'LineWidth', 1.5);
hold on;
grid on;

% Marcar los intervalos y los puntos medios
for i = 1:iteraciones
    plot(intervalo_x(i, :), intervalo_y(i, :), 'o-', 'MarkerSize', 8, 'LineWidth', 1.5);
end

% Marcar la raíz encontrada
plot(raiz, F(raiz), 'ro', 'MarkerSize', 10, 'LineWidth', 1.5);

% Etiquetas y leyendas
xlabel('x');
ylabel('F(x)');
title('Método de Bisección para encontrar la raíz cúbica de 17');
legend('F(x) = x^3 - 17', 'Iteraciones de Bisección', 'Raíz encontrada');

% Mostrar la raíz encontrada
text(raiz, F(raiz), sprintf('  Raíz = %.6f', raiz), 'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'right');

% Ajustar la vista
ylim([-10, 10]);

hold off;
