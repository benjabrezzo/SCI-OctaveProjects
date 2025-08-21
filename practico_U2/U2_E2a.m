close all; clear all; clc;
pkg load control

s = tf('s');

PI = (s + 0.1)/s;
P = 12;
G1 = 37/(s+200);
G2 = 5/(s+0.1);

Ft = P * G1;
RealimG1 = feedback (G1, 1);
Ft1 = PI * RealimG1 * G2;
RealimG2 = feedback (Ft1, 1);
step (RealimG2);
