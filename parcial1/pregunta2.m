pkg load symbolic
pkg load control
close all; clear all; clc

syms P1 P2 l1 l2 D1 D2 D s real

%% Caminos directos
P1 = 8*(1/s)*((s + 10)/(s + 100))*(1/s)*4;
P2 = 8*1*10*(1/s)*(1/s)*4;

%% Lazos
l1 = -(1/s);
l2 = -2*(1/s);

%% Determinantes
D1 = 1;
D2 = 1;
D = 1 - (l1 + l2) + (l1*l2);

%% La FdT mediante la regla de Mason

M = ((P1*D1) + (P2*D2))/D;

minreal(M)

