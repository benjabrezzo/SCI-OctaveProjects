# Unidad 1; Ejercicio 8

close all; clear all; clc;
pkg load control

% Creación de función de transferencia
s = tf('s'); % tf = transfer function
G1 = 5 / (s + 2)

% Otras formas de hacerlo
% G1 = tf(NUMERADOR, DENOMINADOR) NUMERADOR y DENOMINADOR como vectores
G1_1 = tf([5], [1,2])
disp('Terminado')

% G1 = zpk(ceros, polos, k)
G1_2 = zpk([],[-2],5)

step(G1) % Pasarle un escalón (step) al sist. G1 y graficar la salida

G2 = zpk([],[-2,-3],1)
step(G2)

G4 = tf([5,5],[1,1,2])
step(G4)

