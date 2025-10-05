% Unidad N° 4 Ejercicio 6
close all; clear all; clc

% a)
s = tf('s');

G1 = 15/(5*s + 1);

% Estable?
% Tiempo de establecimiento
% Valor de la salida en estado estable

% Podemos predecir estos 3 parametros mirando
% la funcion de transferencia

% Polo en -1/5 --> al ser negativo podemos decir
% que el sistema es estable

% Tiempo de establecimiento: ts=20seg (4*5)
% es 4 por la constante de tiempo tau. En este
% caso es 5. Se obtiene de sacar factor comun en la
% FT: 15/5*(s+1/5)
% Tambien se puede considerar como 4 dividio el polo

% Valor de regimen: Aplicando el Teorema de Valor
% Final

% Todo lo previo son estimaciones. Ahora hay que
% graficar con Octave:
step(G1,50);

G3 = 1/(s+5);

% Es estable pq el polo esta en -5
Ts = 4/abs(pole(G3));

% de ejecutar la ultima linea obtenemos que
% el ts = 0.8 seg

% Valor de salida en estado estable: 0.2

step(G3, 3)
