% Modelo matemático
clear all; close all; clc;
pkg load control;
pkg load symbolic;

syms V Ra I La s Kb O Jm Ki Bm Tl real

eq1 = V == Ra*I + La*s*I + Kb*O;
eq2 = Jm*s*O == Ki*I - Bm*O;

sol = solve(eq1, eq2, V, O);

G = factor(sol.O / sol.V);
disp('La función de transfenreica del sistema, tomando la tensión v(t) como entrada y la velocidad de giro del eje de rotor wm(t) como la salida:');
disp(pretty(G));

disp('');

disp('La función de transfenreica del sistema, tomando la tensión v(t) como entrada y la posición del eje de rotor Om(t) como la salida:');
disp(pretty((1/s)*G));
