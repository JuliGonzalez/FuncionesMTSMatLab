function [h,H] = Transfer(b,a)
%Devuelve la función de transferencia de un sistema, la respuesta a impulso
%y el diagrama de ceros y polos, a partir de los vectores de coeficientes 
%de la ecuación en diferencias
%sacas primero el grado de cada uno
gradonum=size(b,2)-1
gradoden=size(a,2)-1
syms z
syms n
%obtienes la matriz de varias filas y una columna para obtener luego la
%transformada de cada uno
znum=z.^(-[0:gradonum]');
zden=z.^(-[0:gradoden]');
%le tienes qe poner la ' para sacar la traspuesta y que salga correcta el
%resultado
H=simplify((b*znum)/(a*zden));
h=iztrans(H,z,n);

%dibujos
subplot(3,1,1)
zplane(b,a)
title 'diagrama de zeros y polos'
subplot(3,1,2)
stem(0:20, iztrans(H,z,0:20))
title('Respuesta al impulso')
%Ahora la respuesta en frecuencia sobre un muestreo
H(z)=H
k=[0:100]; 
w=k*pi/100;
RF=H(exp(-j*w));
MH=abs(RF);
subplot(3,1,3)
plot(w/pi,MH); xlabel('w/pi'); ylabel('|H(w)|');
title('Modulo de la respuesta en frecuencia')

end

