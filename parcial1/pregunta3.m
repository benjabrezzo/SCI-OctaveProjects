close all; clear all; clc;
pkg load control
pkg load symbolic

s = tf('s');

#syms G1 G2 G3 C s real

G1 = 19/(s + 49);
G2 = (s + 45)/(s + 65);
G3 = (s + 71)/(s + 76);
C = (28*s + 68)/s;

%% Lazo
LazoInt = ((G1*G2) + G3);

SistAbierto = C*LazoInt;

% Re-alimentación
FdT = feedback(SistAbierto, 1)

# Marque "ninguna es correcta" pq me había olvidado del minreal
minreal(FdT)




