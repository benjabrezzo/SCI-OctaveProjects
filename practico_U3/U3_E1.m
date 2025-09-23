% Unidad N° 3 Ejercicio 1
close all; clear all; clc
pkg load control
s = tf('s');
FT = (5*s + 1) / (5*s^2 + 2*s + 3)

p = pole(FT)

if real(p) < 0
  disp("Sistema estable")
else
  disp("Sistema no estable")
endif

step(FT, 100)
#ramp(FT, 50)

