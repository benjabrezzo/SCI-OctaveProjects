# Ejercicio de parcial del documentos "Modelos 1er Parcial-Sistemas de Control I"
close all; clear all; clc;
pkg load control
pkg load symbolic



s = tf('s');
G1 = (s+87)/(s+49);
G2 = 85*s + 1785;
C = (56*s + 3528)/s;

# FdT de lazo abierto
FT0 = C*G1;

# Re-alimentación de G2 a G1
RealimG1 = feedback(G1, G2);
FT1 = C*RealimG1;
FT2 = feedback(FT1, 1);

minreal(FT2)
