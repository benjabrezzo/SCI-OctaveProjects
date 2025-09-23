% Modelo matemático
clear all; close all; clc;
pkg load control;
pkg load symbolic;

syms K s X R I L V real

eq1 = K*s*X + R*I + s*L*I == V;
eq2 = s^2*X - X - I == 0;

Sol = solve(eq1, eq2, X, V);
G = simplify(Sol.X / Sol.V);

disp('Función de Transferencia del Sistema:')
pretty(G)

% Valores
R = 10;
L = 0.1;
K = 10;

disp('')
disp('Función de Transferencia del Sistema con valores:')
G = eval(G);
simplify(G)

disp('')
disp('Polos:')
[num, den] = numden(G);
num = sym2poly(expand(num));
den = sym2poly(expand(den));
Gs = tf(num, den);
pole(Gs)

step(Gs,100)


