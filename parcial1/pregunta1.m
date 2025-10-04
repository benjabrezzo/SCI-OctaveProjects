clear all; close all; clc

pkg load control

s = tf('s');
G = (51*s^2+714*s+2295)/(s^3 + 124*s^2 + 3360*s);

step(G,1000)
