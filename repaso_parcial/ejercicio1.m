% Modelo matemático
clear all; close all; clc;
pkg load control;
pkg load symbolic;

syms U C Y A F s X E D B real

eq1 = U - C*Y == A*X + F*s*X;
eq2 = E*s*Y - D*X +F*Y == 0;

Sol = solve(eq1, eq2, U, Y);
G = simplify(Sol.Y / Sol.U);
disp('Función de Transferencia del Sistema:')
pretty(G)

% Valores
A = 56;
B = 78;
C = 32;
D = 18;
E = 34;
F = 22;

disp('')
disp('Función de Transferencia del Sistema con valores:')
G = eval(G)

disp('')
disp('Polos:')
[num, den] = numden(G);
num = sym2poly(expand(num));
den = sym2poly(expand(den));
Gs = tf(num, den);
pole(Gs)

disp('')
disp('TVF:')







