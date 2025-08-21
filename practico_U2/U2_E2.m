# Unidad 2; Ejercicio 2
pkg load control
close all; clear all; clc;
% Sistema 1
s = tf('s');
Kp = 31;
G1 = (53*(s + 1))/((s+10)*(s+100));
G2 = 1/s;
Kd = 16;

% Sin las re-alimentaciones
FT0 = Kp*G1*G2;
step(FT0);

% Re-alimentación de G1 y Kd
RealimG1 = feedback(G1,Kd);
RealimG1 = feedback(G1,Kd); # CONSULTA: Signo en feedback, re-alimentación + o -
FT1 = Kp*RealimG1*G2;
step(FT1);

% Re-alimentación de G2
RealimG2 = feedback(RealimG1,1);
RealimG2 = feedback(RealimG1,1,-1); # CONSULTA: Signo en feedback, re-alimentación + o -
step(RealimG2);



disp('Terminado')
