%% Diseño de compensador usando el Método de la Bisectriz
%% Función de Transferencia de la planta
G = tf(4, [1 2 0]);

%% Requerimientos
wn = 4; psita = 0.5;

%% Evaluar si es necesario agregar un compensador en adelanto o atraso
rlocus(G); sgrid(psita, wn)

%% Deterinar el punto de diseño
s1 = -psita*wn + 1i*wn*sqrt(1-psita^2)

%% Determinar el valor del ángulo que debe aportar el compensador
[z,p,~] = zpkdata(G,'v'); % Devuelve en z y en p los valores de los ceros y polos de G
ang_comp = rad2deg(-pi + sum(angle(s1-p)) - sum(angle(s1-z)))

%% ang_comp = 30°, como es mayor que 0, el compensador es en adelanto.
%% Cuando el ángulo sea menor que 0, el compensador es en atraso.

%% Método de la Bisectriz
ang_bis = 180 - acosd(psita) %% acosd = arccos en grados sexagesimales
%% el método consiste en dividir ang_bis en 2 y calcular los siguientes ángulos auxiliares
ang_aux1 = 180 - (ang_bis/2 - ang_comp/2) - acosd(psita)
ang_aux2 = 180 - (ang_bis/2 + ang_comp/2) - acosd(psita)

%% Aplicando el teorema del seno
# Para compensador en adelanto:
zc = -sind(ang_bis/2 - ang_comp/2)*abs(s1)/sind(ang_aux1)
pc = -sind(ang_bis/2 + ang_comp/2)*abs(s1)/sind(ang_aux2)

# Para compensador en atraso:
%pc = -sind(ang_bis/2 - ang_comp/2)*abs(s1)/sind(ang_aux1)
%zc = -sind(ang_bis/2 + ang_comp/2)*abs(s1)/sind(ang_aux2)

%% Validar los valores del polo y el cero (que el nuevo lugar de raíces pase por el punto de diseño)
C = zpk(zc,pc,1) # como todavía no tengo K le damos el valor 1
rlocus(C*G); sgrid(psita,wn)

%% Determinar el valor de la ganacia del compensador aplicando la condición de módulo
[num, den] = tfdata(C*G,'v') # C*G es la FdTLazoAbierto del sistema con el compensador C. Estamos guardando los valores de su numerador y denominador.
K = 1/abs(polyval(num,s1)/polyval(den,s1))

%% Finalmente el compensador queda;
C = K*C

%% Verificación mediante simulación:
FdTLC = feedback(C*G, 1) # Ojo que en este caso no tiene la forma de la FdT de 2do orden que estudiamos. Esta si tiene ceros.
FdTModelo = tf(wn^2,[1 2*psita*wn, wn^2])

step(FdTModelo, FdTLC); grid on; legend('Modelo','Sistema')
