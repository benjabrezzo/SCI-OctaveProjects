# Unidad 2; Ejercicio 6 - Mason

pkg load symbolic
close all; clear all; clc

syms G H real

# SISTEMA 1

% Camino(s) directos:
P1 = 1*G*1;

% Lazo(s) cerrados:
l1 = -G*H;

% Determinantes
D1 = 1;
D = 1 - l1;

% Mason del sist. 1:
M = (P1*D1)/D

# SISTEMA 2
P1_ = 1*G*1;
l1_ = -G*H;
D1_ = 1;
D_ = 1 - l1_;

M_ = (P1_*D1_)/D_
