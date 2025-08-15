% Unidad 1; Ejercicio 6
% pkg load symbolic
clear all; close all; clc;
syms s t real

g1 = dirac(t) % Impulso en función de t
G1 = laplace(g1) % TL del impulso

g2 = heaviside(t) % Función escalón
G2 = laplace(g2)

g3 = exp(-2*t)*heaviside(t)
G3 = laplace(g3)

g4 = 7*exp(-5*t)*heaviside(t)
G4 = laplace(g4)

# El escalón es para indicar Causalidad, no es necesario
# incluirlo (heaviside(t)) ya que Octave calcula por defecto
# la Laplace unilateral (desde 0 a +inf)

g5 = (1 + exp(-2*t))*heaviside(t)
G5 = laplace(g5)

g6 = (t*sin(2*t) + 3*exp(-10*t))
G6 = laplace(g6)


disp('Terminado')

