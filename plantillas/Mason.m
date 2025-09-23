close all; clear all; clc;
pkg load control;
pkg load symbolic;
syms s real

# Caminos directos
P1 = 8*(1/s)*((s+10)/(s+100))*(1/s)*4;
P2 = 8*10*(1/s);

# Lazos
l1 = -1*(1/s);
l2 = -2*(1/s);

# Determinantes de los lazos
D1 = 1;
D2 = 1 - l2;

# Determinante
D = 1 - l1 + l2 + (l1*l2);

# FdT con Mason
M = ((P1*D1 + P2*D2)/D);

disp(simplify(M));


