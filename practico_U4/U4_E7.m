close all; clear all; clc;

% 1. Determinar el valor de regimen
yss = 1;

% 2. Determinar el valor de la señal al 98% del valor de regimen
yss_98 = 0.98*yss;
str = sprintf("El valor de la salida cuando llega al 98%% es %.2f\n", yss_98);
disp(str)

ts = 4;

Tau = ts/4;

Ro = 1;
K = yss / Ro;

G = tf(K, [Tau 1]);

#step(G);

######################
yssa = 8500;
yss_98a = 0.98*yssa;
str = sprintf("El valor de la salida cuando llega al 98%% es %.2f\n", yss_98a);
disp(str)

ts = 41;

Tau_a = ts / 4;

Roa = 1;
Ka = yssa / Roa;

Ga = tf(Ka, [Tau_a 1]);

step(Ga, 100)

