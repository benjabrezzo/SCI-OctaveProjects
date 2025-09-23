% Ejercicio de respuesta temporal de 1er orden

close all; clear all; clc;

% 1. Determinar el valor de regimen
yss = 6;

% 2. Determinar el valor de la señal al 98% del valor de regimen
yss_98 = 0.98*yss;
str = sprintf("El valor de la salida cuando llega al 98%% es %.2f\n", yss_98);
disp(str)

%% 3. Determinar el ts usando yss_98 y una herramienta que permita
% manipular gráficos (paint)
% 3.1 Trazar una línea horizontal a la altura de yss
% 3.2 Trazar una línea vertical donde la salida se cruza con la línea de 3.1
% 3.3 Obtener gráficamente el valor de ts:
ts = 137;

% 4. Determinar el valor de la constante de tiempo. Siempre vamos a usar 98% 4 tau, salvo que se especifique lo contrario
Tau = ts/4;

% 5. Determinar el valor de la ganancia
Ro = 1; % Amplitud del escalón unitario
K = yss / Ro;

%% 6. Armar la Función de transferencia y simular para verificar.
G = tf(K, [Tau 1]);
step(G, 350); grid on
% 6.1 Buscar puntos en común en ambas gráficas
% 6.2 Ajustar ts de ser necesario

