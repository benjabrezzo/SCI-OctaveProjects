# Unidad 2 ; Ejercicio 7
pkg load symbolic
clear all; close all; clc

syms G1 H1 G2 H2 G3 H3 real

# Sistema 1
P1 = G1*G2*G3;
l1 = -G1*H1;
l2 = -G2*H2;
l3 = -G3*H3;

D1 = 1;
D = 1 - l1 + l2 + l3 + (l1*l2) + (l1*l3) + (l3*l2) - (l1*l2*l3);
M = factor(simplify((P1*D1)/D), 's')

# Sistema 2
P1_ = G1*G2*G3;
l1_ = -G1*H1;
l2_ = -G2*H2;
l3_ = -G3*H3;
D1_ = 1;
D_ = 1 - (l1_ + l2_ + l3_) + (l1_*l3_);
M_ = (P1_*D1)/D_
