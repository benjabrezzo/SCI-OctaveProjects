close all; clear all; clc;
pkg load control
pkg load symbolic

# s = tf('s');

syms s Ti Kp Td wn p real

tf = ((Ti*Td*s^2) + (Ti*s) + 1)/(Ti*s)
tf1 = (wn^2)/(s^2 + (2*p*wn*s) + (wn^2))

tf0 = Kp*tf*tf1;

tf_final = tf0/(1 + tf0)
tf_final = factor(tf_final)
pole (tf_final)

