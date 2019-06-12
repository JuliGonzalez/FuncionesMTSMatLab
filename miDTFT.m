 qufunction [y] = miDTFT(na, nb, x)
%funcion que recibe como parámetros de entrada dos enteros na y nb, y una señal 
%finita x(n) definida en [na,nb], y que devuelva la DTFT de la señal x(n).
n=[na:nb];
syms w;
y=sum(x.*exp(-j*w*n))
end

