% Unidad N° 4 Ejercicio 23

close all; clear all; clc
s = tf('s');
G1 = 20/((s + 10)*(s + 100))

% Tiene polo reales, negativos y distintos. Por lo tanto, y como es un
% sistema de 2do orden, podriamos esperar que la respuesta al escalon
% es sobreamortiguada. Y con un tiempo de establecimiento de
% aproximadamente 4/10 y/o 4/100 seg.

##step(G1);
##
##% Vamos a darle a K un valor
##K = 1;
##FdTLC = feedback(K*G1)

#####
% Todo se puede resumir a aplicar el comando:
rlocus(G1,10,0,1000)
