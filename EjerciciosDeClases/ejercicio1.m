# Ejercicio de clases

pkg load control;
pkg load symbolic;

s = tf('s');

# Función de transferencia
G = zpk([-30 -45], [-4 -5], 10)

# Aumentar K moverá los polos dominantes hacia la izquierda (sistema más rápido), pero también puede
# generar sobrepasamiento si pasan al semiplano complejo (raíces con parte imaginaria).

# Buscamos los valores de raíces que son reales (negativas) y más alejadas del eje imaginarios
# con el lugar de raíces. (Y que sean iguales, pero no es del todo necesario creo)
rlocus(G)

# Elegimos el punto de diseño
s1 = -35.8 # donde las raices son iguales
s2 = -44.4 # donde las raices son diferentes, y elegí la más a la izquierda

# Determinamos los valores de la ganancia K
K1 = 1/abs((10*s1^2 + 750*s1 + 13500)/(s1^2 + 9*s1 + 20))
K2 = 1/abs((10*s2^2 + 750*s2 + 13500)/(s2^2 + 9*s2 + 20))

# Comprobación de los valores de K
T1 = feedback(K1*G, 1);
T2 = feedback(K2*G, 1);

pole(T1)
pole(T2)

step(T1)
# step(T2)

# Esta F.T tiene dos polos y dos ceros. Pero la que conocemos y con la que tratamos
# estos ejercicios tiene dos polos y ningún cero.
#


