% Primeros Gráficos
% Seno y Coseno de un ángulo en el intervalo -pi, pi
close all;
clear all;
clc;

% Generar el vector que representa al ángulo alfa
% v = vInicial : vPaso : vFinal;
alfaInicial = -pi;
alfaFinal = pi;
alfaPaso = 1e-3;

alfa = alfaInicial : alfaPaso : alfaFinal;

% Para llamar a un elemento del vector: alfa(indice)
% Generar funciones cos(alfa) y seno(alfa)
cosAlfa = cos(alfa);
sinAlfa = sin(3*alfa);
% Graficar
% plot(ejeX1, ejeY1)
##plot(alfa, cosAlfa);
##hold on;
##plot(alfa, sinAlfa);

% plot(ejeX1, ejeY1, ejeX2, ejeY2, ejeX3, ejeY3)
plot(alfa, cosAlfa, 'linewidth', 2,...
     alfa, sinAlfa, '-.r',...
     alfa, cosAlfa + sinAlfa);
title('Funciones trigonométricas de alfa');
xlabel('ang [rad]');
ylabel('amplitud []');
legend('cos(\alpha)', 'sin(\alpha)', 'cos(\alpha) + sin(\alpha)');

% plot(ejeX1, ejeY1, PARAMETROS1, ejeX2, ejeY2, PARAMETRO2, ejeX3, ejeY3, PARAMETROS3)
grid

disp('Terminado')

