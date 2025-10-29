% Unidad N° 4 Ejercicio 23

pkg load control;

close all; clear all; clc
s = tf('s');
G1 = 20/((s + 10)*(s + 100))

% Tiene polo reales, negativos y distintos. Por lo tanto, y como es un
% sistema de 2do orden, podriamos esperar que la respuesta al escalon
% es sobreamortiguada. Y con un tiempo de establecimiento de
% aproximadamente 4/10 y/o 4/100 seg.

##step(G1);
##
##% Vamos a darle a K un valor
##K = 1;
##FdTLC = feedback(K*G1)


%% Requerimientos de diseño
% Mp = 0  , Mp = 4% => 0.04 = exp(-pi*psita/sqrt(1-psita^2))
psita = [1 0.707];
%% Dibujar el lugar de raíces
rlocus(G1); sgrid(psita, [20 40 60 80 100])

# sgrid me va a mostrar los puntos de diseño
# Si necesito que la respuesta al escalón unitario sea críticamente amortiguada, las raíces de la ecuación característica del sistema
# a lazo cerrado deben ser reales e iguales. Por lo tanto se debe seleccionar el punto de diseño que coincide con el desprendimiento del
# lugar de raíces, en este caso es el -55, y es el punto donde las raíces se hacen reales e iguales.
s1 = -55;

# El siguiente punto de diseño va a ser donde el lugar de raíces corta a la línea de 0.707 (que me la da sgrid), es decir, el punto
# donde psita = 0.707
s2 = -55+54.8i;

# Determinar el valor de la ganancia K. Vamos a usar la condición de módulos abs(G(s)) = 1/K para s = s1 y s = s2 para encontrar los valores
# de K1 y K2.

invK1 = abs(20/((s1 + 10)*(s1 + 100)));
invK2 = abs(20/((s2 + 10)*(s2 + 100)));

K1 = 1/invK1;
K2 = 1/invK2;

# Simular la respuesta a lazo cerrado
FdTLC1 = feedback(K1*G1, 1); % Las raíces de la Eq. Caract. deben valer s1
FdTLC2 = feedback(K2*G1, 1); % Las raíces de la Eq. Caract. deben valer s2

pole(FdTLC1);
pole(FdTLC2);

step(FdTLC1, FdTLC2);

G4 = 12*(s+10)/(s*(s+30))
rlocus(G4)

G9 = 100/(s^3+120*s^2+2700*s-40000)
%% Requerimientos de diseño
% Mp = 0  , Mp = 4% => 0.04 = exp(-pi*psita/sqrt(1-psita^2))
rlocus(G9); sgrid(0.707, [5 10 20])

# desde el rlocus puedo estimar que el punto de diseño donde las raíces son reales iguales es
s3 = -13.5; %% Para resp. críticamente amortiguada
s4 = -12.5 + 12.7i; %% Para respuesta. Mp = 4 (para verlo lo hacemos con sgrid, la intersección entre el L.R y la recta de 0.707

%% Calculamos las ganancia
K3 = 1/abs( 100/(s3^3+120*s3^2+2700*s3-40000))
K4 = 1/abs( 100/(s4^3+120*s4^2+2700*s4-40000))

%% Simulación
FdTLC3 = feedback(K3*G9, 1); %% Raíces dom en s3
FdTLC4 = feedback(K4*G9, 1); %% Raíces dom en s4

pole(FdTLC3)

pole(FdTLC4)

step(FdTLC3, FdTLC4)
