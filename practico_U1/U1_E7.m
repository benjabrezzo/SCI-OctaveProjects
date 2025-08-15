# Unidad 1; Ejercicio 7
close all; clear all; clc;
syms s real

G1 = (2 / (s + 3))
g1 = ilaplace(G1)

G4 = ((10*s) / ((power(s,3)) + (6*power(s,2)) + (11*s) + 6 ))
g4 = ilaplace(G4)

G9 = (2 / (power(s,2) + 4))*exp(-5*s)
g9 = ilaplace(G9)


G11 = (((100*(s + 2)) / (s*(power(s,2) + 4)*(s + 1))) * exp(-s))
g11 = simplify(ilaplace(G11))

disp('Terminado')

