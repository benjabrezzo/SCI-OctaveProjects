clear all; close all; clc;
pkg load control;
pkg load symbolic;

syms M2 s X2 K2 X1 M1 K1 B1 U real

eq1 = M2*s^2*X2 == K2*(X1 - X2);
eq2 = M1*s^2*X1 == K2*(X2 - X1) + K1*(U - s) + B1*(s*U - s*X1);

Sol = solve(eq1, eq2, X2, U);

G = simplify(factor(Sol.X2 / Sol.U));
disp(G);

disp('');
disp('');

disp(G*s);
