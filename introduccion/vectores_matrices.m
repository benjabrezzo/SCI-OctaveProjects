% Segundo programa:
% Determinar las raíces de un Polinomio de segundo grado.
% r1, r2 de ax^2+b*x+c=0
% r1, r2 = (-b(+/-)sqrt(b^2-4*a*c))/(2*a)

clc;
clear all;
close all; % Para cerrar gráficos

% Definiciones
% Vector Fila
vFila = [1 2 3]
% Vector columna
vColumna1 = [4 5 6]'
vColumna2 = [7; 8; 9; 10]
vColumna3 = [7;...
             8;...
             9;...
             10]

% Matriz 4x4
mat4x4 = [11 12 13 14;...
          21 22 23 24;...
          31 32 33 34;...
          41 42 43 44]

% Transpuesta
mat4x4 = mat4x4'

% Determinante
det(mat4x4)

% Inversa
invMat4x4 = inv(mat4x4)

% Matriz identidad
matI = eye(4)

% Multiplicacion de matrices
matI * mat4x4
mat4x4 * mat4x4'
mat4x4' * mat4x4

% Funciones trigonometricas
% y = f(t); y = sin(10 * t)
t = [0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9];
y = sin(10 * t)

% Otra forma de definir vectores
% vector=valor inicial : paso : valor final
vInicial = 0;
vFinal = 1;
paso = 0.01;
t2 = vInicial:paso:vFinal;
y2 = sin(10 * t2)
plot(y2)

% Relación vectores y polinomios
vFila = [1 2 3 0] % Equivale a x^3+2x^2+3x
vFila2 = [1 2 3] % Equivale a x^2+2x+3
vFila3 = [5 0 6 7] % Equivale a x^3+6x+7
