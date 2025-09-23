% Unidad N° 3, Ejercicio 2

clear all; close all; clc

pkg load control

s = tf('s');
FT = (3000)/(s^2 + 156.25*s + 1837.5);

step(10*FT,50)

% Mapa de polos y ceros
pzmap(FT)
