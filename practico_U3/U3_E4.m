% Modelo matemático
clear all; close all; clc;
pkg load control;
pkg load symbolic;

syms Ma Ms s Xa Ba Xs Kr Kc W real

eq1 = Ma*s^2*Xa == Ba*s*Xs - Ba*s*Xa + Kr*Xs - Kr*Xa;
eq2 = Ms*s^2*Xs == Ba*s*Xa - Ba*s*Xs + Kr*Xa - Kr*Xs + Kc*W - Kc*Xs;

Sol = solve(eq1, eq2, Xa, W);

disp('La función de transferencia del sistema es: ');
G = factor(Sol.Xa / Sol.W)

disp('');

% Valores
Ma = 500;
Ms = 50;
Kr = 10;
Kc = 50;
Ba = 80;

disp('Función de Transferencia del Sistema con valores:');
G = eval(G)

[num, den] = numden(G);
num = sym2poly(expand(num));
den = sym2poly(expand(den));
Gs = tf(num, den);

step(Gs);





