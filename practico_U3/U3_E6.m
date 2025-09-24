%% Ejercicio 6, Unidad 3 "Modelo Matemático"

clear all; close all; clc;
pkg load control;
pkg load symbolic;

syms M1 s X1 B1 U K1 K2 X2 M2 real

eq1 = M1*s^2*X1 == B1*s*U - B1*s*X1 + K1*U - K1*X1 + K2*X2 - K2*X1;
eq2 = M2*s^2*X2 == K2*X1 - K2*X2;

Sol1 = solve(eq1, eq2, U, X1);
G1 = simplify(factor(Sol1.X1 / Sol1.U));
disp('Función de Transferencia del Sistema para la masa M1 con respecto a la entrada u(t):')
disp(G1)

disp('');
disp('');
disp('');

##Sol2 = solve(eq1, eq2, U, X2);
##G2 = simplify(Sol2.X2 / Sol2.U);
##disp('Función de Transferencia del Sistema para la masa M2 con respecto a la entrada u(t):')
##pretty(G2)


disp('Solución de la guía');
S = solve(eq1, eq2, X1, X2)
X1_U = simplify(factor(S.X1/U, 's'))
