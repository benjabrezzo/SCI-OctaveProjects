# Ejercicio 3 ; Unidad 2

# pkg load control
pkg load symbolic
close all; clear all; clc

syms s L R Ka J B Kb real

#s = tf('s');
#L = 1e-6;
#R = 2;
#Ka = 0.042;
#J = 10e-6;
#B = 0.3e-5;
#Kb = 0.042;

G1 = 1/((L*s)+R);
G2 = 1/((J*s)+B);

# FdT W(s)/E(s) con TL(s) = 0
FdT = simplify((G1*Ka*G2)/(1 + G1*Ka*G2*Kb))

# FdT I(s)/TL(s) con E(s) = 0
FdTLa = -1*G2*Kb*G1;
FdTLa_feedback = simplify((FdTLa)/(1 + (-Ka*FdTLa)))


