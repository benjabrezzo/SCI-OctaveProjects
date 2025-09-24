# Ejercicio de 1er parcial práctico de Lauti
close all; clear all; clc;


pkg load symbolic

s = tf('s');

G1 = 34/(s + 18);
G2 = (s + 21)/(s + 91);
G3 = (s + 68)/(s + 47);
C = (92*s + 11)/s;

# Con P(s) = 0
realim1 = feedback(G1, G2);
FT0 = C*realim1*G3;
FT1 = feedback(FT0,1)
