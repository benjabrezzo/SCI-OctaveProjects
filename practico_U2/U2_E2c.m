close all; clc; clear all;

pkg load control
pkg load symbolic

syms Ti s Td Kp K T

tfsum = ((1/(Ti * s)) + Td * s + 1)
tfabierto = tfsum * Kp * (K / (T*s + 1))
tfcerrado = tfabierto / (1 + tfabierto)
tfcerrado = factor(simplify(tfcerrado))
